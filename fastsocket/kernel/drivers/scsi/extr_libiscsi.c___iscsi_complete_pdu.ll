; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c___iscsi_complete_pdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c___iscsi_complete_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, i8*, %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_hdr = type { i32, i64, i32, i32 }
%struct.iscsi_task = type { i8* }
%struct.iscsi_nopin = type { i32 }

@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@RESERVED_ITT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"[op 0x%x cid %d itt 0x%x len %d]\0A\00", align 1
@ISCSI_ERR_PROTO = common dso_local global i32 0, align 4
@ISCSI_RESERVED_TAG = common dso_local global i32 0, align 4
@ISCSI_ERR_CONN_FAILED = common dso_local global i32 0, align 4
@ISCSI_ERR_BAD_OPCODE = common dso_local global i32 0, align 4
@ISCSI_ERR_BAD_ITT = common dso_local global i32 0, align 4
@ISCSI_TASK_COMPLETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %0, %struct.iscsi_hdr* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_hdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iscsi_task*, align 8
  %14 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 4
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %16, align 8
  store %struct.iscsi_session* %17, %struct.iscsi_session** %10, align 8
  %18 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load i8*, i8** @jiffies, align 8
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %27 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iscsi_verify_itt(%struct.iscsi_conn* %26, i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %243

35:                                               ; preds = %4
  %36 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %37 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RESERVED_ITT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @get_itt(i64 %44)
  store i32 %45, i32* %14, align 4
  br label %47

46:                                               ; preds = %35
  store i32 -1, i32* %14, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %110

58:                                               ; preds = %47
  %59 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %60 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %61 = bitcast %struct.iscsi_hdr* %60 to %struct.iscsi_nopin*
  %62 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %59, %struct.iscsi_nopin* %61)
  %63 = load i32, i32* %11, align 4
  switch i32 %63, label %107 [
    i32 134, label %64
    i32 132, label %82
    i32 137, label %88
  ]

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %68, i32* %12, align 4
  br label %109

69:                                               ; preds = %64
  %70 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %71 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ISCSI_RESERVED_TAG, align 4
  %74 = call i32 @cpu_to_be32(i32 %73)
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %109

77:                                               ; preds = %69
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %79 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %80 = bitcast %struct.iscsi_hdr* %79 to %struct.iscsi_nopin*
  %81 = call i32 @iscsi_send_nopout(%struct.iscsi_conn* %78, %struct.iscsi_nopin* %80)
  br label %109

82:                                               ; preds = %58
  %83 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %84 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @iscsi_handle_reject(%struct.iscsi_conn* %83, %struct.iscsi_hdr* %84, i8* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  br label %109

88:                                               ; preds = %58
  %89 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %90 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @be32_to_cpu(i32 %91)
  %93 = add nsw i32 %92, 1
  %94 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %95 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %97 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @iscsi_recv_pdu(i32 %98, %struct.iscsi_hdr* %99, i8* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %88
  %105 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %88
  br label %109

107:                                              ; preds = %58
  %108 = load i32, i32* @ISCSI_ERR_BAD_OPCODE, align 4
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %107, %106, %82, %77, %76, %67
  br label %225

110:                                              ; preds = %47
  %111 = load i32, i32* %11, align 4
  switch i32 %111, label %138 [
    i32 131, label %112
    i32 130, label %112
    i32 133, label %126
    i32 135, label %127
    i32 136, label %127
    i32 128, label %127
    i32 129, label %127
    i32 134, label %127
  ]

112:                                              ; preds = %110, %110
  %113 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %114 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %115 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call %struct.iscsi_task* @iscsi_itt_to_ctask(%struct.iscsi_conn* %113, i64 %116)
  store %struct.iscsi_task* %117, %struct.iscsi_task** %13, align 8
  %118 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %119 = icmp ne %struct.iscsi_task* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* @ISCSI_ERR_BAD_ITT, align 4
  store i32 %121, i32* %5, align 4
  br label %243

122:                                              ; preds = %112
  %123 = load i8*, i8** @jiffies, align 8
  %124 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %125 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %140

126:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %243

127:                                              ; preds = %110, %110, %110, %110, %110
  %128 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %129 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %130 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %128, i64 %131)
  store %struct.iscsi_task* %132, %struct.iscsi_task** %13, align 8
  %133 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %134 = icmp ne %struct.iscsi_task* %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %127
  %136 = load i32, i32* @ISCSI_ERR_BAD_ITT, align 4
  store i32 %136, i32* %5, align 4
  br label %243

137:                                              ; preds = %127
  br label %140

138:                                              ; preds = %110
  %139 = load i32, i32* @ISCSI_ERR_BAD_OPCODE, align 4
  store i32 %139, i32* %5, align 4
  br label %243

140:                                              ; preds = %137, %122
  %141 = load i32, i32* %11, align 4
  switch i32 %141, label %222 [
    i32 131, label %142
    i32 130, label %149
    i32 135, label %154
    i32 136, label %171
    i32 128, label %171
    i32 129, label %176
    i32 134, label %192
  ]

142:                                              ; preds = %140
  %143 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %144 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %145 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @iscsi_scsi_cmd_rsp(%struct.iscsi_conn* %143, %struct.iscsi_hdr* %144, %struct.iscsi_task* %145, i8* %146, i32 %147)
  br label %224

149:                                              ; preds = %140
  %150 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %151 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %152 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %153 = call i32 @iscsi_data_in_rsp(%struct.iscsi_conn* %150, %struct.iscsi_hdr* %151, %struct.iscsi_task* %152)
  br label %224

154:                                              ; preds = %140
  %155 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %156 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %157 = bitcast %struct.iscsi_hdr* %156 to %struct.iscsi_nopin*
  %158 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %155, %struct.iscsi_nopin* %157)
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %162, i32* %12, align 4
  br label %224

