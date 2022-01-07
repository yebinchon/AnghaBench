; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sir_dongle.c_sirdev_put_dongle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sir_dongle.c_sirdev_put_dongle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sir_dev = type { %struct.dongle_driver* }
%struct.dongle_driver = type { i32, {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sirdev_put_dongle(%struct.sir_dev* %0) #0 {
  %2 = alloca %struct.sir_dev*, align 8
  %3 = alloca %struct.dongle_driver*, align 8
  store %struct.sir_dev* %0, %struct.sir_dev** %2, align 8
  %4 = load %struct.sir_dev*, %struct.sir_dev** %2, align 8
  %5 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %4, i32 0, i32 0
  %6 = load %struct.dongle_driver*, %struct.dongle_driver** %5, align 8
  store %struct.dongle_driver* %6, %struct.dongle_driver** %3, align 8
  %7 = load %struct.dongle_driver*, %struct.dongle_driver** %3, align 8
  %8 = icmp ne %struct.dongle_driver* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.dongle_driver*, %struct.dongle_driver** %3, align 8
  %11 = getelementptr inbounds %struct.dongle_driver, %struct.dongle_driver* %10, i32 0, i32 1
  %12 = bitcast {}** %11 to i32 (%struct.sir_dev*)**
  %13 = load i32 (%struct.sir_dev*)*, i32 (%struct.sir_dev*)** %12, align 8
  %14 = icmp ne i32 (%struct.sir_dev*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.dongle_driver*, %struct.dongle_driver** %3, align 8
  %17 = getelementptr inbounds %struct.dongle_driver, %struct.dongle_driver* %16, i32 0, i32 1
  %18 = bitcast {}** %17 to i32 (%struct.sir_dev*)**
  %19 = load i32 (%struct.sir_dev*)*, i32 (%struct.sir_dev*)** %18, align 8
  %20 = load %struct.sir_dev*, %struct.sir_dev** %2, align 8
  %21 = call i32 %19(%struct.sir_dev* %20)
  br label %22

22:                                               ; preds = %15, %9
  %23 = load %struct.sir_dev*, %struct.sir_dev** %2, align 8
  %24 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %23, i32 0, i32 0
  store %struct.dongle_driver* null, %struct.dongle_driver** %24, align 8
  %25 = load %struct.dongle_driver*, %struct.dongle_driver** %3, align 8
  %26 = getelementptr inbounds %struct.dongle_driver, %struct.dongle_driver* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @module_put(i32 %27)
  br label %29

29:                                               ; preds = %22, %1
  ret i32 0
}

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
