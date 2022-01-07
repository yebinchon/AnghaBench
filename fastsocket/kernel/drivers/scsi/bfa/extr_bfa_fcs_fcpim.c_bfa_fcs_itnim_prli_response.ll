; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_prli_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_prli_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcs_itnim_s = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fc_els_cmd_s = type { i64 }
%struct.fc_prli_s = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.fc_prli_params_s }
%struct.fc_prli_params_s = type { i32, i32, i32, i32, i64 }
%struct.fc_ls_rjt_s = type { i64, i64 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_FCS_ITNIM_SM_RSP_ERROR = common dso_local global i32 0, align 4
@FC_ELS_ACC = common dso_local global i64 0, align 8
@FC_PARSE_OK = common dso_local global i64 0, align 8
@BFA_RPORT_INITIATOR = common dso_local global i32 0, align 4
@BFA_FCS_ITNIM_SM_RSP_OK = common dso_local global i32 0, align 4
@BFA_RPORT_TARGET = common dso_local global i32 0, align 4
@FC_LS_RJT_RSN_CMD_NOT_SUPP = common dso_local global i64 0, align 8
@BFA_FCS_ITNIM_SM_RSP_NOT_SUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*, i8*, i64, i64, i64, %struct.fchs_s*)* @bfa_fcs_itnim_prli_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_itnim_prli_response(i8* %0, %struct.bfa_fcxp_s* %1, i8* %2, i64 %3, i64 %4, i64 %5, %struct.fchs_s* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fchs_s*, align 8
  %15 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %16 = alloca %struct.fc_els_cmd_s*, align 8
  %17 = alloca %struct.fc_prli_s*, align 8
  %18 = alloca %struct.fc_ls_rjt_s*, align 8
  %19 = alloca %struct.fc_prli_params_s*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.fchs_s* %6, %struct.fchs_s** %14, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.bfa_fcs_itnim_s*
  store %struct.bfa_fcs_itnim_s* %21, %struct.bfa_fcs_itnim_s** %15, align 8
  %22 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @bfa_trc(i32 %24, i64 %25)
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @BFA_STATUS_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %7
  %31 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %37 = load i32, i32* @BFA_FCS_ITNIM_SM_RSP_ERROR, align 4
  %38 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_itnim_s* %36, i32 %37)
  br label %174

39:                                               ; preds = %7
  %40 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %41 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %40)
  %42 = inttoptr i64 %41 to %struct.fc_els_cmd_s*
  store %struct.fc_els_cmd_s* %42, %struct.fc_els_cmd_s** %16, align 8
  %43 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %16, align 8
  %44 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FC_ELS_ACC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %138

48:                                               ; preds = %39
  %49 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %16, align 8
  %50 = bitcast %struct.fc_els_cmd_s* %49 to %struct.fc_prli_s*
  store %struct.fc_prli_s* %50, %struct.fc_prli_s** %17, align 8
  %51 = load %struct.fc_prli_s*, %struct.fc_prli_s** %17, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @fc_prli_rsp_parse(%struct.fc_prli_s* %51, i64 %52)
  %54 = load i64, i64* @FC_PARSE_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %101

56:                                               ; preds = %48
  %57 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @bfa_trc(i32 %59, i64 %60)
  %62 = load %struct.fc_prli_s*, %struct.fc_prli_s** %17, align 8
  %63 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.fc_prli_params_s, %struct.fc_prli_params_s* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %56
  %69 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fc_prli_s*, %struct.fc_prli_s** %17, align 8
  %73 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @bfa_trc(i32 %71, i64 %75)
  %77 = load i32, i32* @BFA_RPORT_INITIATOR, align 4
  %78 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %79 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %78, i32 0, i32 6
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %83 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %88 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %93 = load i32, i32* @BFA_FCS_ITNIM_SM_RSP_OK, align 4
  %94 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_itnim_s* %92, i32 %93)
  br label %174

95:                                               ; preds = %56
  %96 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %97 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %174

101:                                              ; preds = %48
  %102 = load i32, i32* @BFA_RPORT_TARGET, align 4
  %103 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %104 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %103, i32 0, i32 6
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 4
  %107 = load %struct.fc_prli_s*, %struct.fc_prli_s** %17, align 8
  %108 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store %struct.fc_prli_params_s* %109, %struct.fc_prli_params_s** %19, align 8
  %110 = load %struct.fc_prli_params_s*, %struct.fc_prli_params_s** %19, align 8
  %111 = getelementptr inbounds %struct.fc_prli_params_s, %struct.fc_prli_params_s* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %114 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load %struct.fc_prli_params_s*, %struct.fc_prli_params_s** %19, align 8
  %116 = getelementptr inbounds %struct.fc_prli_params_s, %struct.fc_prli_params_s* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %119 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.fc_prli_params_s*, %struct.fc_prli_params_s** %19, align 8
  %121 = getelementptr inbounds %struct.fc_prli_params_s, %struct.fc_prli_params_s* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %124 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.fc_prli_params_s*, %struct.fc_prli_params_s** %19, align 8
  %126 = getelementptr inbounds %struct.fc_prli_params_s, %struct.fc_prli_params_s* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %129 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %131 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %136 = load i32, i32* @BFA_FCS_ITNIM_SM_RSP_OK, align 4
  %137 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_itnim_s* %135, i32 %136)
  br label %174

138:                                              ; preds = %39
  %139 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %140 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %139)
  %141 = inttoptr i64 %140 to %struct.fc_ls_rjt_s*
  store %struct.fc_ls_rjt_s* %141, %struct.fc_ls_rjt_s** %18, align 8
  %142 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %143 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %18, align 8
  %146 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @bfa_trc(i32 %144, i64 %147)
  %149 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %150 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %18, align 8
  %153 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @bfa_trc(i32 %151, i64 %154)
  %156 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %157 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %18, align 8
  %162 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @FC_LS_RJT_RSN_CMD_NOT_SUPP, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %138
  %167 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %168 = load i32, i32* @BFA_FCS_ITNIM_SM_RSP_NOT_SUPP, align 4
  %169 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_itnim_s* %167, i32 %168)
  br label %174

170:                                              ; preds = %138
  %171 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %15, align 8
  %172 = load i32, i32* @BFA_FCS_ITNIM_SM_RSP_ERROR, align 4
  %173 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_itnim_s* %171, i32 %172)
  br label %174

174:                                              ; preds = %30, %68, %95, %166, %170, %101
  ret void
}

declare dso_local i32 @bfa_trc(i32, i64) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_itnim_s*, i32) #1

declare dso_local i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s*) #1

declare dso_local i64 @fc_prli_rsp_parse(%struct.fc_prli_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
