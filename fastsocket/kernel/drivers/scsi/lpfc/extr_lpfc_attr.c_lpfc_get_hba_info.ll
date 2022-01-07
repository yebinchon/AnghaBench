; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_get_hba_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_get_hba_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i64, i32, %struct.TYPE_24__, %struct.TYPE_19__*, %struct.TYPE_18__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.lpfc_mbx_read_config = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_22__, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.lpfc_mbx_read_config }
%struct.TYPE_16__ = type { %struct.TYPE_26__, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64, i64, i64, i64, i64 }

@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@LPFC_BLOCK_MGMT_IO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MBX_READ_CONFIG = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4
@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_mbx_rd_conf_rpi_count = common dso_local global i32 0, align 4
@lpfc_mbx_rd_conf_xri_count = common dso_local global i32 0, align 4
@lpfc_mbx_rd_conf_vpi_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i64*, i64*, i64*, i64*, i64*, i64*)* @lpfc_get_hba_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_get_hba_info(%struct.lpfc_hba* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.lpfc_mbx_read_config*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %39, label %26

26:                                               ; preds = %7
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %26, %7
  store i32 0, i32* %8, align 4
  br label %258

40:                                               ; preds = %31
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @LPFC_BLOCK_MGMT_IO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %258

49:                                               ; preds = %40
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.TYPE_17__* @mempool_alloc(i32 %52, i32 %53)
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %17, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %56 = icmp ne %struct.TYPE_17__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %258

58:                                               ; preds = %49
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %60 = call i32 @memset(%struct.TYPE_17__* %59, i32 0, i32 72)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 1
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %18, align 8
  %64 = load i32, i32* @MBX_READ_CONFIG, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @OWN_HOST, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 5
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %58
  %81 = load i32, i32* @MBX_NOT_FINISHED, align 4
  store i32 %81, i32* %19, align 4
  br label %90

82:                                               ; preds = %58
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %87, 2
  %89 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %83, %struct.TYPE_17__* %84, i32 %88)
  store i32 %89, i32* %19, align 4
  br label %90

90:                                               ; preds = %82, %80
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* @MBX_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* @MBX_TIMEOUT, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @mempool_free(%struct.TYPE_17__* %99, i32 %102)
  br label %104

104:                                              ; preds = %98, %94
  store i32 0, i32* %8, align 4
  br label %258

105:                                              ; preds = %90
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @LPFC_SLI_REV4, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %191

111:                                              ; preds = %105
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  store %struct.lpfc_mbx_read_config* %116, %struct.lpfc_mbx_read_config** %16, align 8
  %117 = load i64*, i64** %12, align 8
  %118 = icmp ne i64* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load i32, i32* @lpfc_mbx_rd_conf_rpi_count, align 4
  %121 = load %struct.lpfc_mbx_read_config*, %struct.lpfc_mbx_read_config** %16, align 8
  %122 = call i64 @bf_get(i32 %120, %struct.lpfc_mbx_read_config* %121)
  %123 = load i64*, i64** %12, align 8
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %119, %111
  %125 = load i64*, i64** %13, align 8
  %126 = icmp ne i64* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i32, i32* @lpfc_mbx_rd_conf_rpi_count, align 4
  %129 = load %struct.lpfc_mbx_read_config*, %struct.lpfc_mbx_read_config** %16, align 8
  %130 = call i64 @bf_get(i32 %128, %struct.lpfc_mbx_read_config* %129)
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %130, %135
  %137 = load i64*, i64** %13, align 8
  store i64 %136, i64* %137, align 8
  br label %138

