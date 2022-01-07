; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_aer_support_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_aer_support_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@HBA_AER_ENABLED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_aer_support_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_aer_support_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %20, %struct.lpfc_vport** %11, align 8
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %22 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %21, i32 0, i32 0
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  store %struct.lpfc_hba* %23, %struct.lpfc_hba** %12, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @isdigit(i8 signext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %129

34:                                               ; preds = %4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %129

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  switch i32 %42, label %124 [
    i32 0, label %43
    i32 1, label %84
  ]

43:                                               ; preds = %41
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HBA_AER_ENABLED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %43
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pci_disable_pcie_error_reporting(i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %50
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 2
  %60 = call i32 @spin_lock_irq(i32* %59)
  %61 = load i32, i32* @HBA_AER_ENABLED, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 2
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @strlen(i8* %72)
  store i32 %73, i32* %14, align 4
  br label %77

74:                                               ; preds = %50
  %75 = load i32, i32* @EPERM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %74, %57
  br label %83

78:                                               ; preds = %43
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @strlen(i8* %81)
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %78, %77
  br label %127

84:                                               ; preds = %41
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @HBA_AER_ENABLED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %118, label %91

91:                                               ; preds = %84
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pci_enable_pcie_error_reporting(i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %91
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 2
  %101 = call i32 @spin_lock_irq(i32* %100)
  %102 = load i32, i32* @HBA_AER_ENABLED, align 4
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 2
  %109 = call i32 @spin_unlock_irq(i32* %108)
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @strlen(i8* %112)
  store i32 %113, i32* %14, align 4
  br label %117

114:                                              ; preds = %91
  %115 = load i32, i32* @EPERM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %114, %98
  br label %123

118:                                              ; preds = %84
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @strlen(i8* %121)
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %118, %117
  br label %127

124:                                              ; preds = %41
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %124, %123, %83
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %38, %31
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
