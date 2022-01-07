; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_rpsc2_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_rpsc2_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcs_rpf_s = type { i32, %struct.bfa_fcs_rport_s* }
%struct.bfa_fcs_rport_s = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.fc_ls_rjt_s = type { i64, i64 }
%struct.fc_rpsc2_acc_s = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_ETIMER = common dso_local global i64 0, align 8
@RPFSM_EVENT_RPSC_ERROR = common dso_local global i32 0, align 4
@FC_ELS_ACC = common dso_local global i64 0, align 8
@RPFSM_EVENT_RPSC_COMP = common dso_local global i32 0, align 4
@FC_LS_RJT_RSN_CMD_NOT_SUPP = common dso_local global i64 0, align 8
@RPFSM_EVENT_RPSC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*, i8*, i64, i32, i32, %struct.fchs_s*)* @bfa_fcs_rpf_rpsc2_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rpf_rpsc2_response(i8* %0, %struct.bfa_fcxp_s* %1, i8* %2, i64 %3, i32 %4, i32 %5, %struct.fchs_s* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fchs_s*, align 8
  %15 = alloca %struct.bfa_fcs_rpf_s*, align 8
  %16 = alloca %struct.bfa_fcs_rport_s*, align 8
  %17 = alloca %struct.fc_ls_rjt_s*, align 8
  %18 = alloca %struct.fc_rpsc2_acc_s*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.fchs_s* %6, %struct.fchs_s** %14, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.bfa_fcs_rpf_s*
  store %struct.bfa_fcs_rpf_s* %21, %struct.bfa_fcs_rpf_s** %15, align 8
  %22 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %15, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %22, i32 0, i32 1
  %24 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %23, align 8
  store %struct.bfa_fcs_rport_s* %24, %struct.bfa_fcs_rport_s** %16, align 8
  %25 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %26 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @bfa_trc(i32 %27, i64 %28)
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @BFA_STATUS_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %7
  %34 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %35 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @bfa_trc(i32 %36, i64 %37)
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @BFA_STATUS_ETIMER, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %33
  %49 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %15, align 8
  %50 = load i32, i32* @RPFSM_EVENT_RPSC_ERROR, align 4
  %51 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rpf_s* %49, i32 %50)
  br label %199

52:                                               ; preds = %7
  %53 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %54 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %53)
  %55 = inttoptr i64 %54 to %struct.fc_rpsc2_acc_s*
  store %struct.fc_rpsc2_acc_s* %55, %struct.fc_rpsc2_acc_s** %18, align 8
  %56 = load %struct.fc_rpsc2_acc_s*, %struct.fc_rpsc2_acc_s** %18, align 8
  %57 = getelementptr inbounds %struct.fc_rpsc2_acc_s, %struct.fc_rpsc2_acc_s* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FC_ELS_ACC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %162

61:                                               ; preds = %52
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.fc_rpsc2_acc_s*, %struct.fc_rpsc2_acc_s** %18, align 8
  %68 = getelementptr inbounds %struct.fc_rpsc2_acc_s, %struct.fc_rpsc2_acc_s* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @be16_to_cpu(i64 %69)
  store i64 %70, i64* %19, align 8
  %71 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %72 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %19, align 8
  %75 = call i32 @bfa_trc(i32 %73, i64 %74)
  %76 = load i64, i64* %19, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %161

