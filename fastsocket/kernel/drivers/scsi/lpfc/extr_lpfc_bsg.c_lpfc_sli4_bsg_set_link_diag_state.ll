; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_set_link_diag_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_set_link_diag_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.lpfc_mbx_set_link_diag_state }
%struct.lpfc_mbx_set_link_diag_state = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@MBX_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_FCOE = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_STATE = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"3128 Set link to diagnostic state:x%x (x%x/x%x)\0A\00", align 1
@lpfc_mbx_set_diag_state_diag_bit_valid = common dso_local global i32 0, align 4
@LPFC_DIAG_STATE_DIAG_BIT_VALID_CHANGE = common dso_local global i32 0, align 4
@lpfc_mbx_set_diag_state_link_num = common dso_local global i32 0, align 4
@lpfc_mbx_set_diag_state_link_type = common dso_local global i32 0, align 4
@lpfc_mbx_set_diag_state_diag = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_sli4_bsg_set_link_diag_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.lpfc_mbx_set_link_diag_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @MBX_SUCCESS, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_20__* @mempool_alloc(i32 %15, i32 %16)
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %6, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = icmp ne %struct.TYPE_20__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %133

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_FCOE, align 4
  %27 = load i32, i32* @LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_STATE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %30 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %24, %struct.TYPE_20__* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %118

37:                                               ; preds = %23
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = load i32, i32* @KERN_INFO, align 4
  %40 = load i32, i32* @LOG_LIBDFC, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46, i32 %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store %struct.lpfc_mbx_set_link_diag_state* %57, %struct.lpfc_mbx_set_link_diag_state** %7, align 8
  %58 = load i32, i32* @lpfc_mbx_set_diag_state_diag_bit_valid, align 4
  %59 = load %struct.lpfc_mbx_set_link_diag_state*, %struct.lpfc_mbx_set_link_diag_state** %7, align 8
  %60 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_state, %struct.lpfc_mbx_set_link_diag_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* @LPFC_DIAG_STATE_DIAG_BIT_VALID_CHANGE, align 4
  %63 = call i32 @bf_set(i32 %58, i32* %61, i32 %62)
  %64 = load i32, i32* @lpfc_mbx_set_diag_state_link_num, align 4
  %65 = load %struct.lpfc_mbx_set_link_diag_state*, %struct.lpfc_mbx_set_link_diag_state** %7, align 8
  %66 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_state, %struct.lpfc_mbx_set_link_diag_state* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bf_set(i32 %64, i32* %67, i32 %72)
  %74 = load i32, i32* @lpfc_mbx_set_diag_state_link_type, align 4
  %75 = load %struct.lpfc_mbx_set_link_diag_state*, %struct.lpfc_mbx_set_link_diag_state** %7, align 8
  %76 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_state, %struct.lpfc_mbx_set_link_diag_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bf_set(i32 %74, i32* %77, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %37
  %87 = load i32, i32* @lpfc_mbx_set_diag_state_diag, align 4
  %88 = load %struct.lpfc_mbx_set_link_diag_state*, %struct.lpfc_mbx_set_link_diag_state** %7, align 8
  %89 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_state, %struct.lpfc_mbx_set_link_diag_state* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = call i32 @bf_set(i32 %87, i32* %90, i32 1)
  br label %98

92:                                               ; preds = %37
  %93 = load i32, i32* @lpfc_mbx_set_diag_state_diag, align 4
  %94 = load %struct.lpfc_mbx_set_link_diag_state*, %struct.lpfc_mbx_set_link_diag_state** %7, align 8
  %95 = getelementptr inbounds %struct.lpfc_mbx_set_link_diag_state, %struct.lpfc_mbx_set_link_diag_state* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = call i32 @bf_set(i32 %93, i32* %96, i32 0)
  br label %98

98:                                               ; preds = %92, %86
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %102 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %99, %struct.TYPE_20__* %100, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @MBX_SUCCESS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %98
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %117

114:                                              ; preds = %106, %98
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %114, %113
  br label %118

118:                                              ; preds = %117, %34
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %120 = icmp ne %struct.TYPE_20__* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @MBX_TIMEOUT, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @mempool_free(%struct.TYPE_20__* %126, i32 %129)
  br label %131

131:                                              ; preds = %125, %121, %118
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %20
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_20__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bf_set(i32, i32*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
