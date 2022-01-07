; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-device.c_mca_device_write_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-device.c_mca_device_write_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mca_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.mca_device*, i32, i8)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mca_device_write_pos(%struct.mca_device* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.mca_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.mca_bus*, align 8
  store %struct.mca_device* %0, %struct.mca_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %8 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %9 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mca_bus* @to_mca_bus(i32 %11)
  store %struct.mca_bus* %12, %struct.mca_bus** %7, align 8
  %13 = load %struct.mca_bus*, %struct.mca_bus** %7, align 8
  %14 = getelementptr inbounds %struct.mca_bus, %struct.mca_bus* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.mca_device*, i32, i8)*, i32 (%struct.mca_device*, i32, i8)** %15, align 8
  %17 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i8, i8* %6, align 1
  %20 = call i32 %16(%struct.mca_device* %17, i32 %18, i8 zeroext %19)
  ret void
}

declare dso_local %struct.mca_bus* @to_mca_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
