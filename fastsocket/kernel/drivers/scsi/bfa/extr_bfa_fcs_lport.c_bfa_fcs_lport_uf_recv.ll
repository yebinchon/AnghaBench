; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_uf_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_uf_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32 }
%struct.fchs_s = type { i64, i64, i64, i64, i64 }
%struct.bfa_fcs_rport_s = type { i32 }
%struct.fc_els_cmd_s = type { i64 }
%struct.fc_logi_s = type { i32 }
%struct.fc_echo_s = type { i32 }
%struct.fc_rnid_cmd_s = type { i32 }

@uf_recvs = common dso_local global i32 0, align 4
@uf_recv_drops = common dso_local global i32 0, align 4
@FC_TYPE_ELS = common dso_local global i64 0, align 8
@FC_ELS_PLOGI = common dso_local global i64 0, align 8
@FC_ELS_ECHO = common dso_local global i64 0, align 8
@FC_ELS_RNID = common dso_local global i64 0, align 8
@FC_TYPE_BLS = common dso_local global i64 0, align 8
@FC_RTG_BASIC_LINK = common dso_local global i64 0, align 8
@FC_CAT_ABTS = common dso_local global i64 0, align 8
@FC_TYPE_SERVICES = common dso_local global i64 0, align 8
@CT_RSN_NOT_SUPP = common dso_local global i32 0, align 4
@CT_NS_EXP_NOADDITIONAL = common dso_local global i32 0, align 4
@FC_TYPE_FC_FSS = common dso_local global i64 0, align 8
@FC_ELS_RSCN = common dso_local global i64 0, align 8
@FC_ELS_LOGO = common dso_local global i64 0, align 8
@FC_ELS_PRLI = common dso_local global i64 0, align 8
@FC_LS_RJT_RSN_CMD_NOT_SUPP = common dso_local global i32 0, align 4
@FC_LS_RJT_EXP_NO_ADDL_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_uf_recv(%struct.bfa_fcs_lport_s* %0, %struct.fchs_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_lport_s*, align 8
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.bfa_fcs_rport_s*, align 8
  %9 = alloca %struct.fc_els_cmd_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %4, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %11 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  store %struct.bfa_fcs_rport_s* null, %struct.bfa_fcs_rport_s** %8, align 8
  %13 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %14 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %13, i64 1
  %15 = bitcast %struct.fchs_s* %14 to %struct.fc_els_cmd_s*
  store %struct.fc_els_cmd_s* %15, %struct.fc_els_cmd_s** %9, align 8
  %16 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %17 = load i32, i32* @uf_recvs, align 4
  %18 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %16, i32 %17)
  %19 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %23 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @bfa_trc(i32 %21, i64 %24)
  %26 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %27 = call i32 @bfa_fcs_lport_is_online(%struct.bfa_fcs_lport_s* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %31 = load i32, i32* @uf_recv_drops, align 4
  %32 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %30, i32 %31)
  br label %229

33:                                               ; preds = %3
  %34 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %35 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FC_TYPE_ELS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %41 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FC_ELS_PLOGI, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %47 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %48 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %49 = bitcast %struct.fc_els_cmd_s* %48 to %struct.fc_logi_s*
  %50 = call i32 @bfa_fcs_lport_plogi(%struct.bfa_fcs_lport_s* %46, %struct.fchs_s* %47, %struct.fc_logi_s* %49)
  br label %229

51:                                               ; preds = %39, %33
  %52 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %53 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FC_TYPE_ELS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %59 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FC_ELS_ECHO, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %65 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %66 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %67 = bitcast %struct.fc_els_cmd_s* %66 to %struct.fc_echo_s*
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @bfa_fcs_lport_echo(%struct.bfa_fcs_lport_s* %64, %struct.fchs_s* %65, %struct.fc_echo_s* %67, i32 %68)
  br label %229

70:                                               ; preds = %57, %51
  %71 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %72 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FC_TYPE_ELS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %78 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FC_ELS_RNID, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %84 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %85 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %86 = bitcast %struct.fc_els_cmd_s* %85 to %struct.fc_rnid_cmd_s*
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @bfa_fcs_lport_rnid(%struct.bfa_fcs_lport_s* %83, %struct.fchs_s* %84, %struct.fc_rnid_cmd_s* %86, i32 %87)
  br label %229

