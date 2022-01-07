; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_be_mgmt_get_boot_shandle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_be_mgmt_get_boot_shandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_boot_target_resp = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BG_%d : Getting Boot Target Info Failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"BG_%d : MBX CMD get_boot_target Failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BG_%d  ;No boot targets configured\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INVALID_SESS_HANDLE = common dso_local global i32 0, align 4
@BE_REOPEN_BOOT_SESSIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"BG_%d : mgmt_reopen_session Failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"BG_%d : mgmt_reopen_session Failed\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"BG_%d : Login to Boot Target Failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_mgmt_get_boot_shandle(%struct.beiscsi_hba* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.be_cmd_get_boot_target_resp*, align 8
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 3, i32* %9, align 4
  br label %11

11:                                               ; preds = %98, %2
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %13 = call i32 @mgmt_get_boot_target(%struct.beiscsi_hba* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %20 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @beiscsi_log(%struct.beiscsi_hba* %17, i32 %18, i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %111

25:                                               ; preds = %11
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %26, i32 %27, %struct.be_mcc_wrb** %7, i32* null)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %35 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @beiscsi_log(%struct.beiscsi_hba* %32, i32 %33, i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %111

40:                                               ; preds = %25
  %41 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %42 = call %struct.be_cmd_get_boot_target_resp* @embedded_payload(%struct.be_mcc_wrb* %41)
  store %struct.be_cmd_get_boot_target_resp* %42, %struct.be_cmd_get_boot_target_resp** %6, align 8
  %43 = load %struct.be_cmd_get_boot_target_resp*, %struct.be_cmd_get_boot_target_resp** %6, align 8
  %44 = getelementptr inbounds %struct.be_cmd_get_boot_target_resp, %struct.be_cmd_get_boot_target_resp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %49 = load i32, i32* @KERN_INFO, align 4
  %50 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %51 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @beiscsi_log(%struct.beiscsi_hba* %48, i32 %49, i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @ENXIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %111

56:                                               ; preds = %40
  %57 = load %struct.be_cmd_get_boot_target_resp*, %struct.be_cmd_get_boot_target_resp** %6, align 8
  %58 = getelementptr inbounds %struct.be_cmd_get_boot_target_resp, %struct.be_cmd_get_boot_target_resp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @INVALID_SESS_HANDLE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.be_cmd_get_boot_target_resp*, %struct.be_cmd_get_boot_target_resp** %6, align 8
  %64 = getelementptr inbounds %struct.be_cmd_get_boot_target_resp, %struct.be_cmd_get_boot_target_resp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %111

67:                                               ; preds = %56
  %68 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %69 = load i32, i32* @BE_REOPEN_BOOT_SESSIONS, align 4
  %70 = load i32, i32* @INVALID_SESS_HANDLE, align 4
  %71 = call i32 @mgmt_reopen_session(%struct.beiscsi_hba* %68, i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %67
  %75 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %76 = load i32, i32* @KERN_ERR, align 4
  %77 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %78 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @beiscsi_log(%struct.beiscsi_hba* %75, i32 %76, i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %111

83:                                               ; preds = %67
  %84 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %84, i32 %85, %struct.be_mcc_wrb** null, i32* null)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %91 = load i32, i32* @KERN_ERR, align 4
  %92 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %93 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @beiscsi_log(%struct.beiscsi_hba* %90, i32 %91, i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %111

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %11, label %102

102:                                              ; preds = %98
  %103 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %104 = load i32, i32* @KERN_ERR, align 4
  %105 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %106 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @beiscsi_log(%struct.beiscsi_hba* %103, i32 %104, i32 %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %109 = load i32, i32* @ENXIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %102, %89, %74, %62, %47, %31, %16
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @mgmt_get_boot_target(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_mccq_compl(%struct.beiscsi_hba*, i32, %struct.be_mcc_wrb**, i32*) #1

declare dso_local %struct.be_cmd_get_boot_target_resp* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @mgmt_reopen_session(%struct.beiscsi_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
