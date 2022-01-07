; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-driver.c_mca_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-driver.c_mca_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_driver = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MCA_bus = common dso_local global i64 0, align 8
@mca_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mca_register_driver(%struct.mca_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mca_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.mca_driver* %0, %struct.mca_driver** %3, align 8
  %5 = load i64, i64* @MCA_bus, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.mca_driver*, %struct.mca_driver** %3, align 8
  %9 = getelementptr inbounds %struct.mca_driver, %struct.mca_driver* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* @mca_bus_type, i32** %10, align 8
  %11 = load %struct.mca_driver*, %struct.mca_driver** %3, align 8
  %12 = getelementptr inbounds %struct.mca_driver, %struct.mca_driver* %11, i32 0, i32 1
  %13 = call i32 @driver_register(%struct.TYPE_2__* %12)
  store i32 %13, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %21

17:                                               ; preds = %7
  %18 = load %struct.mca_driver*, %struct.mca_driver** %3, align 8
  %19 = getelementptr inbounds %struct.mca_driver, %struct.mca_driver* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