89:                                               ; preds = %76, %70
  %90 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %91 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @FC_TYPE_BLS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %97 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @FC_RTG_BASIC_LINK, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %103 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @FC_CAT_ABTS, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %109 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %110 = call i32 @bfa_fcs_lport_abts_acc(%struct.bfa_fcs_lport_s* %108, %struct.fchs_s* %109)
  br label %111

111:                                              ; preds = %107, %101, %95
  br label %229

112:                                              ; preds = %89
  %113 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %114 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @FC_TYPE_SERVICES, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %120 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %121 = load i32, i32* @CT_RSN_NOT_SUPP, align 4
  %122 = load i32, i32* @CT_NS_EXP_NOADDITIONAL, align 4
  %123 = call i32 @bfa_fcs_lport_send_fcgs_rjt(%struct.bfa_fcs_lport_s* %119, %struct.fchs_s* %120, i32 %121, i32 %122)
  br label %229

124:                                              ; preds = %112
  %125 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pid(%struct.bfa_fcs_lport_s* %125, i64 %126)
  store %struct.bfa_fcs_rport_s* %127, %struct.bfa_fcs_rport_s** %8, align 8
  %128 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  %129 = icmp ne %struct.bfa_fcs_rport_s* %128, null
  br i1 %129, label %130, label %156

130:                                              ; preds = %124
  %131 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  %132 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %135 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @bfa_trc(i32 %133, i64 %136)
  %138 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  %139 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %142 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @bfa_trc(i32 %140, i64 %143)
  %145 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  %146 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %149 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @bfa_trc(i32 %147, i64 %150)
  %152 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  %153 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @bfa_fcs_rport_uf_recv(%struct.bfa_fcs_rport_s* %152, %struct.fchs_s* %153, i32 %154)
  br label %229

156:                                              ; preds = %124
  %157 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %158 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @FC_TYPE_ELS, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %191

162:                                              ; preds = %156
  %163 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %164 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %167 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @bfa_trc(i32 %165, i64 %168)
  %170 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %171 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %174 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @bfa_trc(i32 %172, i64 %175)
  %177 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %178 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @FC_TYPE_FC_FSS, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %162
  %183 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %184 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %187 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @bfa_sm_fault(i32 %185, i64 %188)
  br label %190

190:                                              ; preds = %182, %162
  br label %229

191:                                              ; preds = %156
  %192 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %193 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %196 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @bfa_trc(i32 %194, i64 %197)
  %199 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %200 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @FC_ELS_RSCN, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %191
  %205 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %206 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @bfa_fcs_lport_scn_process_rscn(%struct.bfa_fcs_lport_s* %205, %struct.fchs_s* %206, i32 %207)
  br label %229

209:                                              ; preds = %191
  %210 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %211 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @FC_ELS_LOGO, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %229

216:                                              ; preds = %209
  %217 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %218 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @FC_ELS_PRLI, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %229

223:                                              ; preds = %216
  %224 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %225 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %226 = load i32, i32* @FC_LS_RJT_RSN_CMD_NOT_SUPP, align 4
  %227 = load i32, i32* @FC_LS_RJT_EXP_NO_ADDL_INFO, align 4
  %228 = call i32 @bfa_fcs_lport_send_ls_rjt(%struct.bfa_fcs_lport_s* %224, %struct.fchs_s* %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %223, %222, %215, %204, %190, %130, %118, %111, %82, %63, %45, %29
  ret void
}

declare dso_local i32 @bfa_stats(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @bfa_trc(i32, i64) #1

declare dso_local i32 @bfa_fcs_lport_is_online(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_plogi(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, %struct.fc_logi_s*) #1

declare dso_local i32 @bfa_fcs_lport_echo(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, %struct.fc_echo_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_rnid(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, %struct.fc_rnid_cmd_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_abts_acc(%struct.bfa_fcs_lport_s*, %struct.fchs_s*) #1

declare dso_local i32 @bfa_fcs_lport_send_fcgs_rjt(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, i32, i32) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pid(%struct.bfa_fcs_lport_s*, i64) #1

declare dso_local i32 @bfa_fcs_rport_uf_recv(%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i64) #1

declare dso_local i32 @bfa_fcs_lport_scn_process_rscn(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_send_ls_rjt(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
