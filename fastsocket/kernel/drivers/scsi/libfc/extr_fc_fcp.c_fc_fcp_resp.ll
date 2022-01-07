; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i64, i32, i32, i64, i32, i8*, %struct.TYPE_3__*, i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i32 }
%struct.fcp_resp = type { i64, i32 }
%struct.fcp_resp_ext = type { i32, i32, i32 }
%struct.fcp_resp_rsp_info = type { i64 }

@FCP_CONF_REQ = common dso_local global i32 0, align 4
@FCP_RSP_LEN_VAL = common dso_local global i32 0, align 4
@FCP_SNS_LEN_VAL = common dso_local global i32 0, align 4
@FCP_RESP_RSP_INFO_LEN4 = common dso_local global i32 0, align 4
@FCP_RESP_RSP_INFO_LEN8 = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@FCP_RESID_UNDER = common dso_local global i32 0, align 4
@FCP_RESID_OVER = common dso_local global i32 0, align 4
@FC_ERROR = common dso_local global i8* null, align 8
@FC_SRB_RCV_STATUS = common dso_local global i32 0, align 4
@FC_DATA_OVRRUN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"tgt %6.6x xfer len %zx greater than expected, len %x, data len %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"short FCP response. flags 0x%x len %u respl %u snsl %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*, %struct.fc_frame*)* @fc_fcp_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_resp(%struct.fc_fcp_pkt* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_frame_header*, align 8
  %6 = alloca %struct.fcp_resp*, align 8
  %7 = alloca %struct.fcp_resp_ext*, align 8
  %8 = alloca %struct.fcp_resp_rsp_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %15 = call i32 @fr_len(%struct.fc_frame* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %17 = call i64 @fr_hdr(%struct.fc_frame* %16)
  %18 = inttoptr i64 %17 to %struct.fc_frame_header*
  store %struct.fc_frame_header* %18, %struct.fc_frame_header** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %256

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %32 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %31, i64 1
  %33 = bitcast %struct.fc_frame_header* %32 to %struct.fcp_resp*
  store %struct.fcp_resp* %33, %struct.fcp_resp** %6, align 8
  %34 = load %struct.fcp_resp*, %struct.fcp_resp** %6, align 8
  %35 = getelementptr inbounds %struct.fcp_resp, %struct.fcp_resp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %38 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.fcp_resp*, %struct.fcp_resp** %6, align 8
  %40 = getelementptr inbounds %struct.fcp_resp, %struct.fcp_resp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %44 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %46 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %49 = call i32 @fc_fcp_ddp_done(%struct.fc_fcp_pkt* %48)
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @FCP_CONF_REQ, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %26
  %56 = load %struct.fcp_resp*, %struct.fcp_resp** %6, align 8
  %57 = getelementptr inbounds %struct.fcp_resp, %struct.fcp_resp* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %55, %26
  %61 = phi i1 [ true, %26 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %212

65:                                               ; preds = %60
  %66 = load %struct.fcp_resp*, %struct.fcp_resp** %6, align 8
  %67 = getelementptr inbounds %struct.fcp_resp, %struct.fcp_resp* %66, i64 1
  %68 = bitcast %struct.fcp_resp* %67 to i8*
  %69 = bitcast i8* %68 to %struct.fcp_resp_ext*
  store %struct.fcp_resp_ext* %69, %struct.fcp_resp_ext** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @FCP_RSP_LEN_VAL, align 4
  %72 = load i32, i32* @FCP_SNS_LEN_VAL, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %148

76:                                               ; preds = %65
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %78, 28
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %256

81:                                               ; preds = %76
  %82 = load %struct.fcp_resp_ext*, %struct.fcp_resp_ext** %7, align 8
  %83 = getelementptr inbounds %struct.fcp_resp_ext, %struct.fcp_resp_ext* %82, i64 1
  %84 = bitcast %struct.fcp_resp_ext* %83 to %struct.fcp_resp_rsp_info*
  store %struct.fcp_resp_rsp_info* %84, %struct.fcp_resp_rsp_info** %8, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @FCP_RSP_LEN_VAL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %81
  %90 = load %struct.fcp_resp_ext*, %struct.fcp_resp_ext** %7, align 8
  %91 = getelementptr inbounds %struct.fcp_resp_ext, %struct.fcp_resp_ext* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @ntohl(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @FCP_RESP_RSP_INFO_LEN4, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @FCP_RESP_RSP_INFO_LEN8, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %256

103:                                              ; preds = %98, %89
  %104 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %105 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %104, i32 0, i32 10
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.fcp_resp_rsp_info*, %struct.fcp_resp_rsp_info** %8, align 8
  %110 = getelementptr inbounds %struct.fcp_resp_rsp_info, %struct.fcp_resp_rsp_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %113 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %115 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %114, i32 0, i32 9
  %116 = call i32 @complete(i32* %115)
  br label %270

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %81
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @FCP_SNS_LEN_VAL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %118
  %124 = load %struct.fcp_resp_ext*, %struct.fcp_resp_ext** %7, align 8
  %125 = getelementptr inbounds %struct.fcp_resp_ext, %struct.fcp_resp_ext* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @ntohl(i32 %126)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %132, %123
  %135 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %136 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %135, i32 0, i32 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.fcp_resp_rsp_info*, %struct.fcp_resp_rsp_info** %8, align 8
  %141 = bitcast %struct.fcp_resp_rsp_info* %140 to i8*
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @memcpy(i32 %139, i8* %144, i32 %145)
  br label %147

147:                                              ; preds = %134, %118
  br label %148

148:                                              ; preds = %147, %65
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @FCP_RESID_UNDER, align 4
  %151 = load i32, i32* @FCP_RESID_OVER, align 4
  %152 = or i32 %150, %151
  %153 = and i32 %149, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %211

155:                                              ; preds = %148
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = icmp ult i64 %157, 20
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %256

160:                                              ; preds = %155
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @FCP_RESID_UNDER, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %206

165:                                              ; preds = %160
  %166 = load %struct.fcp_resp_ext*, %struct.fcp_resp_ext** %7, align 8
  %167 = getelementptr inbounds %struct.fcp_resp_ext, %struct.fcp_resp_ext* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @ntohl(i32 %168)
  %170 = ptrtoint i8* %169 to i64
  %171 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %172 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %171, i32 0, i32 3
  store i64 %170, i64* %172, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @FCP_SNS_LEN_VAL, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %198, label %177

177:                                              ; preds = %165
  %178 = load %struct.fcp_resp*, %struct.fcp_resp** %6, align 8
  %179 = getelementptr inbounds %struct.fcp_resp, %struct.fcp_resp* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %177
  %183 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %184 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %183, i32 0, i32 8
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = call i64 @scsi_bufflen(%struct.TYPE_4__* %185)
  %187 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %188 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = sub nsw i64 %186, %189
  %191 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %192 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %191, i32 0, i32 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp slt i64 %190, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %182
  br label %264

198:                                              ; preds = %182, %177, %165
  %199 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %200 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = sub nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %10, align 4
  br label %210

206:                                              ; preds = %160
  %207 = load i8*, i8** @FC_ERROR, align 8
  %208 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %209 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %208, i32 0, i32 5
  store i8* %207, i8** %209, align 8
  br label %210

210:                                              ; preds = %206, %198
  br label %211

211:                                              ; preds = %210, %148
  br label %212

212:                                              ; preds = %211, %60
  %213 = load i32, i32* @FC_SRB_RCV_STATUS, align 4
  %214 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %215 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %219 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %220, %221
  %223 = zext i1 %222 to i32
  %224 = call i64 @unlikely(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %253

226:                                              ; preds = %212
  %227 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %228 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %234 = call i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt* %233, i32 2)
  br label %270

235:                                              ; preds = %226
  %236 = load i8*, i8** @FC_DATA_OVRRUN, align 8
  %237 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %238 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %237, i32 0, i32 5
  store i8* %236, i8** %238, align 8
  %239 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %240 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %241 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %240, i32 0, i32 6
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %246 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %250 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @FC_FCP_DBG(%struct.fc_fcp_pkt* %239, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %244, i32 %247, i32 %248, i32 %251)
  br label %253

253:                                              ; preds = %235, %212
  %254 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %255 = call i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %254)
  br label %270

256:                                              ; preds = %159, %102, %80, %25
  %257 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %258 = load i32, i32* %13, align 4
  %259 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %260 = call i32 @fr_len(%struct.fc_frame* %259)
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* %12, align 4
  %263 = call i32 @FC_FCP_DBG(%struct.fc_fcp_pkt* %257, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %258, i32 %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %256, %197
  %265 = load i8*, i8** @FC_ERROR, align 8
  %266 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %267 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %266, i32 0, i32 5
  store i8* %265, i8** %267, align 8
  %268 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %269 = call i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %268)
  br label %270

270:                                              ; preds = %264, %253, %232, %108
  ret void
}

declare dso_local i32 @fr_len(%struct.fc_frame*) #1

declare dso_local i64 @fr_hdr(%struct.fc_frame*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fc_fcp_ddp_done(%struct.fc_fcp_pkt*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @scsi_bufflen(%struct.TYPE_4__*) #1

declare dso_local i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @FC_FCP_DBG(%struct.fc_fcp_pkt*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