138:                                              ; preds = %127, %124
  %139 = load i64*, i64** %10, align 8
  %140 = icmp ne i64* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32, i32* @lpfc_mbx_rd_conf_xri_count, align 4
  %143 = load %struct.lpfc_mbx_read_config*, %struct.lpfc_mbx_read_config** %16, align 8
  %144 = call i64 @bf_get(i32 %142, %struct.lpfc_mbx_read_config* %143)
  %145 = load i64*, i64** %10, align 8
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %141, %138
  %147 = load i64*, i64** %11, align 8
  %148 = icmp ne i64* %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load i32, i32* @lpfc_mbx_rd_conf_xri_count, align 4
  %151 = load %struct.lpfc_mbx_read_config*, %struct.lpfc_mbx_read_config** %16, align 8
  %152 = call i64 @bf_get(i32 %150, %struct.lpfc_mbx_read_config* %151)
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %152, %157
  %159 = load i64*, i64** %11, align 8
  store i64 %158, i64* %159, align 8
  br label %160

160:                                              ; preds = %149, %146
  %161 = load i32, i32* @lpfc_mbx_rd_conf_vpi_count, align 4
  %162 = load %struct.lpfc_mbx_read_config*, %struct.lpfc_mbx_read_config** %16, align 8
  %163 = call i64 @bf_get(i32 %161, %struct.lpfc_mbx_read_config* %162)
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load i32, i32* @lpfc_mbx_rd_conf_vpi_count, align 4
  %167 = load %struct.lpfc_mbx_read_config*, %struct.lpfc_mbx_read_config** %16, align 8
  %168 = call i64 @bf_get(i32 %166, %struct.lpfc_mbx_read_config* %167)
  %169 = sub nsw i64 %168, 1
  br label %171

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170, %165
  %172 = phi i64 [ %169, %165 ], [ 0, %170 ]
  store i64 %172, i64* %20, align 8
  %173 = load i64*, i64** %14, align 8
  %174 = icmp ne i64* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i64, i64* %20, align 8
  %177 = load i64*, i64** %14, align 8
  store i64 %176, i64* %177, align 8
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i64*, i64** %15, align 8
  %180 = icmp ne i64* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load i64, i64* %20, align 8
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %182, %187
  %189 = load i64*, i64** %15, align 8
  store i64 %188, i64* %189, align 8
  br label %190

190:                                              ; preds = %181, %178
  br label %252

191:                                              ; preds = %105
  %192 = load i64*, i64** %12, align 8
  %193 = icmp ne i64* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %12, align 8
  store i64 %199, i64* %200, align 8
  br label %201

201:                                              ; preds = %194, %191
  %202 = load i64*, i64** %13, align 8
  %203 = icmp ne i64* %202, null
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %13, align 8
  store i64 %209, i64* %210, align 8
  br label %211

211:                                              ; preds = %204, %201
  %212 = load i64*, i64** %10, align 8
  %213 = icmp ne i64* %212, null
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load i64*, i64** %10, align 8
  store i64 %219, i64* %220, align 8
  br label %221

221:                                              ; preds = %214, %211
  %222 = load i64*, i64** %11, align 8
  %223 = icmp ne i64* %222, null
  br i1 %223, label %224, label %231

224:                                              ; preds = %221
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load i64*, i64** %11, align 8
  store i64 %229, i64* %230, align 8
  br label %231

231:                                              ; preds = %224, %221
  %232 = load i64*, i64** %14, align 8
  %233 = icmp ne i64* %232, null
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64*, i64** %14, align 8
  store i64 %239, i64* %240, align 8
  br label %241

241:                                              ; preds = %234, %231
  %242 = load i64*, i64** %15, align 8
  %243 = icmp ne i64* %242, null
  br i1 %243, label %244, label %251

244:                                              ; preds = %241
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64*, i64** %15, align 8
  store i64 %249, i64* %250, align 8
  br label %251

251:                                              ; preds = %244, %241
  br label %252

252:                                              ; preds = %251, %190
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %254 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %255 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @mempool_free(%struct.TYPE_17__* %253, i32 %256)
  store i32 1, i32* %8, align 4
  br label %258

258:                                              ; preds = %252, %104, %57, %48, %39
  %259 = load i32, i32* %8, align 4
  ret i32 %259
}

declare dso_local %struct.TYPE_17__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_mbx_read_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