78:                                               ; preds = %61
  %79 = load %struct.fc_rpsc2_acc_s*, %struct.fc_rpsc2_acc_s** %18, align 8
  %80 = getelementptr inbounds %struct.fc_rpsc2_acc_s, %struct.fc_rpsc2_acc_s* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @be32_to_cpu(i32 %84)
  %86 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %87 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @bfa_ntoh3b(i32 %88)
  %90 = icmp ne i64 %85, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @WARN_ON(i32 %91)
  %93 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %94 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fc_rpsc2_acc_s*, %struct.fc_rpsc2_acc_s** %18, align 8
  %97 = getelementptr inbounds %struct.fc_rpsc2_acc_s, %struct.fc_rpsc2_acc_s* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @be32_to_cpu(i32 %101)
  %103 = call i32 @bfa_trc(i32 %95, i64 %102)
  %104 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %105 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.fc_rpsc2_acc_s*, %struct.fc_rpsc2_acc_s** %18, align 8
  %108 = getelementptr inbounds %struct.fc_rpsc2_acc_s, %struct.fc_rpsc2_acc_s* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @be16_to_cpu(i64 %112)
  %114 = call i32 @bfa_trc(i32 %106, i64 %113)
  %115 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %116 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.fc_rpsc2_acc_s*, %struct.fc_rpsc2_acc_s** %18, align 8
  %119 = getelementptr inbounds %struct.fc_rpsc2_acc_s, %struct.fc_rpsc2_acc_s* %118, i32 0, i32 2
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @be16_to_cpu(i64 %123)
  %125 = call i32 @bfa_trc(i32 %117, i64 %124)
  %126 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %127 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.fc_rpsc2_acc_s*, %struct.fc_rpsc2_acc_s** %18, align 8
  %130 = getelementptr inbounds %struct.fc_rpsc2_acc_s, %struct.fc_rpsc2_acc_s* %129, i32 0, i32 2
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @bfa_trc(i32 %128, i64 %134)
  %136 = load %struct.fc_rpsc2_acc_s*, %struct.fc_rpsc2_acc_s** %18, align 8
  %137 = getelementptr inbounds %struct.fc_rpsc2_acc_s, %struct.fc_rpsc2_acc_s* %136, i32 0, i32 2
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %78
  %144 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %15, align 8
  %145 = load i32, i32* @RPFSM_EVENT_RPSC_ERROR, align 4
  %146 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rpf_s* %144, i32 %145)
  br label %199

147:                                              ; preds = %78
  %148 = load %struct.fc_rpsc2_acc_s*, %struct.fc_rpsc2_acc_s** %18, align 8
  %149 = getelementptr inbounds %struct.fc_rpsc2_acc_s, %struct.fc_rpsc2_acc_s* %148, i32 0, i32 2
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @be16_to_cpu(i64 %153)
  %155 = call i32 @fc_rpsc_operspeed_to_bfa_speed(i64 %154)
  %156 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %15, align 8
  %157 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %15, align 8
  %159 = load i32, i32* @RPFSM_EVENT_RPSC_COMP, align 4
  %160 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rpf_s* %158, i32 %159)
  br label %161

161:                                              ; preds = %147, %61
  br label %199

162:                                              ; preds = %52
  %163 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %164 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %163)
  %165 = inttoptr i64 %164 to %struct.fc_ls_rjt_s*
  store %struct.fc_ls_rjt_s* %165, %struct.fc_ls_rjt_s** %17, align 8
  %166 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %167 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %17, align 8
  %170 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @bfa_trc(i32 %168, i64 %171)
  %173 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %174 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %17, align 8
  %177 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @bfa_trc(i32 %175, i64 %178)
  %180 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %16, align 8
  %181 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  %185 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %17, align 8
  %186 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @FC_LS_RJT_RSN_CMD_NOT_SUPP, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %162
  %191 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %15, align 8
  %192 = load i32, i32* @RPFSM_EVENT_RPSC_FAIL, align 4
  %193 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rpf_s* %191, i32 %192)
  br label %198

194:                                              ; preds = %162
  %195 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %15, align 8
  %196 = load i32, i32* @RPFSM_EVENT_RPSC_ERROR, align 4
  %197 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rpf_s* %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %190
  br label %199

199:                                              ; preds = %48, %143, %198, %161
  ret void
}

declare dso_local i32 @bfa_trc(i32, i64) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_rpf_s*, i32) #1

declare dso_local i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s*) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @bfa_ntoh3b(i32) #1

declare dso_local i32 @fc_rpsc_operspeed_to_bfa_speed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
