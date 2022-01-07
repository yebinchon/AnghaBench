; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_init_target_ddb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_init_target_ddb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32*, i64, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i8* }
%struct.TYPE_7__ = type { %struct.smp_resp }
%struct.smp_resp = type { i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }
%struct.sas_end_device = type { i64 }

@DDB_TP_CONN_TYPE = common dso_local global i32 0, align 4
@INIT_CONN_TAG = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@DEST_SAS_ADDR = common dso_local global i32 0, align 4
@SEND_QUEUE_HEAD = common dso_local global i32 0, align 4
@CONN_MASK = common dso_local global i32 0, align 4
@SATA_OOB_MODE = common dso_local global i64 0, align 8
@OPEN_REQUIRED = common dso_local global i32 0, align 4
@SATA_DEV = common dso_local global i64 0, align 8
@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@SMP_RESPONSE = common dso_local global i64 0, align 8
@SMP_REPORT_PHY_SATA = common dso_local global i64 0, align 8
@SMP_RESP_FUNC_ACC = common dso_local global i64 0, align 8
@STP_AFFIL_POL = common dso_local global i32 0, align 4
@SUPPORTS_AFFIL = common dso_local global i32 0, align 4
@CONCURRENT_CONN_SUPP = common dso_local global i32 0, align 4
@EDGE_DEV = common dso_local global i64 0, align 8
@FANOUT_DEV = common dso_local global i64 0, align 8
@MAX_CCONN = common dso_local global i32 0, align 4
@NUM_CTX = common dso_local global i32 0, align 4
@SATA_PM = common dso_local global i64 0, align 8
@SATA_MULTIPORT = common dso_local global i32 0, align 4
@DDB_TARG_FLAGS = common dso_local global i32 0, align 4
@STP_CL_POL_NO_TX = common dso_local global i32 0, align 4
@DDB_TARG_FLAGS2 = common dso_local global i32 0, align 4
@EXEC_QUEUE_TAIL = common dso_local global i32 0, align 4
@SEND_QUEUE_TAIL = common dso_local global i32 0, align 4
@SISTER_DDB = common dso_local global i32 0, align 4
@SAS_END_DEV = common dso_local global i64 0, align 8
@ITNL_TIMEOUT = common dso_local global i32 0, align 4
@ITNL_TIMEOUT_CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @asd_init_target_ddb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_init_target_ddb(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_ha_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smp_resp*, align 8
  %9 = alloca %struct.sas_end_device*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %15, align 8
  store %struct.asd_ha_struct* %16, %struct.asd_ha_struct** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %18 = call i32 @asd_get_ddb(%struct.asd_ha_struct* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %284

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %28 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %27, i32 0, i32 8
  store i8* %26, i8** %28, align 8
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DDB_TP_CONN_TYPE, align 4
  %32 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %29, i32 %30, i32 0, i32 %31)
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %33, i32 %34, i32 1, i32 0)
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @INIT_CONN_TAG, align 4
  %39 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %36, i32 %37, i32 %38, i32 65535)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %58, %23
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @DEST_SAS_ADDR, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %51 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %45, i32 %46, i32 %49, i32 %56)
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %40

61:                                               ; preds = %40
  %62 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SEND_QUEUE_HEAD, align 4
  %65 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %62, i32 %63, i32 %64, i32 65535)
  %66 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %67 = call i32 @asd_set_ddb_type(%struct.domain_device* %66)
  %68 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @CONN_MASK, align 4
  %71 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %72 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %71, i32 0, i32 7
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %68, i32 %69, i32 %70, i32 %75)
  %77 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %78 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %77, i32 0, i32 7
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SATA_OOB_MODE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %182

84:                                               ; preds = %61
  %85 = load i32, i32* @OPEN_REQUIRED, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %89 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SATA_DEV, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %84
  %94 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %95 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %143

100:                                              ; preds = %93, %84
  %101 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %102 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store %struct.smp_resp* %103, %struct.smp_resp** %8, align 8
  %104 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %105 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SMP_RESPONSE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %100
  %110 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %111 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SMP_REPORT_PHY_SATA, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %142

115:                                              ; preds = %109
  %116 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %117 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SMP_RESP_FUNC_ACC, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %115
  %122 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %123 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @STP_AFFIL_POL, align 4
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %127, %121
  %132 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %133 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* @SUPPORTS_AFFIL, align 4
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %137, %131
  br label %142

142:                                              ; preds = %141, %115, %109, %100
  br label %181

