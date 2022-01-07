; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_set_internal_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_set_internal_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.lpfc_mbx_set_link_diag_loopback }
%struct.lpfc_mbx_set_link_diag_loopback = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@MBX_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_FCOE = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_LOOPBACK = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@lpfc_mbx_set_diag_state_link_num = common dso_local global i32 0, align 4
@lpfc_mbx_set_diag_state_link_type = common dso_local global i32 0, align 4
@lpfc_mbx_set_diag_lpbk_type = common dso_local global i32 0, align 4
@LPFC_DIAG_LOOPBACK_TYPE_INTERNAL = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"3127 Failed setup loopback mode mailbox command, rc:x%x, status:x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_bsg_set_internal_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bsg_set_internal_loopback(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_mbx_set_link_diag_loopback*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %10 = load i32, i32* @MBX_SUCCESS, align 4
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.TYPE_20__* @mempool_alloc(i32 %13, i32 %14)
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %4, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = icmp ne %struct.TYPE_20__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %114

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_FCOE, align 4
  %25 = load i32, i32* @LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_LOOPBACK, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %28 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %22, %struct.TYPE_20__* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mempool_free(%struct.TYPE_20__* %33, i32 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %114

40:                                               ; preds = %21
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store %struct.lpfc_mbx_set_link_diag_loopback* %45, %struct.lpfc_mbx_set_link_diag_loopback** %7, align 8
  %46 = load i32, i32* @lpfc_mbx_set_diag_state_link_num, align 4
  %47 = load %struct.lpfc_mbx_set_link_diag_loopback*, %struct.lpfc_mbx_set_link_diag_loopback** %7, align 8
  %48 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_loopback, %struct.lpfc_mbx_set_link_diag_loopback* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bf_set(i32 %46, i32* %49, i32 %54)
  %56 = load i32, i32* @lpfc_mbx_set_diag_state_link_type, align 4
  %57 = load %struct.lpfc_mbx_set_link_diag_loopback*, %struct.lpfc_mbx_set_link_diag_loopback** %7, align 8
  %58 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_loopback, %struct.lpfc_mbx_set_link_diag_loopback* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bf_set(i32 %56, i32* %59, i32 %64)
  %66 = load i32, i32* @lpfc_mbx_set_diag_lpbk_type, align 4
  %67 = load %struct.lpfc_mbx_set_link_diag_loopback*, %struct.lpfc_mbx_set_link_diag_loopback** %7, align 8
  %68 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_loopback, %struct.lpfc_mbx_set_link_diag_loopback* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* @LPFC_DIAG_LOOPBACK_TYPE_INTERNAL, align 4
  %71 = call i32 @bf_set(i32 %66, i32* %69, i32 %70)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %75 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %72, %struct.TYPE_20__* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MBX_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %40
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %79, %40
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = load i32, i32* @KERN_WARNING, align 4
  %89 = load i32, i32* @LOG_LIBDFC, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %90, i64 %95)
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %86, %79
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = icmp ne %struct.TYPE_20__* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @MBX_TIMEOUT, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mempool_free(%struct.TYPE_20__* %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %102, %99
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %32, %18
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_20__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @bf_set(i32, i32*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
