; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-cmd.c_saa7164_cmd_timeout_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-cmd.c_saa7164_cmd_timeout_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7164_cmd_timeout_get(%struct.saa7164_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7164_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %10 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %19 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %29 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %17, %2
  %36 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %37 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
