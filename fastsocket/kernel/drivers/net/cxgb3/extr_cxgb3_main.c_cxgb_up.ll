; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_cxgb_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_cxgb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_11__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@FULL_INIT_DONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"FW upgrade to %d.%d.%d %s\0A\00", align 1
@FW_VERSION_MAJOR = common dso_local global i32 0, align 4
@FW_VERSION_MINOR = common dso_local global i32 0, align 4
@FW_VERSION_MICRO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"TP upgrade to %d.%d.%d %s\0A\00", align 1
@TP_VERSION_MAJOR = common dso_local global i32 0, align 4
@TP_VERSION_MINOR = common dso_local global i32 0, align 4
@TP_VERSION_MICRO = common dso_local global i32 0, align 4
@A_TP_PARA_REG5 = common dso_local global i32 0, align 4
@F_RXDDPOFFINIT = common dso_local global i32 0, align 4
@A_ULPRX_TDDP_PSZ = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@NAPI_INIT = common dso_local global i32 0, align 4
@USING_MSIX = common dso_local global i32 0, align 4
@t3_async_intr_handler = common dso_local global i32 0, align 4
@USING_MSI = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@T3_REV_C = common dso_local global i64 0, align 8
@TP_PARITY_INIT = common dso_local global i32 0, align 4
@A_TP_INT_CAUSE = common dso_local global i32 0, align 4
@F_CMCACHEPERR = common dso_local global i32 0, align 4
@F_ARPLUTPERR = common dso_local global i32 0, align 4
@A_TP_INT_ENABLE = common dso_local global i32 0, align 4
@QUEUES_BOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to bind qsets, err %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"request_irq failed, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @cxgb_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_up(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FULL_INIT_DONE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %93, label %11

