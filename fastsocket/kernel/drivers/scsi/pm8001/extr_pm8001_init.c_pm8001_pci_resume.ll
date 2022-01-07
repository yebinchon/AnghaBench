; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*)* }
%struct.pm8001_hba_info = type { i64, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }

@.str = private unnamed_addr constant [66 x i8] c"pdev=0x%p, slot=%s, resuming from previous operating state [D%d]\0A\00", align 1
@PCI_D0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"slot=%s Enable device failed during resume\0A\00", align 1
@chip_8001 = common dso_local global i64 0, align 8
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"chip soft reset successful\0A\00", align 1
@pm8001_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pm8001_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_pci_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca %struct.pm8001_hba_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.sas_ha_struct* %10, %struct.sas_ha_struct** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %12 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %11, i32 0, i32 0
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  store %struct.pm8001_hba_info* %13, %struct.pm8001_hba_info** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %19 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.pci_dev* %17, i32 %20, i32 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* @PCI_D0, align 4
  %25 = call i32 @pci_set_power_state(%struct.pci_dev* %23, i32 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = load i32, i32* @PCI_D0, align 4
  %28 = call i32 @pci_enable_wake(%struct.pci_dev* %26, i32 %27, i32 0)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i32 @pci_restore_state(%struct.pci_dev* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = call i32 @pci_enable_device(%struct.pci_dev* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %37 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %124

40:                                               ; preds = %1
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = call i32 @pci_set_master(%struct.pci_dev* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = call i32 @pci_go_44(%struct.pci_dev* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %117

48:                                               ; preds = %40
  %49 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %50 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @chip_8001, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*)** %56, align 8
  %58 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %59 = call i32 %57(%struct.pm8001_hba_info* %58)
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %61 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %48
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*)** %65, align 8
  %67 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %68 = call i32 %66(%struct.pm8001_hba_info* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %117

72:                                               ; preds = %63
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %74, align 8
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %77 = call i32 %75(%struct.pm8001_hba_info* %76, i32 255)
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %79 = call i32 @pm8001_request_irq(%struct.pm8001_hba_info* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %117

83:                                               ; preds = %72
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %85, align 8
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %88 = call i32 %86(%struct.pm8001_hba_info* %87, i32 0)
  %89 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %90 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @chip_8001, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  br label %95

95:                                               ; preds = %108, %94
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %98 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %103, align 8
  %105 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 %104(%struct.pm8001_hba_info* %105, i32 %106)
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %95

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %83
  %113 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %114 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @scsi_unblock_requests(i32 %115)
  store i32 0, i32* %2, align 4
  br label %126

117:                                              ; preds = %82, %71, %47
  %118 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %119 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @scsi_remove_host(i32 %120)
  %122 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %123 = call i32 @pci_disable_device(%struct.pci_dev* %122)
  br label %124

124:                                              ; preds = %117, %35
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %112
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_go_44(%struct.pci_dev*) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_request_irq(%struct.pm8001_hba_info*) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
