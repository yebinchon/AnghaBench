; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_axon_msi.c_axon_msi_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_axon_msi.c_axon_msi_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32 }
%struct.axon_msic = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"axon_msi: disabling %s\0A\00", align 1
@MSIC_CTRL_REG = common dso_local global i32 0, align 4
@MSIC_CTRL_ENABLE = common dso_local global i32 0, align 4
@MSIC_CTRL_IRQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_device*)* @axon_msi_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axon_msi_shutdown(%struct.of_device* %0) #0 {
  %2 = alloca %struct.of_device*, align 8
  %3 = alloca %struct.axon_msic*, align 8
  %4 = alloca i32, align 4
  store %struct.of_device* %0, %struct.of_device** %2, align 8
  %5 = load %struct.of_device*, %struct.of_device** %2, align 8
  %6 = getelementptr inbounds %struct.of_device, %struct.of_device* %5, i32 0, i32 0
  %7 = call %struct.axon_msic* @dev_get_drvdata(i32* %6)
  store %struct.axon_msic* %7, %struct.axon_msic** %3, align 8
  %8 = load %struct.axon_msic*, %struct.axon_msic** %3, align 8
  %9 = getelementptr inbounds %struct.axon_msic, %struct.axon_msic* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_devel(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.axon_msic*, %struct.axon_msic** %3, align 8
  %17 = getelementptr inbounds %struct.axon_msic, %struct.axon_msic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MSIC_CTRL_REG, align 4
  %20 = call i32 @dcr_read(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @MSIC_CTRL_ENABLE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @MSIC_CTRL_IRQ_ENABLE, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.axon_msic*, %struct.axon_msic** %3, align 8
  %29 = load i32, i32* @MSIC_CTRL_REG, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @msic_dcr_write(%struct.axon_msic* %28, i32 %29, i32 %30)
  ret i32 0
}

declare dso_local %struct.axon_msic* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @dcr_read(i32, i32) #1

declare dso_local i32 @msic_dcr_write(%struct.axon_msic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