11:                                               ; preds = %1
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = call i32 @t3_check_fw_version(%struct.adapter* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = call i32 @upgrade_fw(%struct.adapter* %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = load i32, i32* @FW_VERSION_MAJOR, align 4
  %23 = load i32, i32* @FW_VERSION_MINOR, align 4
  %24 = load i32, i32* @FW_VERSION_MICRO, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 @CH_WARN(%struct.adapter* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i8* %28)
  br label %30

30:                                               ; preds = %18, %11
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = call i32 @t3_check_tpsram_version(%struct.adapter* %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = call i32 @update_tpsram(%struct.adapter* %38)
  store i32 %39, i32* %3, align 4
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = load i32, i32* @TP_VERSION_MAJOR, align 4
  %42 = load i32, i32* @TP_VERSION_MINOR, align 4
  %43 = load i32, i32* @TP_VERSION_MICRO, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @CH_WARN(%struct.adapter* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i8* %47)
  br label %49

49:                                               ; preds = %37, %30
  %50 = load %struct.adapter*, %struct.adapter** %2, align 8
  %51 = call i32 @t3_intr_clear(%struct.adapter* %50)
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = call i32 @t3_init_hw(%struct.adapter* %52, i32 0)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %252

57:                                               ; preds = %49
  %58 = load %struct.adapter*, %struct.adapter** %2, align 8
  %59 = load i32, i32* @A_TP_PARA_REG5, align 4
  %60 = load i32, i32* @F_RXDDPOFFINIT, align 4
  %61 = call i32 @t3_set_reg_field(%struct.adapter* %58, i32 %59, i32 0, i32 %60)
  %62 = load %struct.adapter*, %struct.adapter** %2, align 8
  %63 = load i32, i32* @A_ULPRX_TDDP_PSZ, align 4
  %64 = load i64, i64* @PAGE_SHIFT, align 8
  %65 = sub nsw i64 %64, 12
  %66 = call i32 @V_HPZ0(i64 %65)
  %67 = call i32 @t3_write_reg(%struct.adapter* %62, i32 %63, i32 %66)
  %68 = load %struct.adapter*, %struct.adapter** %2, align 8
  %69 = call i32 @setup_sge_qsets(%struct.adapter* %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %252

73:                                               ; preds = %57
  %74 = load %struct.adapter*, %struct.adapter** %2, align 8
  %75 = call i32 @setup_rss(%struct.adapter* %74)
  %76 = load %struct.adapter*, %struct.adapter** %2, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NAPI_INIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %73
  %83 = load %struct.adapter*, %struct.adapter** %2, align 8
  %84 = call i32 @init_napi(%struct.adapter* %83)
  br label %85

85:                                               ; preds = %82, %73
  %86 = load %struct.adapter*, %struct.adapter** %2, align 8
  %87 = call i32 @t3_start_sge_timers(%struct.adapter* %86)
  %88 = load i32, i32* @FULL_INIT_DONE, align 4
  %89 = load %struct.adapter*, %struct.adapter** %2, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %85, %1
  %94 = load %struct.adapter*, %struct.adapter** %2, align 8
  %95 = call i32 @t3_intr_clear(%struct.adapter* %94)
  %96 = load %struct.adapter*, %struct.adapter** %2, align 8
  %97 = getelementptr inbounds %struct.adapter, %struct.adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @USING_MSIX, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %138

102:                                              ; preds = %93
  %103 = load %struct.adapter*, %struct.adapter** %2, align 8
  %104 = call i32 @name_msix_vecs(%struct.adapter* %103)
  %105 = load %struct.adapter*, %struct.adapter** %2, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 5
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @t3_async_intr_handler, align 4
  %112 = load %struct.adapter*, %struct.adapter** %2, align 8
  %113 = getelementptr inbounds %struct.adapter, %struct.adapter* %112, i32 0, i32 5
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.adapter*, %struct.adapter** %2, align 8
  %119 = call i32 @request_irq(i32 %110, i32 %111, i32 0, i32 %117, %struct.adapter* %118)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %102
  br label %254

123:                                              ; preds = %102
  %124 = load %struct.adapter*, %struct.adapter** %2, align 8
  %125 = call i32 @request_msix_data_irqs(%struct.adapter* %124)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.adapter*, %struct.adapter** %2, align 8
  %130 = getelementptr inbounds %struct.adapter, %struct.adapter* %129, i32 0, i32 5
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.adapter*, %struct.adapter** %2, align 8
  %136 = call i32 @free_irq(i32 %134, %struct.adapter* %135)
  br label %254

137:                                              ; preds = %123
  br label %173

138:                                              ; preds = %93
  %139 = load %struct.adapter*, %struct.adapter** %2, align 8
  %140 = getelementptr inbounds %struct.adapter, %struct.adapter* %139, i32 0, i32 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.adapter*, %struct.adapter** %2, align 8
  %145 = load %struct.adapter*, %struct.adapter** %2, align 8
  %146 = getelementptr inbounds %struct.adapter, %struct.adapter* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @t3_intr_handler(%struct.adapter* %144, i32 %152)
  %154 = load %struct.adapter*, %struct.adapter** %2, align 8
  %155 = getelementptr inbounds %struct.adapter, %struct.adapter* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @USING_MSI, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %138
  br label %163

161:                                              ; preds = %138
  %162 = load i32, i32* @IRQF_SHARED, align 4
  br label %163

163:                                              ; preds = %161, %160
  %164 = phi i32 [ 0, %160 ], [ %162, %161 ]
  %165 = load %struct.adapter*, %struct.adapter** %2, align 8
  %166 = getelementptr inbounds %struct.adapter, %struct.adapter* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.adapter*, %struct.adapter** %2, align 8
  %169 = call i32 @request_irq(i32 %143, i32 %153, i32 %164, i32 %167, %struct.adapter* %168)
  store i32 %169, i32* %3, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %254

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172, %137
  %174 = load %struct.adapter*, %struct.adapter** %2, align 8
  %175 = call i32 @enable_all_napi(%struct.adapter* %174)
  %176 = load %struct.adapter*, %struct.adapter** %2, align 8
  %177 = call i32 @t3_sge_start(%struct.adapter* %176)
  %178 = load %struct.adapter*, %struct.adapter** %2, align 8
  %179 = call i32 @t3_intr_enable(%struct.adapter* %178)
  %180 = load %struct.adapter*, %struct.adapter** %2, align 8
  %181 = getelementptr inbounds %struct.adapter, %struct.adapter* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @T3_REV_C, align 8
  %185 = icmp sge i64 %183, %184
  br i1 %185, label %186, label %207

186:                                              ; preds = %173
  %187 = load %struct.adapter*, %struct.adapter** %2, align 8
  %188 = getelementptr inbounds %struct.adapter, %struct.adapter* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @TP_PARITY_INIT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %207, label %193

193:                                              ; preds = %186
  %194 = load %struct.adapter*, %struct.adapter** %2, align 8
  %195 = call i64 @is_offload(%struct.adapter* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %193
  %198 = load %struct.adapter*, %struct.adapter** %2, align 8
  %199 = call i64 @init_tp_parity(%struct.adapter* %198)
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load i32, i32* @TP_PARITY_INIT, align 4
  %203 = load %struct.adapter*, %struct.adapter** %2, align 8
  %204 = getelementptr inbounds %struct.adapter, %struct.adapter* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %197, %193, %186, %173
  %208 = load %struct.adapter*, %struct.adapter** %2, align 8
  %209 = getelementptr inbounds %struct.adapter, %struct.adapter* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @TP_PARITY_INIT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %207
  %215 = load %struct.adapter*, %struct.adapter** %2, align 8
  %216 = load i32, i32* @A_TP_INT_CAUSE, align 4
  %217 = load i32, i32* @F_CMCACHEPERR, align 4
  %218 = load i32, i32* @F_ARPLUTPERR, align 4
  %219 = or i32 %217, %218
  %220 = call i32 @t3_write_reg(%struct.adapter* %215, i32 %216, i32 %219)
  %221 = load %struct.adapter*, %struct.adapter** %2, align 8
  %222 = load i32, i32* @A_TP_INT_ENABLE, align 4
  %223 = call i32 @t3_write_reg(%struct.adapter* %221, i32 %222, i32 2143289343)
  br label %224

224:                                              ; preds = %214, %207
  %225 = load %struct.adapter*, %struct.adapter** %2, align 8
  %226 = getelementptr inbounds %struct.adapter, %struct.adapter* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @QUEUES_BOUND, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %251, label %231

231:                                              ; preds = %224
  %232 = load %struct.adapter*, %struct.adapter** %2, align 8
  %233 = call i32 @bind_qsets(%struct.adapter* %232)
  store i32 %233, i32* %4, align 4
  %234 = load i32, i32* %4, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %231
  %237 = load %struct.adapter*, %struct.adapter** %2, align 8
  %238 = load i32, i32* %4, align 4
  %239 = call i32 @CH_ERR(%struct.adapter* %237, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %238)
  %240 = load %struct.adapter*, %struct.adapter** %2, align 8
  %241 = call i32 @t3_intr_disable(%struct.adapter* %240)
  %242 = load %struct.adapter*, %struct.adapter** %2, align 8
  %243 = call i32 @free_irq_resources(%struct.adapter* %242)
  %244 = load i32, i32* %4, align 4
  store i32 %244, i32* %3, align 4
  br label %252

245:                                              ; preds = %231
  %246 = load i32, i32* @QUEUES_BOUND, align 4
  %247 = load %struct.adapter*, %struct.adapter** %2, align 8
  %248 = getelementptr inbounds %struct.adapter, %struct.adapter* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %245, %224
  br label %252

252:                                              ; preds = %254, %251, %236, %72, %56
  %253 = load i32, i32* %3, align 4
  ret i32 %253

254:                                              ; preds = %171, %128, %122
  %255 = load %struct.adapter*, %struct.adapter** %2, align 8
  %256 = load i32, i32* %3, align 4
  %257 = call i32 @CH_ERR(%struct.adapter* %255, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %256)
  br label %252
}

declare dso_local i32 @t3_check_fw_version(%struct.adapter*) #1

declare dso_local i32 @upgrade_fw(%struct.adapter*) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @t3_check_tpsram_version(%struct.adapter*) #1

declare dso_local i32 @update_tpsram(%struct.adapter*) #1

declare dso_local i32 @t3_intr_clear(%struct.adapter*) #1

declare dso_local i32 @t3_init_hw(%struct.adapter*, i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_HPZ0(i64) #1

declare dso_local i32 @setup_sge_qsets(%struct.adapter*) #1

declare dso_local i32 @setup_rss(%struct.adapter*) #1

declare dso_local i32 @init_napi(%struct.adapter*) #1

declare dso_local i32 @t3_start_sge_timers(%struct.adapter*) #1

declare dso_local i32 @name_msix_vecs(%struct.adapter*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.adapter*) #1

declare dso_local i32 @request_msix_data_irqs(%struct.adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.adapter*) #1

declare dso_local i32 @t3_intr_handler(%struct.adapter*, i32) #1

declare dso_local i32 @enable_all_napi(%struct.adapter*) #1

declare dso_local i32 @t3_sge_start(%struct.adapter*) #1

declare dso_local i32 @t3_intr_enable(%struct.adapter*) #1

declare dso_local i64 @is_offload(%struct.adapter*) #1

declare dso_local i64 @init_tp_parity(%struct.adapter*) #1

declare dso_local i32 @bind_qsets(%struct.adapter*) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i32) #1

declare dso_local i32 @t3_intr_disable(%struct.adapter*) #1

declare dso_local i32 @free_irq_resources(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
