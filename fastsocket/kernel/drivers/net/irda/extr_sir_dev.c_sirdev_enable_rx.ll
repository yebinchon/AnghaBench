; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sir_dev.c_sirdev_enable_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sir_dev.c_sirdev_enable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sir_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@OUTSIDE_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sirdev_enable_rx(%struct.sir_dev* %0) #0 {
  %2 = alloca %struct.sir_dev*, align 8
  store %struct.sir_dev* %0, %struct.sir_dev** %2, align 8
  %3 = load %struct.sir_dev*, %struct.sir_dev** %2, align 8
  %4 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %3, i32 0, i32 0
  %5 = call i32 @atomic_read(i32* %4)
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.sir_dev*, %struct.sir_dev** %2, align 8
  %11 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sir_dev*, %struct.sir_dev** %2, align 8
  %15 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 4
  %17 = load %struct.sir_dev*, %struct.sir_dev** %2, align 8
  %18 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = load %struct.sir_dev*, %struct.sir_dev** %2, align 8
  %22 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @OUTSIDE_FRAME, align 4
  %25 = load %struct.sir_dev*, %struct.sir_dev** %2, align 8
  %26 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.sir_dev*, %struct.sir_dev** %2, align 8
  %29 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %28, i32 0, i32 0
  %30 = call i32 @atomic_set(i32* %29, i32 1)
  br label %31

31:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
