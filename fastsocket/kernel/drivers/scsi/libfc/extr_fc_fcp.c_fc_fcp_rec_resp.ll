; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_rec_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_rec_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_fcp_pkt = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.fc_rport_libfc_priv*, i32 }
%struct.fc_rport_libfc_priv = type { i32 }
%struct.fc_els_rec_acc = type { i32, i32 }
%struct.fc_els_ls_rjt = type { i32, i32 }

@ELS_LS_RJT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"device %x unexpected REC reject reason %d expl %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"device does not support REC\0A\00", align 1
@FC_RP_FLAGS_REC_SUPPORTED = common dso_local global i32 0, align 4
@ELS_EXPL_OXID_RXID = common dso_local global i32 0, align 4
@FC_ERROR = common dso_local global i32 0, align 4
@ELS_LS_ACC = common dso_local global i64 0, align 8
@FC_SRB_ABORTED = common dso_local global i32 0, align 4
@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@FC_RCTL_DD_CMD_STATUS = common dso_local global i32 0, align 4
@FC_RCTL_DD_SOL_DATA = common dso_local global i32 0, align 4
@ESB_ST_SEQ_INIT = common dso_local global i32 0, align 4
@FC_RCTL_DD_DATA_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_fcp_rec_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_rec_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_fcp_pkt*, align 8
  %8 = alloca %struct.fc_els_rec_acc*, align 8
  %9 = alloca %struct.fc_els_ls_rjt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fc_rport_libfc_priv*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.fc_fcp_pkt*
  store %struct.fc_fcp_pkt* %17, %struct.fc_fcp_pkt** %7, align 8
  %18 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %19 = call i64 @IS_ERR(%struct.fc_frame* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %23 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %24 = call i32 @fc_fcp_rec_error(%struct.fc_fcp_pkt* %22, %struct.fc_frame* %23)
  br label %212

25:                                               ; preds = %3
  %26 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %27 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %207

30:                                               ; preds = %25
  %31 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %32 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %34 = call i64 @fc_frame_payload_op(%struct.fc_frame* %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @ELS_LS_RJT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %30
  %39 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %40 = call i8* @fc_frame_payload_get(%struct.fc_frame* %39, i32 8)
  %41 = bitcast i8* %40 to %struct.fc_els_ls_rjt*
  store %struct.fc_els_ls_rjt* %41, %struct.fc_els_ls_rjt** %9, align 8
  %42 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %9, align 8
  %43 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %45 [
    i32 128, label %59
    i32 130, label %73
    i32 129, label %73
  ]

45:                                               ; preds = %38
  %46 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %47 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %48 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %47, i32 0, i32 5
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %9, align 8
  %53 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %9, align 8
  %56 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.fc_fcp_pkt*, i8*, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %38, %45
  %60 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %61 = call i32 (%struct.fc_fcp_pkt*, i8*, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %63 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %62, i32 0, i32 5
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %65, align 8
  store %struct.fc_rport_libfc_priv* %66, %struct.fc_rport_libfc_priv** %15, align 8
  %67 = load i32, i32* @FC_RP_FLAGS_REC_SUPPORTED, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %15, align 8
  %70 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %91

73:                                               ; preds = %38, %38
  %74 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %9, align 8
  %75 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ELS_EXPL_OXID_RXID, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %81 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %86 = call i32 @fc_fcp_retry_cmd(%struct.fc_fcp_pkt* %85)
  br label %91

87:                                               ; preds = %79, %73
  %88 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %89 = load i32, i32* @FC_ERROR, align 4
  %90 = call i32 @fc_fcp_recovery(%struct.fc_fcp_pkt* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %84, %59
  br label %203

92:                                               ; preds = %30
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @ELS_LS_ACC, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %202

96:                                               ; preds = %92
  %97 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %98 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @FC_SRB_ABORTED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %204

104:                                              ; preds = %96
  %105 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %106 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %13, align 4
  %110 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %111 = call i8* @fc_frame_payload_get(%struct.fc_frame* %110, i32 8)
  %112 = bitcast i8* %111 to %struct.fc_els_rec_acc*
  store %struct.fc_els_rec_acc* %112, %struct.fc_els_rec_acc** %8, align 8
  %113 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %8, align 8
  %114 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ntohl(i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %8, align 8
  %118 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ntohl(i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %104
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @DMA_TO_DEVICE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @FC_RCTL_DD_CMD_STATUS, align 4
  store i32 %130, i32* %14, align 4
  br label %145

131:                                              ; preds = %125
  %132 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %133 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @FC_RCTL_DD_CMD_STATUS, align 4
  store i32 %138, i32* %14, align 4
  br label %144

139:                                              ; preds = %131
  %140 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %141 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* @FC_RCTL_DD_SOL_DATA, align 4
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %139, %137
  br label %145

145:                                              ; preds = %144, %129
  %146 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @fc_fcp_srr(%struct.fc_fcp_pkt* %146, i32 %147, i32 %148)
  br label %201

150:                                              ; preds = %104
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @ESB_ST_SEQ_INIT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %157 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %158 = call i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt* %157)
  %159 = call i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt* %156, i32 %158)
  br label %200

160:                                              ; preds = %150
  %161 = load i32, i32* @FC_RCTL_DD_SOL_DATA, align 4
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @DMA_TO_DEVICE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %160
  %166 = load i32, i32* @FC_RCTL_DD_CMD_STATUS, align 4
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %169 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* @FC_RCTL_DD_DATA_DESC, align 4
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %172, %165
  br label %195

175:                                              ; preds = %160
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %178 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %176, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = load i32, i32* @FC_RCTL_DD_CMD_STATUS, align 4
  store i32 %182, i32* %14, align 4
  br label %194

183:                                              ; preds = %175
  %184 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %185 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %191 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %189, %183
  br label %194

194:                                              ; preds = %193, %181
  br label %195

195:                                              ; preds = %194, %174
  %196 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @fc_fcp_srr(%struct.fc_fcp_pkt* %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %155
  br label %201

201:                                              ; preds = %200, %145
  br label %202

202:                                              ; preds = %201, %92
  br label %203

203:                                              ; preds = %202, %91
  br label %204

204:                                              ; preds = %203, %103
  %205 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %206 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %205)
  br label %207

207:                                              ; preds = %204, %29
  %208 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %209 = call i32 @fc_fcp_pkt_release(%struct.fc_fcp_pkt* %208)
  %210 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %211 = call i32 @fc_frame_free(%struct.fc_frame* %210)
  br label %212

212:                                              ; preds = %207, %21
  ret void
}

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_rec_error(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @FC_FCP_DBG(%struct.fc_fcp_pkt*, i8*, ...) #1

declare dso_local i32 @fc_fcp_retry_cmd(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_recovery(%struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @fc_fcp_srr(%struct.fc_fcp_pkt*, i32, i32) #1

declare dso_local i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_pkt_release(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