143:                                              ; preds = %93
  %144 = load i32, i32* @CONCURRENT_CONN_SUPP, align 4
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  %147 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %148 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %168, label %151

151:                                              ; preds = %143
  %152 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %153 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @EDGE_DEV, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %159 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @FANOUT_DEV, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %157, %151
  %164 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @MAX_CCONN, align 4
  %167 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %164, i32 %165, i32 %166, i32 4)
  br label %176

168:                                              ; preds = %157, %143
  %169 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @MAX_CCONN, align 4
  %172 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %173 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %169, i32 %170, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %168, %163
  %177 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @NUM_CTX, align 4
  %180 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %177, i32 %178, i32 %179, i32 1)
  br label %181

181:                                              ; preds = %176, %142
  br label %182

182:                                              ; preds = %181, %61
  %183 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %184 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @SATA_PM, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load i32, i32* @SATA_MULTIPORT, align 4
  %190 = load i32, i32* %7, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %7, align 4
  br label %192

192:                                              ; preds = %188, %182
  %193 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @DDB_TARG_FLAGS, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %193, i32 %194, i32 %195, i32 %196)
  store i32 0, i32* %7, align 4
  %198 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %199 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %192
  %205 = load i32, i32* @STP_CL_POL_NO_TX, align 4
  %206 = load i32, i32* %7, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %204, %192
  %209 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @DDB_TARG_FLAGS2, align 4
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %209, i32 %210, i32 %211, i32 %212)
  %214 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @EXEC_QUEUE_TAIL, align 4
  %217 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %214, i32 %215, i32 %216, i32 65535)
  %218 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* @SEND_QUEUE_TAIL, align 4
  %221 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %218, i32 %219, i32 %220, i32 65535)
  %222 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* @SISTER_DDB, align 4
  %225 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %222, i32 %223, i32 %224, i32 65535)
  %226 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %227 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @SATA_DEV, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %238, label %231

231:                                              ; preds = %208
  %232 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %233 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %249

238:                                              ; preds = %231, %208
  %239 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %240 = call i32 @asd_init_sata(%struct.domain_device* %239)
  store i32 %240, i32* %5, align 4
  %241 = load i32, i32* %5, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @asd_free_ddb(%struct.asd_ha_struct* %244, i32 %245)
  %247 = load i32, i32* %5, align 4
  store i32 %247, i32* %2, align 4
  br label %284

248:                                              ; preds = %238
  br label %249

249:                                              ; preds = %248, %231
  %250 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %251 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @SAS_END_DEV, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %283

255:                                              ; preds = %249
  %256 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %257 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = call %struct.sas_end_device* @rphy_to_end_device(i32 %258)
  store %struct.sas_end_device* %259, %struct.sas_end_device** %9, align 8
  %260 = load %struct.sas_end_device*, %struct.sas_end_device** %9, align 8
  %261 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp sgt i64 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %255
  %265 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @ITNL_TIMEOUT, align 4
  %268 = load %struct.sas_end_device*, %struct.sas_end_device** %9, align 8
  %269 = getelementptr inbounds %struct.sas_end_device, %struct.sas_end_device* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @ITNL_TIMEOUT_CONST, align 8
  %272 = trunc i64 %271 to i32
  %273 = call i32 @min(i64 %270, i32 %272)
  %274 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %265, i32 %266, i32 %267, i32 %273)
  br label %282

275:                                              ; preds = %255
  %276 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* @ITNL_TIMEOUT, align 4
  %279 = load i64, i64* @ITNL_TIMEOUT_CONST, align 8
  %280 = trunc i64 %279 to i32
  %281 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %276, i32 %277, i32 %278, i32 %280)
  br label %282

282:                                              ; preds = %275, %264
  br label %283

283:                                              ; preds = %282, %249
  store i32 0, i32* %2, align 4
  br label %284

284:                                              ; preds = %283, %243, %21
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local i32 @asd_get_ddb(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct*, i32, i32, i32) #1

declare dso_local i32 @asd_ddbsite_write_word(%struct.asd_ha_struct*, i32, i32, i32) #1

declare dso_local i32 @asd_set_ddb_type(%struct.domain_device*) #1

declare dso_local i32 @asd_init_sata(%struct.domain_device*) #1

declare dso_local i32 @asd_free_ddb(%struct.asd_ha_struct*, i32) #1

declare dso_local %struct.sas_end_device* @rphy_to_end_device(i32) #1

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
