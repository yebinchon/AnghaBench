; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-device.c_mca_device_transform_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-device.c_mca_device_transform_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mca_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* (%struct.mca_device*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mca_device_transform_memory(%struct.mca_device* %0, i8* %1) #0 {
  %3 = alloca %struct.mca_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mca_bus*, align 8
  store %struct.mca_device* %0, %struct.mca_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mca_device*, %struct.mca_device** %3, align 8
  %7 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mca_bus* @to_mca_bus(i32 %9)
  store %struct.mca_bus* %10, %struct.mca_bus** %5, align 8
  %11 = load %struct.mca_bus*, %struct.mca_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mca_bus, %struct.mca_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8* (%struct.mca_device*, i8*)*, i8* (%struct.mca_device*, i8*)** %13, align 8
  %15 = load %struct.mca_device*, %struct.mca_device** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* %14(%struct.mca_device* %15, i8* %16)
  ret i8* %17
}

declare dso_local %struct.mca_bus* @to_mca_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
