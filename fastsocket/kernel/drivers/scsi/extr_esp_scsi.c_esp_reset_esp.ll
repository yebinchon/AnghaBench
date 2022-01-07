; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_reset_esp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_reset_esp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ESP_CMD_RC = common dso_local global i32 0, align 4
@ESP_CMD_NULL = common dso_local global i32 0, align 4
@ESP_CMD_DMA = common dso_local global i32 0, align 4
@FAST = common dso_local global i32 0, align 4
@ESP_CONFIG2_FENAB = common dso_local global i32 0, align 4
@ESP_CFG2 = common dso_local global i32 0, align 4
@ESP_UID = common dso_local global i32 0, align 4
@ESP_CFG1 = common dso_local global i32 0, align 4
@ESP_CFG3 = common dso_local global i32 0, align 4
@ESP_CONFIG2_HME32 = common dso_local global i32 0, align 4
@ESP_CONFIG2_HMEFENAB = common dso_local global i32 0, align 4
@ESP_CONFIG3_FCLOCK = common dso_local global i32 0, align 4
@ESP_CONFIG3_OBPUSH = common dso_local global i32 0, align 4
@ESP_CONFIG3_IDBIT3 = common dso_local global i32 0, align 4
@ESP_CONFIG3_FCLK = common dso_local global i32 0, align 4
@ESP_FLAG_DIFFERENTIAL = common dso_local global i32 0, align 4
@ESP_CFACT = common dso_local global i32 0, align 4
@ESP_STP = common dso_local global i32 0, align 4
@ESP_SOFF = common dso_local global i32 0, align 4
@ESP_TIMEO = common dso_local global i32 0, align 4
@ESP_INTRPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_reset_esp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_reset_esp(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %7 = load %struct.esp*, %struct.esp** %2, align 8
  %8 = load i32, i32* @ESP_CMD_RC, align 4
  %9 = call i32 @scsi_esp_cmd(%struct.esp* %7, i32 %8)
  %10 = load %struct.esp*, %struct.esp** %2, align 8
  %11 = load i32, i32* @ESP_CMD_NULL, align 4
  %12 = load i32, i32* @ESP_CMD_DMA, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @scsi_esp_cmd(%struct.esp* %10, i32 %13)
  %15 = load %struct.esp*, %struct.esp** %2, align 8
  %16 = getelementptr inbounds %struct.esp, %struct.esp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FAST, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @ESP_CONFIG2_FENAB, align 4
  %22 = load i32, i32* @ESP_CFG2, align 4
  %23 = call i32 @esp_write8(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.esp*, %struct.esp** %2, align 8
  %26 = load i32, i32* @ESP_CMD_NULL, align 4
  %27 = load i32, i32* @ESP_CMD_DMA, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @scsi_esp_cmd(%struct.esp* %25, i32 %28)
  %30 = load %struct.esp*, %struct.esp** %2, align 8
  %31 = getelementptr inbounds %struct.esp, %struct.esp* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 35, %32
  %34 = sdiv i32 %33, 1000
  %35 = load %struct.esp*, %struct.esp** %2, align 8
  %36 = getelementptr inbounds %struct.esp, %struct.esp* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.esp*, %struct.esp** %2, align 8
  %38 = getelementptr inbounds %struct.esp, %struct.esp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FAST, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %24
  %43 = load i32, i32* @ESP_UID, align 4
  %44 = call i32 @esp_read8(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 248
  %47 = ashr i32 %46, 3
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.esp*, %struct.esp** %2, align 8
  %52 = getelementptr inbounds %struct.esp, %struct.esp* %51, i32 0, i32 0
  store i32 129, i32* %52, align 8
  br label %63

53:                                               ; preds = %42
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.esp*, %struct.esp** %2, align 8
  %58 = getelementptr inbounds %struct.esp, %struct.esp* %57, i32 0, i32 0
  store i32 128, i32* %58, align 8
  br label %62

59:                                               ; preds = %53
  %60 = load %struct.esp*, %struct.esp** %2, align 8
  %61 = getelementptr inbounds %struct.esp, %struct.esp* %60, i32 0, i32 0
  store i32 130, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %50
  %64 = load %struct.esp*, %struct.esp** %2, align 8
  %65 = getelementptr inbounds %struct.esp, %struct.esp* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 4, %66
  %68 = sdiv i32 %67, 1000
  %69 = load %struct.esp*, %struct.esp** %2, align 8
  %70 = getelementptr inbounds %struct.esp, %struct.esp* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %79

71:                                               ; preds = %24
  %72 = load %struct.esp*, %struct.esp** %2, align 8
  %73 = getelementptr inbounds %struct.esp, %struct.esp* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 5, %74
  %76 = sdiv i32 %75, 1000
  %77 = load %struct.esp*, %struct.esp** %2, align 8
  %78 = getelementptr inbounds %struct.esp, %struct.esp* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %63
  %80 = load %struct.esp*, %struct.esp** %2, align 8
  %81 = getelementptr inbounds %struct.esp, %struct.esp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 3
  %84 = ashr i32 %83, 2
  %85 = load %struct.esp*, %struct.esp** %2, align 8
  %86 = getelementptr inbounds %struct.esp, %struct.esp* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.esp*, %struct.esp** %2, align 8
  %88 = getelementptr inbounds %struct.esp, %struct.esp* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 3
  %91 = ashr i32 %90, 2
  %92 = load %struct.esp*, %struct.esp** %2, align 8
  %93 = getelementptr inbounds %struct.esp, %struct.esp* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.esp*, %struct.esp** %2, align 8
  %95 = getelementptr inbounds %struct.esp, %struct.esp* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ESP_CFG1, align 4
  %98 = call i32 @esp_write8(i32 %96, i32 %97)
  %99 = load %struct.esp*, %struct.esp** %2, align 8
  %100 = getelementptr inbounds %struct.esp, %struct.esp* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %250 [
    i32 133, label %102
    i32 132, label %103
    i32 131, label %109
    i32 128, label %128
    i32 129, label %136
    i32 130, label %219
  ]

102:                                              ; preds = %79
  br label %251

103:                                              ; preds = %79
  %104 = load %struct.esp*, %struct.esp** %2, align 8
  %105 = getelementptr inbounds %struct.esp, %struct.esp* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ESP_CFG2, align 4
  %108 = call i32 @esp_write8(i32 %106, i32 %107)
  br label %251

109:                                              ; preds = %79
  %110 = load %struct.esp*, %struct.esp** %2, align 8
  %111 = getelementptr inbounds %struct.esp, %struct.esp* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ESP_CFG2, align 4
  %114 = call i32 @esp_write8(i32 %112, i32 %113)
  %115 = load %struct.esp*, %struct.esp** %2, align 8
  %116 = getelementptr inbounds %struct.esp, %struct.esp* %115, i32 0, i32 14
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.esp*, %struct.esp** %2, align 8
  %122 = getelementptr inbounds %struct.esp, %struct.esp* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  %123 = load %struct.esp*, %struct.esp** %2, align 8
  %124 = getelementptr inbounds %struct.esp, %struct.esp* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ESP_CFG3, align 4
  %127 = call i32 @esp_write8(i32 %125, i32 %126)
  br label %251

128:                                              ; preds = %79
  %129 = load i32, i32* @ESP_CONFIG2_HME32, align 4
  %130 = load i32, i32* @ESP_CONFIG2_HMEFENAB, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.esp*, %struct.esp** %2, align 8
  %133 = getelementptr inbounds %struct.esp, %struct.esp* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %79, %128
  %137 = load %struct.esp*, %struct.esp** %2, align 8
  %138 = getelementptr inbounds %struct.esp, %struct.esp* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ESP_CFG2, align 4
  %141 = call i32 @esp_write8(i32 %139, i32 %140)
  %142 = load %struct.esp*, %struct.esp** %2, align 8
  %143 = getelementptr inbounds %struct.esp, %struct.esp* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 128
  br i1 %145, label %146, label %170

146:                                              ; preds = %136
  %147 = load %struct.esp*, %struct.esp** %2, align 8
  %148 = getelementptr inbounds %struct.esp, %struct.esp* %147, i32 0, i32 14
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* @ESP_CONFIG3_FCLOCK, align 4
  %154 = load i32, i32* @ESP_CONFIG3_OBPUSH, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load %struct.esp*, %struct.esp** %2, align 8
  %159 = getelementptr inbounds %struct.esp, %struct.esp* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = icmp sge i32 %160, 8
  br i1 %161, label %162, label %166

162:                                              ; preds = %146
  %163 = load i32, i32* @ESP_CONFIG3_IDBIT3, align 4
  %164 = load i32, i32* %5, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %162, %146
  %167 = load %struct.esp*, %struct.esp** %2, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @esp_set_all_config3(%struct.esp* %167, i32 %168)
  br label %183

170:                                              ; preds = %136
  %171 = load %struct.esp*, %struct.esp** %2, align 8
  %172 = getelementptr inbounds %struct.esp, %struct.esp* %171, i32 0, i32 14
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* @ESP_CONFIG3_FCLK, align 4
  %178 = load i32, i32* %6, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %6, align 4
  %180 = load %struct.esp*, %struct.esp** %2, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @esp_set_all_config3(%struct.esp* %180, i32 %181)
  br label %183

183:                                              ; preds = %170, %166
  %184 = load %struct.esp*, %struct.esp** %2, align 8
  %185 = getelementptr inbounds %struct.esp, %struct.esp* %184, i32 0, i32 14
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.esp*, %struct.esp** %2, align 8
  %191 = getelementptr inbounds %struct.esp, %struct.esp* %190, i32 0, i32 6
  store i32 %189, i32* %191, align 8
  %192 = load %struct.esp*, %struct.esp** %2, align 8
  %193 = getelementptr inbounds %struct.esp, %struct.esp* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ESP_CFG3, align 4
  %196 = call i32 @esp_write8(i32 %194, i32 %195)
  %197 = load %struct.esp*, %struct.esp** %2, align 8
  %198 = getelementptr inbounds %struct.esp, %struct.esp* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 128
  br i1 %200, label %201, label %204

201:                                              ; preds = %183
  %202 = load %struct.esp*, %struct.esp** %2, align 8
  %203 = getelementptr inbounds %struct.esp, %struct.esp* %202, i32 0, i32 8
  store i32 80, i32* %203, align 8
  br label %218

204:                                              ; preds = %183
  %205 = load %struct.esp*, %struct.esp** %2, align 8
  %206 = getelementptr inbounds %struct.esp, %struct.esp* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @ESP_FLAG_DIFFERENTIAL, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load %struct.esp*, %struct.esp** %2, align 8
  %213 = getelementptr inbounds %struct.esp, %struct.esp* %212, i32 0, i32 8
  store i32 0, i32* %213, align 8
  br label %217

214:                                              ; preds = %204
  %215 = load %struct.esp*, %struct.esp** %2, align 8
  %216 = getelementptr inbounds %struct.esp, %struct.esp* %215, i32 0, i32 8
  store i32 96, i32* %216, align 8
  br label %217

217:                                              ; preds = %214, %211
  br label %218

218:                                              ; preds = %217, %201
  br label %251

219:                                              ; preds = %79
  %220 = load %struct.esp*, %struct.esp** %2, align 8
  %221 = getelementptr inbounds %struct.esp, %struct.esp* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @ESP_CFG2, align 4
  %224 = call i32 @esp_write8(i32 %222, i32 %223)
  %225 = load %struct.esp*, %struct.esp** %2, align 8
  %226 = load %struct.esp*, %struct.esp** %2, align 8
  %227 = getelementptr inbounds %struct.esp, %struct.esp* %226, i32 0, i32 14
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @ESP_CONFIG3_FCLOCK, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @esp_set_all_config3(%struct.esp* %225, i32 %233)
  %235 = load %struct.esp*, %struct.esp** %2, align 8
  %236 = getelementptr inbounds %struct.esp, %struct.esp* %235, i32 0, i32 14
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.esp*, %struct.esp** %2, align 8
  %242 = getelementptr inbounds %struct.esp, %struct.esp* %241, i32 0, i32 6
  store i32 %240, i32* %242, align 8
  %243 = load %struct.esp*, %struct.esp** %2, align 8
  %244 = getelementptr inbounds %struct.esp, %struct.esp* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @ESP_CFG3, align 4
  %247 = call i32 @esp_write8(i32 %245, i32 %246)
  %248 = load %struct.esp*, %struct.esp** %2, align 8
  %249 = getelementptr inbounds %struct.esp, %struct.esp* %248, i32 0, i32 8
  store i32 32, i32* %249, align 8
  br label %251

250:                                              ; preds = %79
  br label %251

251:                                              ; preds = %250, %219, %218, %109, %103, %102
  %252 = load %struct.esp*, %struct.esp** %2, align 8
  %253 = getelementptr inbounds %struct.esp, %struct.esp* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @ESP_CFACT, align 4
  %256 = call i32 @esp_write8(i32 %254, i32 %255)
  %257 = load %struct.esp*, %struct.esp** %2, align 8
  %258 = getelementptr inbounds %struct.esp, %struct.esp* %257, i32 0, i32 11
  store i32 0, i32* %258, align 4
  %259 = load %struct.esp*, %struct.esp** %2, align 8
  %260 = getelementptr inbounds %struct.esp, %struct.esp* %259, i32 0, i32 11
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @ESP_STP, align 4
  %263 = call i32 @esp_write8(i32 %261, i32 %262)
  %264 = load %struct.esp*, %struct.esp** %2, align 8
  %265 = getelementptr inbounds %struct.esp, %struct.esp* %264, i32 0, i32 12
  store i32 0, i32* %265, align 8
  %266 = load %struct.esp*, %struct.esp** %2, align 8
  %267 = getelementptr inbounds %struct.esp, %struct.esp* %266, i32 0, i32 12
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @ESP_SOFF, align 4
  %270 = call i32 @esp_write8(i32 %268, i32 %269)
  %271 = load %struct.esp*, %struct.esp** %2, align 8
  %272 = getelementptr inbounds %struct.esp, %struct.esp* %271, i32 0, i32 13
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @ESP_TIMEO, align 4
  %275 = call i32 @esp_write8(i32 %273, i32 %274)
  %276 = load i32, i32* @ESP_INTRPT, align 4
  %277 = call i32 @esp_read8(i32 %276)
  %278 = call i32 @udelay(i32 100)
  ret void
}

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @esp_set_all_config3(%struct.esp*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
