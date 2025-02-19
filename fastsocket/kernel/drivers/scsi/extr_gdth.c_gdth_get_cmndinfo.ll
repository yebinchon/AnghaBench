; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_gdth.c_gdth_get_cmndinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_gdth.c_gdth_get_cmndinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdth_cmndinfo = type { i64 }
%struct.TYPE_3__ = type { i32, %struct.gdth_cmndinfo* }

@GDTH_MAXCMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gdth_cmndinfo* (%struct.TYPE_3__*)* @gdth_get_cmndinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gdth_cmndinfo* @gdth_get_cmndinfo(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.gdth_cmndinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store %struct.gdth_cmndinfo* null, %struct.gdth_cmndinfo** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @spin_lock_irqsave(i32* %7, i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %39, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GDTH_MAXCMDS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %17, i64 %19
  %21 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %14
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %27, i64 %29
  store %struct.gdth_cmndinfo* %30, %struct.gdth_cmndinfo** %3, align 8
  %31 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %3, align 8
  %32 = call i32 @memset(%struct.gdth_cmndinfo* %31, i32 0, i32 8)
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %3, align 8
  %37 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %42

38:                                               ; preds = %14
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %10

42:                                               ; preds = %24, %10
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i32 %45)
  %47 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %3, align 8
  ret %struct.gdth_cmndinfo* %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @memset(%struct.gdth_cmndinfo*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
