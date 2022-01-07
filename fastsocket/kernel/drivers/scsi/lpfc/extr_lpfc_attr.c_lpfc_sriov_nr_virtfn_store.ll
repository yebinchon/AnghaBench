; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_sriov_nr_virtfn_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_sriov_nr_virtfn_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"3018 There are %d virtual functions enabled on physical function.\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@LPFC_MAX_VFN_PER_PFN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"3019 Enabling %d virtual functions is not allowed.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_sriov_nr_virtfn_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sriov_nr_virtfn_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %10, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %21, %struct.lpfc_vport** %11, align 8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 0
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %23, align 8
  store %struct.lpfc_hba* %24, %struct.lpfc_hba** %12, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 1
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @isdigit(i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %116

38:                                               ; preds = %4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %14)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %116

45:                                               ; preds = %38
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %116

51:                                               ; preds = %45
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %61 = call i32 @pci_disable_sriov(%struct.pci_dev* %60)
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @strlen(i8* %65)
  store i32 %66, i32* %5, align 4
  br label %116

67:                                               ; preds = %51
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %74 = load i32, i32* @KERN_ERR, align 4
  %75 = load i32, i32* @LOG_INIT, align 4
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EEXIST, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %116

82:                                               ; preds = %67
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @LPFC_MAX_VFN_PER_PFN, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %98

90:                                               ; preds = %82
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %92 = load i32, i32* @KERN_ERR, align 4
  %93 = load i32, i32* @LOG_INIT, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %91, i32 %92, i32 %93, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %116

98:                                               ; preds = %86
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @lpfc_sli_probe_sriov_nr_virtfn(%struct.lpfc_hba* %99, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load i32, i32* @EPERM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %15, align 4
  br label %114

111:                                              ; preds = %98
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @strlen(i8* %112)
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %90, %72, %64, %48, %42, %35
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @lpfc_sli_probe_sriov_nr_virtfn(%struct.lpfc_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
