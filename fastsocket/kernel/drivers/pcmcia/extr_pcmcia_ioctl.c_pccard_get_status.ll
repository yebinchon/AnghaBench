; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_ioctl.c_pccard_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_ioctl.c_pccard_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.pcmcia_socket*, i32*)* }
%struct.pcmcia_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@SS_DETECT = common dso_local global i32 0, align 4
@CS_EVENT_CARD_DETECT = common dso_local global i64 0, align 8
@SS_CARDBUS = common dso_local global i32 0, align 4
@CS_EVENT_CB_DETECT = common dso_local global i64 0, align 8
@SS_3VCARD = common dso_local global i32 0, align 4
@CS_EVENT_3VCARD = common dso_local global i64 0, align 8
@SS_XVCARD = common dso_local global i32 0, align 4
@CS_EVENT_XVCARD = common dso_local global i64 0, align 8
@SOCKET_SUSPEND = common dso_local global i32 0, align 4
@CS_EVENT_PM_SUSPEND = common dso_local global i64 0, align 8
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CONFIG_LOCKED = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@INT_ZOOMED_VIDEO = common dso_local global i32 0, align 4
@PRESENT_PIN_REPLACE = common dso_local global i32 0, align 4
@CISREG_PRR = common dso_local global i32 0, align 4
@PRR_WP_STATUS = common dso_local global i32 0, align 4
@CS_EVENT_WRITE_PROTECT = common dso_local global i64 0, align 8
@PRR_READY_STATUS = common dso_local global i32 0, align 4
@CS_EVENT_READY_CHANGE = common dso_local global i64 0, align 8
@PRR_BVD2_STATUS = common dso_local global i32 0, align 4
@CS_EVENT_BATTERY_LOW = common dso_local global i64 0, align 8
@PRR_BVD1_STATUS = common dso_local global i32 0, align 4
@CS_EVENT_BATTERY_DEAD = common dso_local global i64 0, align 8
@PRESENT_EXT_STATUS = common dso_local global i32 0, align 4
@CISREG_ESR = common dso_local global i32 0, align 4
@ESR_REQ_ATTN = common dso_local global i32 0, align 4
@CS_EVENT_REQUEST_ATTENTION = common dso_local global i64 0, align 8
@SS_WRPROT = common dso_local global i32 0, align 4
@SS_BATDEAD = common dso_local global i32 0, align 4
@SS_BATWARN = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, %struct.pcmcia_device*, %struct.TYPE_6__*)* @pccard_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_get_status(%struct.pcmcia_socket* %0, %struct.pcmcia_device* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmcia_socket*, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %5, align 8
  store %struct.pcmcia_device* %1, %struct.pcmcia_device** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %14, align 8
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %17 = call i32 %15(%struct.pcmcia_socket* %16, i32* %9)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SS_DETECT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* @CS_EVENT_CARD_DETECT, align 8
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i64 [ %27, %26 ], [ 0, %28 ]
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = or i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @SS_CARDBUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i64, i64* @CS_EVENT_CB_DETECT, align 8
  br label %42

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i64 [ %40, %39 ], [ 0, %41 ]
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @SS_3VCARD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i64, i64* @CS_EVENT_3VCARD, align 8
  br label %55

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i64 [ %53, %52 ], [ 0, %54 ]
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SS_XVCARD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i64, i64* @CS_EVENT_XVCARD, align 8
  br label %68

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i64 [ %66, %65 ], [ 0, %67 ]
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %75 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SOCKET_SUSPEND, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %68
  %81 = load i64, i64* @CS_EVENT_PM_SUSPEND, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = or i64 %84, %81
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %80, %68
  %87 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %88 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SOCKET_PRESENT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %281

96:                                               ; preds = %86
  %97 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %98 = icmp ne %struct.pcmcia_device* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %101 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  br label %104

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi %struct.TYPE_7__* [ %102, %99 ], [ null, %103 ]
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %8, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = icmp ne %struct.TYPE_7__* %106, null
  br i1 %107, label %108, label %228

108:                                              ; preds = %104
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CONFIG_LOCKED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %228

115:                                              ; preds = %108
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %120 = load i32, i32* @INT_ZOOMED_VIDEO, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %118, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %228

124:                                              ; preds = %115
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @PRESENT_PIN_REPLACE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %192

131:                                              ; preds = %124
  %132 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CISREG_PRR, align 4
  %137 = add nsw i32 %135, %136
  %138 = ashr i32 %137, 1
  %139 = call i32 @pcmcia_read_cis_mem(%struct.pcmcia_socket* %132, i32 1, i32 %138, i32 1, i32* %10)
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @PRR_WP_STATUS, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = load i64, i64* @CS_EVENT_WRITE_PROTECT, align 8
  br label %147

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi i64 [ %145, %144 ], [ 0, %146 ]
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = or i64 %151, %148
  store i64 %152, i64* %150, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @PRR_READY_STATUS, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %147
  %158 = load i64, i64* @CS_EVENT_READY_CHANGE, align 8
  br label %160

159:                                              ; preds = %147
  br label %160

160:                                              ; preds = %159, %157
  %161 = phi i64 [ %158, %157 ], [ 0, %159 ]
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = or i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @PRR_BVD2_STATUS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %160
  %171 = load i64, i64* @CS_EVENT_BATTERY_LOW, align 8
  br label %173

172:                                              ; preds = %160
  br label %173

173:                                              ; preds = %172, %170
  %174 = phi i64 [ %171, %170 ], [ 0, %172 ]
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = or i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @PRR_BVD1_STATUS, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = load i64, i64* @CS_EVENT_BATTERY_DEAD, align 8
  br label %186

185:                                              ; preds = %173
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i64 [ %184, %183 ], [ 0, %185 ]
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = or i64 %190, %187
  store i64 %191, i64* %189, align 8
  br label %198

192:                                              ; preds = %124
  %193 = load i64, i64* @CS_EVENT_READY_CHANGE, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = or i64 %196, %193
  store i64 %197, i64* %195, align 8
  br label %198

198:                                              ; preds = %192, %186
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @PRESENT_EXT_STATUS, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %227

205:                                              ; preds = %198
  %206 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @CISREG_ESR, align 4
  %211 = add nsw i32 %209, %210
  %212 = ashr i32 %211, 1
  %213 = call i32 @pcmcia_read_cis_mem(%struct.pcmcia_socket* %206, i32 1, i32 %212, i32 1, i32* %10)
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @ESR_REQ_ATTN, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %205
  %219 = load i64, i64* @CS_EVENT_REQUEST_ATTENTION, align 8
  br label %221

220:                                              ; preds = %205
  br label %221

221:                                              ; preds = %220, %218
  %222 = phi i64 [ %219, %218 ], [ 0, %220 ]
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = or i64 %225, %222
  store i64 %226, i64* %224, align 8
  br label %227

227:                                              ; preds = %221, %198
  store i32 0, i32* %4, align 4
  br label %281

228:                                              ; preds = %115, %108, %104
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* @SS_WRPROT, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i64, i64* @CS_EVENT_WRITE_PROTECT, align 8
  br label %236

235:                                              ; preds = %228
  br label %236

236:                                              ; preds = %235, %233
  %237 = phi i64 [ %234, %233 ], [ 0, %235 ]
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = or i64 %240, %237
  store i64 %241, i64* %239, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* @SS_BATDEAD, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %236
  %247 = load i64, i64* @CS_EVENT_BATTERY_DEAD, align 8
  br label %249

248:                                              ; preds = %236
  br label %249

249:                                              ; preds = %248, %246
  %250 = phi i64 [ %247, %246 ], [ 0, %248 ]
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = or i64 %253, %250
  store i64 %254, i64* %252, align 8
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* @SS_BATWARN, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %249
  %260 = load i64, i64* @CS_EVENT_BATTERY_LOW, align 8
  br label %262

261:                                              ; preds = %249
  br label %262

262:                                              ; preds = %261, %259
  %263 = phi i64 [ %260, %259 ], [ 0, %261 ]
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = or i64 %266, %263
  store i64 %267, i64* %265, align 8
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* @SS_READY, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %262
  %273 = load i64, i64* @CS_EVENT_READY_CHANGE, align 8
  br label %275

274:                                              ; preds = %262
  br label %275

275:                                              ; preds = %274, %272
  %276 = phi i64 [ %273, %272 ], [ 0, %274 ]
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = or i64 %279, %276
  store i64 %280, i64* %278, align 8
  store i32 0, i32* %4, align 4
  br label %281

281:                                              ; preds = %275, %227, %93
  %282 = load i32, i32* %4, align 4
  ret i32 %282
}

declare dso_local i32 @pcmcia_read_cis_mem(%struct.pcmcia_socket*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
