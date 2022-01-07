; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"stl_cd1400flush(portp=%p)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@CAR = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@CCR_TXFLUSHFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*)* @stl_cd1400flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400flush(%struct.stlport* %0) #0 {
  %2 = alloca %struct.stlport*, align 8
  %3 = alloca i64, align 8
  store %struct.stlport* %0, %struct.stlport** %2, align 8
  %4 = load %struct.stlport*, %struct.stlport** %2, align 8
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.stlport* %4)
  %6 = load %struct.stlport*, %struct.stlport** %2, align 8
  %7 = icmp eq %struct.stlport* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %47

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %10)
  %12 = load %struct.stlport*, %struct.stlport** %2, align 8
  %13 = getelementptr inbounds %struct.stlport, %struct.stlport* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.stlport*, %struct.stlport** %2, align 8
  %16 = getelementptr inbounds %struct.stlport, %struct.stlport* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BRDENABLE(i32 %14, i32 %17)
  %19 = load %struct.stlport*, %struct.stlport** %2, align 8
  %20 = load i32, i32* @CAR, align 4
  %21 = load %struct.stlport*, %struct.stlport** %2, align 8
  %22 = getelementptr inbounds %struct.stlport, %struct.stlport* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 3
  %25 = call i32 @stl_cd1400setreg(%struct.stlport* %19, i32 %20, i32 %24)
  %26 = load %struct.stlport*, %struct.stlport** %2, align 8
  %27 = call i32 @stl_cd1400ccrwait(%struct.stlport* %26)
  %28 = load %struct.stlport*, %struct.stlport** %2, align 8
  %29 = load i32, i32* @CCR, align 4
  %30 = load i32, i32* @CCR_TXFLUSHFIFO, align 4
  %31 = call i32 @stl_cd1400setreg(%struct.stlport* %28, i32 %29, i32 %30)
  %32 = load %struct.stlport*, %struct.stlport** %2, align 8
  %33 = call i32 @stl_cd1400ccrwait(%struct.stlport* %32)
  %34 = load %struct.stlport*, %struct.stlport** %2, align 8
  %35 = getelementptr inbounds %struct.stlport, %struct.stlport* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.stlport*, %struct.stlport** %2, align 8
  %39 = getelementptr inbounds %struct.stlport, %struct.stlport* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.stlport*, %struct.stlport** %2, align 8
  %42 = getelementptr inbounds %struct.stlport, %struct.stlport* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BRDDISABLE(i32 %43)
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %45)
  br label %47

47:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_cd1400setreg(%struct.stlport*, i32, i32) #1

declare dso_local i32 @stl_cd1400ccrwait(%struct.stlport*) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
