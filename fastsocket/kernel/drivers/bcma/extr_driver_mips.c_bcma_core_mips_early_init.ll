; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_mips.c_bcma_core_mips_early_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_mips.c_bcma_core_mips_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_mips = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_core_mips_early_init(%struct.bcma_drv_mips* %0) #0 {
  %2 = alloca %struct.bcma_drv_mips*, align 8
  %3 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_mips* %0, %struct.bcma_drv_mips** %2, align 8
  %4 = load %struct.bcma_drv_mips*, %struct.bcma_drv_mips** %2, align 8
  %5 = getelementptr inbounds %struct.bcma_drv_mips, %struct.bcma_drv_mips* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.bcma_bus*, %struct.bcma_bus** %7, align 8
  store %struct.bcma_bus* %8, %struct.bcma_bus** %3, align 8
  %9 = load %struct.bcma_drv_mips*, %struct.bcma_drv_mips** %2, align 8
  %10 = getelementptr inbounds %struct.bcma_drv_mips, %struct.bcma_drv_mips* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %15, i32 0, i32 0
  %17 = call i32 @bcma_chipco_serial_init(i32* %16)
  %18 = load %struct.bcma_drv_mips*, %struct.bcma_drv_mips** %2, align 8
  %19 = call i32 @bcma_core_mips_flash_detect(%struct.bcma_drv_mips* %18)
  %20 = load %struct.bcma_drv_mips*, %struct.bcma_drv_mips** %2, align 8
  %21 = getelementptr inbounds %struct.bcma_drv_mips, %struct.bcma_drv_mips* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @bcma_chipco_serial_init(i32*) #1

declare dso_local i32 @bcma_core_mips_flash_detect(%struct.bcma_drv_mips*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
