; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_fsl.c_sata_fsl_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_fsl.c_sata_fsl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32 }
%struct.ata_host = type { %struct.sata_fsl_host_priv* }
%struct.sata_fsl_host_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_device*)* @sata_fsl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_fsl_remove(%struct.of_device* %0) #0 {
  %2 = alloca %struct.of_device*, align 8
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca %struct.sata_fsl_host_priv*, align 8
  store %struct.of_device* %0, %struct.of_device** %2, align 8
  %5 = load %struct.of_device*, %struct.of_device** %2, align 8
  %6 = getelementptr inbounds %struct.of_device, %struct.of_device* %5, i32 0, i32 0
  %7 = call %struct.ata_host* @dev_get_drvdata(i32* %6)
  store %struct.ata_host* %7, %struct.ata_host** %3, align 8
  %8 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %9 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %8, i32 0, i32 0
  %10 = load %struct.sata_fsl_host_priv*, %struct.sata_fsl_host_priv** %9, align 8
  store %struct.sata_fsl_host_priv* %10, %struct.sata_fsl_host_priv** %4, align 8
  %11 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %12 = call i32 @ata_host_detach(%struct.ata_host* %11)
  %13 = load %struct.of_device*, %struct.of_device** %2, align 8
  %14 = getelementptr inbounds %struct.of_device, %struct.of_device* %13, i32 0, i32 0
  %15 = call i32 @dev_set_drvdata(i32* %14, i32* null)
  %16 = load %struct.sata_fsl_host_priv*, %struct.sata_fsl_host_priv** %4, align 8
  %17 = getelementptr inbounds %struct.sata_fsl_host_priv, %struct.sata_fsl_host_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @irq_dispose_mapping(i32 %18)
  %20 = load %struct.sata_fsl_host_priv*, %struct.sata_fsl_host_priv** %4, align 8
  %21 = getelementptr inbounds %struct.sata_fsl_host_priv, %struct.sata_fsl_host_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iounmap(i32 %22)
  %24 = load %struct.sata_fsl_host_priv*, %struct.sata_fsl_host_priv** %4, align 8
  %25 = call i32 @kfree(%struct.sata_fsl_host_priv* %24)
  ret i32 0
}

declare dso_local %struct.ata_host* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ata_host_detach(%struct.ata_host*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.sata_fsl_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