163:                                              ; preds = %154
  %164 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %165 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @be32_to_cpu(i32 %166)
  %168 = add nsw i32 %167, 1
  %169 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %170 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %227

171:                                              ; preds = %140, %140
  %172 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %173 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %174 = bitcast %struct.iscsi_hdr* %173 to %struct.iscsi_nopin*
  %175 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %172, %struct.iscsi_nopin* %174)
  br label %227

176:                                              ; preds = %140
  %177 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %178 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %179 = bitcast %struct.iscsi_hdr* %178 to %struct.iscsi_nopin*
  %180 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %177, %struct.iscsi_nopin* %179)
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %184, i32* %12, align 4
  br label %224

185:                                              ; preds = %176
  %186 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %187 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %188 = call i32 @iscsi_tmf_rsp(%struct.iscsi_conn* %186, %struct.iscsi_hdr* %187)
  %189 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %190 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  %191 = call i32 @iscsi_complete_task(%struct.iscsi_task* %189, i32 %190)
  br label %224

192:                                              ; preds = %140
  %193 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %194 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %195 = bitcast %struct.iscsi_hdr* %194 to %struct.iscsi_nopin*
  %196 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %193, %struct.iscsi_nopin* %195)
  %197 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %198 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ISCSI_RESERVED_TAG, align 4
  %201 = call i32 @cpu_to_be32(i32 %200)
  %202 = icmp ne i32 %199, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %192
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %203, %192
  %207 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %207, i32* %12, align 4
  br label %224

208:                                              ; preds = %203
  %209 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %210 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @be32_to_cpu(i32 %211)
  %213 = add nsw i32 %212, 1
  %214 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %215 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %217 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %218 = bitcast %struct.iscsi_hdr* %217 to %struct.iscsi_nopin*
  %219 = load i8*, i8** %8, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @iscsi_nop_out_rsp(%struct.iscsi_task* %216, %struct.iscsi_nopin* %218, i8* %219, i32 %220)
  store i32 %221, i32* %12, align 4
  br label %224

222:                                              ; preds = %140
  %223 = load i32, i32* @ISCSI_ERR_BAD_OPCODE, align 4
  store i32 %223, i32* %12, align 4
  br label %224

224:                                              ; preds = %222, %208, %206, %185, %183, %161, %149, %142
  br label %225

225:                                              ; preds = %224, %109
  %226 = load i32, i32* %12, align 4
  store i32 %226, i32* %5, align 4
  br label %243

227:                                              ; preds = %171, %163
  %228 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %229 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %232 = load i8*, i8** %8, align 8
  %233 = load i32, i32* %9, align 4
  %234 = call i64 @iscsi_recv_pdu(i32 %230, %struct.iscsi_hdr* %231, i8* %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  store i32 %237, i32* %12, align 4
  br label %238

238:                                              ; preds = %236, %227
  %239 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %240 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  %241 = call i32 @iscsi_complete_task(%struct.iscsi_task* %239, i32 %240)
  %242 = load i32, i32* %12, align 4
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %238, %225, %138, %135, %126, %120, %33
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i32 @iscsi_verify_itt(%struct.iscsi_conn*, i64) #1

declare dso_local i32 @get_itt(i64) #1

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.iscsi_session*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @iscsi_update_cmdsn(%struct.iscsi_session*, %struct.iscsi_nopin*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @iscsi_send_nopout(%struct.iscsi_conn*, %struct.iscsi_nopin*) #1

declare dso_local i32 @iscsi_handle_reject(%struct.iscsi_conn*, %struct.iscsi_hdr*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @iscsi_recv_pdu(i32, %struct.iscsi_hdr*, i8*, i32) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_ctask(%struct.iscsi_conn*, i64) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i64) #1

declare dso_local i32 @iscsi_scsi_cmd_rsp(%struct.iscsi_conn*, %struct.iscsi_hdr*, %struct.iscsi_task*, i8*, i32) #1

declare dso_local i32 @iscsi_data_in_rsp(%struct.iscsi_conn*, %struct.iscsi_hdr*, %struct.iscsi_task*) #1

declare dso_local i32 @iscsi_tmf_rsp(%struct.iscsi_conn*, %struct.iscsi_hdr*) #1

declare dso_local i32 @iscsi_complete_task(%struct.iscsi_task*, i32) #1

declare dso_local i32 @iscsi_nop_out_rsp(%struct.iscsi_task*, %struct.iscsi_nopin*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
