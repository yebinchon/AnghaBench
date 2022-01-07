; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_ue_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_ue_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32 }

@PCICFG_UE_STATUS_LOW = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_MASK_LOW = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_HIGH = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_MASK_HI = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"BG_%d : Error detected on the adapter\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"BG_%d : UE_LOW %s bit set\0A\00", align 1
@desc_ue_status_low = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"BG_%d : UE_HIGH %s bit set\0A\00", align 1
@desc_ue_status_hi = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_ue_detect(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %110

13:                                               ; preds = %1
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCICFG_UE_STATUS_LOW, align 4
  %18 = call i32 @pci_read_config_dword(i32 %16, i32 %17, i32* %4)
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %20 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCICFG_UE_STATUS_MASK_LOW, align 4
  %23 = call i32 @pci_read_config_dword(i32 %21, i32 %22, i32* %6)
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCICFG_UE_STATUS_HIGH, align 4
  %28 = call i32 @pci_read_config_dword(i32 %26, i32 %27, i32* %3)
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %30 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PCICFG_UE_STATUS_MASK_HI, align 4
  %33 = call i32 @pci_read_config_dword(i32 %31, i32 %32, i32* %5)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %5, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %13
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44, %13
  %48 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %49 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %53 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %54 = or i32 %52, %53
  %55 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %50, i32 %51, i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %47, %44
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %69 = load i32, i32* @KERN_ERR, align 4
  %70 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %71 = load i32*, i32** @desc_ue_status_low, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %67, %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 1
  store i32 %79, i32* %4, align 4
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %7, align 8
  br label %60

82:                                               ; preds = %60
  br label %83

83:                                               ; preds = %82, %56
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  store i64 0, i64* %7, align 8
  br label %87

87:                                               ; preds = %104, %86
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load i32, i32* %3, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %96 = load i32, i32* @KERN_ERR, align 4
  %97 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %98 = load i32*, i32** @desc_ue_status_hi, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %94, %90
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %3, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %3, align 4
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %87

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %12, %109, %83
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
