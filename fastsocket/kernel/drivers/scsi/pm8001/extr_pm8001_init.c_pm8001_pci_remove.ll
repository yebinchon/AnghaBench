; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*, i32)* }
%struct.pm8001_hba_info = type { i32, i32, i32, %struct.sas_ha_struct*, %struct.TYPE_3__*, i32, i32 }
%struct.sas_ha_struct = type { %struct.sas_ha_struct*, %struct.sas_ha_struct*, %struct.pm8001_hba_info* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pm8001_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.sas_ha_struct* %7, %struct.sas_ha_struct** %3, align 8
  %8 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %9 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %8, i32 0, i32 2
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %9, align 8
  store %struct.pm8001_hba_info* %10, %struct.pm8001_hba_info** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call i32 @pci_set_drvdata(%struct.pci_dev* %11, i32* null)
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %14 = call i32 @sas_unregister_ha(%struct.sas_ha_struct* %13)
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %16 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sas_remove_host(i32 %17)
  %19 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %20 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %19, i32 0, i32 6
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %23 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @scsi_remove_host(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PM8001_CHIP_DISP, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %27, align 8
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %30 = call i32 %28(%struct.pm8001_hba_info* %29, i32 255)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PM8001_CHIP_DISP, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*)** %32, align 8
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %35 = call i32 %33(%struct.pm8001_hba_info* %34)
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %37 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %40 = call i32 @free_irq(i32 %38, %struct.sas_ha_struct* %39)
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %42 = call i32 @pm8001_free(%struct.pm8001_hba_info* %41)
  %43 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %44 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %43, i32 0, i32 1
  %45 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %44, align 8
  %46 = call i32 @kfree(%struct.sas_ha_struct* %45)
  %47 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %48 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %47, i32 0, i32 0
  %49 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %48, align 8
  %50 = call i32 @kfree(%struct.sas_ha_struct* %49)
  %51 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %52 = call i32 @kfree(%struct.sas_ha_struct* %51)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %54 = call i32 @pci_release_regions(%struct.pci_dev* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = call i32 @pci_disable_device(%struct.pci_dev* %55)
  ret void
}

declare dso_local %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @sas_unregister_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @sas_remove_host(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @free_irq(i32, %struct.sas_ha_struct*) #1

declare dso_local i32 @pm8001_free(%struct.pm8001_hba_info*) #1

declare dso_local i32 @kfree(%struct.sas_ha_struct*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
