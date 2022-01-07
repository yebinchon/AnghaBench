; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_devmatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_devmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pcmcia_device_id = type { i32, i64, i64, i64, i64, i64, i32, i32* }

@PCMCIA_DEV_ID_MATCH_MANF_ID = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_CARD_ID = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_FUNCTION = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_PROD_ID1 = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_PROD_ID2 = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_PROD_ID3 = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_PROD_ID4 = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_DEVICE_NO = common dso_local global i32 0, align 4
@PCMCIA_DEV_ID_MATCH_FUNC_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"skipping FUNC_ID match until userspace interaction\0A\00", align 1
@PCMCIA_DEV_ID_MATCH_FAKE_CIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"device needs a fake CIS\0A\00", align 1
@PCMCIA_DEV_ID_MATCH_ANONYMOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.pcmcia_device_id*)* @pcmcia_devmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_devmatch(%struct.pcmcia_device* %0, %struct.pcmcia_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.pcmcia_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store %struct.pcmcia_device_id* %1, %struct.pcmcia_device_id** %5, align 8
  %7 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PCMCIA_DEV_ID_MATCH_MANF_ID, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %13
  store i32 0, i32* %3, align 4
  br label %328

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PCMCIA_DEV_ID_MATCH_CARD_ID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %35
  store i32 0, i32* %3, align 4
  br label %328

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %52 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PCMCIA_DEV_ID_MATCH_FUNCTION, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %62 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %328

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %50
  %68 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %69 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID1, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %67
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %76 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %75, i32 0, i32 9
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %328

82:                                               ; preds = %74
  %83 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %84 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %89 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %88, i32 0, i32 9
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @strcmp(i32 %87, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %328

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %67
  %98 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %99 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID2, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %97
  %105 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %106 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %105, i32 0, i32 9
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %328

112:                                              ; preds = %104
  %113 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %114 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %113, i32 0, i32 7
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %119 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %118, i32 0, i32 9
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @strcmp(i32 %117, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %328

126:                                              ; preds = %112
  br label %127

127:                                              ; preds = %126, %97
  %128 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %129 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID3, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %127
  %135 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %136 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %135, i32 0, i32 9
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %328

142:                                              ; preds = %134
  %143 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %144 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %143, i32 0, i32 7
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %149 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %148, i32 0, i32 9
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 2
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @strcmp(i32 %147, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %328

156:                                              ; preds = %142
  br label %157

157:                                              ; preds = %156, %127
  %158 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %159 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID4, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %157
  %165 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %166 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %165, i32 0, i32 9
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %328

172:                                              ; preds = %164
  %173 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %174 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %173, i32 0, i32 7
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %179 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %178, i32 0, i32 9
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 3
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @strcmp(i32 %177, i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %172
  store i32 0, i32* %3, align 4
  br label %328

186:                                              ; preds = %172
  br label %187

187:                                              ; preds = %186, %157
  %188 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %189 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @PCMCIA_DEV_ID_MATCH_DEVICE_NO, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %187
  %195 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %196 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %199 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %197, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  store i32 0, i32* %3, align 4
  br label %328

203:                                              ; preds = %194
  br label %204

204:                                              ; preds = %203, %187
  %205 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %206 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @PCMCIA_DEV_ID_MATCH_FUNC_ID, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %249

211:                                              ; preds = %204
  %212 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %213 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %218 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %221 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %219, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %216, %211
  store i32 0, i32* %3, align 4
  br label %328

225:                                              ; preds = %216
  %226 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %227 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @PCMCIA_DEV_ID_MATCH_DEVICE_NO, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  store i32 0, i32* %3, align 4
  br label %328

233:                                              ; preds = %225
  %234 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %235 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  store i32 0, i32* %3, align 4
  br label %328

239:                                              ; preds = %233
  %240 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %241 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %240, i32 0, i32 5
  %242 = call i32 @ds_dev_dbg(i32 0, i32* %241, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %243 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %244 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %243, i32 0, i32 11
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %239
  store i32 0, i32* %3, align 4
  br label %328

248:                                              ; preds = %239
  br label %249

249:                                              ; preds = %248, %204
  %250 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %251 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @PCMCIA_DEV_ID_MATCH_FAKE_CIS, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %281

256:                                              ; preds = %249
  %257 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %258 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %257, i32 0, i32 5
  %259 = call i32 @ds_dev_dbg(i32 0, i32* %258, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %260 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %261 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %260, i32 0, i32 10
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %256
  %267 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %268 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %269 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @pcmcia_load_firmware(%struct.pcmcia_device* %267, i32 %270)
  br label %272

272:                                              ; preds = %266, %256
  %273 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %274 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %273, i32 0, i32 10
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %272
  store i32 0, i32* %3, align 4
  br label %328

280:                                              ; preds = %272
  br label %281

281:                                              ; preds = %280, %249
  %282 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %283 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @PCMCIA_DEV_ID_MATCH_ANONYMOUS, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %323

288:                                              ; preds = %281
  store i32 0, i32* %6, align 4
  br label %289

289:                                              ; preds = %303, %288
  %290 = load i32, i32* %6, align 4
  %291 = icmp slt i32 %290, 4
  br i1 %291, label %292, label %306

292:                                              ; preds = %289
  %293 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %294 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %293, i32 0, i32 9
  %295 = load i64*, i64** %294, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %292
  store i32 0, i32* %3, align 4
  br label %328

302:                                              ; preds = %292
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %6, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %6, align 4
  br label %289

306:                                              ; preds = %289
  %307 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %308 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %307, i32 0, i32 8
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %321, label %311

311:                                              ; preds = %306
  %312 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %313 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %312, i32 0, i32 7
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %321, label %316

316:                                              ; preds = %311
  %317 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %318 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %317, i32 0, i32 6
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %316, %311, %306
  store i32 0, i32* %3, align 4
  br label %328

322:                                              ; preds = %316
  br label %323

323:                                              ; preds = %322, %281
  %324 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %325 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %324, i32 0, i32 5
  %326 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %327 = call i32 @dev_set_drvdata(i32* %325, %struct.pcmcia_device_id* %326)
  store i32 1, i32* %3, align 4
  br label %328

328:                                              ; preds = %323, %321, %301, %279, %247, %238, %232, %224, %202, %185, %171, %155, %141, %125, %111, %95, %81, %65, %48, %26
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local i64 @strcmp(i32, i64) #1

declare dso_local i32 @ds_dev_dbg(i32, i32*, i8*) #1

declare dso_local i32 @pcmcia_load_firmware(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.pcmcia_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
