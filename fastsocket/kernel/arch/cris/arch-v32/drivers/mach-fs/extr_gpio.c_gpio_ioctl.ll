; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-fs/extr_gpio.c_gpio_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-fs/extr_gpio.c_gpio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.gpio_private = type { i64, i64, i64, i64, i64, i64 }

@ETRAXGPIO_IOCTYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@data_in = common dso_local global i32** null, align 8
@data_out = common dso_local global i64** null, align 8
@changeable_bits = common dso_local global i64* null, align 8
@alarm_lock = common dso_local global i32 0, align 4
@gpio_some_alarms = common dso_local global i32 0, align 4
@GPIO_MINOR_A = common dso_local global i64 0, align 8
@gpio_pa_high_alarms = common dso_local global i64 0, align 8
@gpio_pa_low_alarms = common dso_local global i64 0, align 8
@dir_oe = common dso_local global i32** null, align 8
@EPERM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GPIO_MINOR_LEDS = common dso_local global i64 0, align 8
@GPIO_MINOR_V = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @gpio_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.gpio_private*, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.gpio_private*
  store %struct.gpio_private* %18, %struct.gpio_private** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @_IOC_TYPE(i32 %19)
  %21 = load i64, i64* @ETRAXGPIO_IOCTYPE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %344

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @_IOC_NR(i32 %27)
  switch i32 %28, label %330 [
    i32 136, label %29
    i32 132, label %37
    i32 139, label %66
    i32 138, label %96
    i32 137, label %116
    i32 140, label %136
    i32 135, label %171
    i32 129, label %179
    i32 128, label %183
    i32 141, label %187
    i32 134, label %255
    i32 133, label %272
    i32 131, label %288
    i32 130, label %309
  ]

29:                                               ; preds = %26
  %30 = load i32**, i32*** @data_in, align 8
  %31 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %32 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32*, i32** %30, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %344

37:                                               ; preds = %26
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @local_irq_save(i64 %38)
  %40 = load i64**, i64*** @data_out, align 8
  %41 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %42 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64*, i64** %40, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64*, i64** @changeable_bits, align 8
  %49 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %50 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %47, %53
  %55 = load i64, i64* %12, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64**, i64*** @data_out, align 8
  %59 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %60 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64*, i64** %58, i64 %61
  %63 = load i64*, i64** %62, align 8
  store i64 %57, i64* %63, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  br label %343

66:                                               ; preds = %26
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @local_irq_save(i64 %67)
  %69 = load i64**, i64*** @data_out, align 8
  %70 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %71 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64*, i64** %69, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64*, i64** @changeable_bits, align 8
  %78 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %79 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = and i64 %76, %82
  %84 = xor i64 %83, -1
  %85 = load i64, i64* %12, align 8
  %86 = and i64 %85, %84
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64**, i64*** @data_out, align 8
  %89 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %90 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64*, i64** %88, i64 %91
  %93 = load i64*, i64** %92, align 8
  store i64 %87, i64* %93, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @local_irq_restore(i64 %94)
  br label %343

96:                                               ; preds = %26
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %99 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @spin_lock_irqsave(i32* @alarm_lock, i64 %102)
  store i32 1, i32* @gpio_some_alarms, align 4
  %104 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %105 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @GPIO_MINOR_A, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @gpio_pa_high_alarms, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* @gpio_pa_high_alarms, align 8
  br label %113

113:                                              ; preds = %109, %96
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* @alarm_lock, i64 %114)
  br label %343

116:                                              ; preds = %26
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %119 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = or i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @spin_lock_irqsave(i32* @alarm_lock, i64 %122)
  store i32 1, i32* @gpio_some_alarms, align 4
  %124 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %125 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @GPIO_MINOR_A, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %116
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* @gpio_pa_low_alarms, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* @gpio_pa_low_alarms, align 8
  br label %133

133:                                              ; preds = %129, %116
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* @alarm_lock, i64 %134)
  br label %343

136:                                              ; preds = %26
  %137 = load i64, i64* %9, align 8
  %138 = xor i64 %137, -1
  %139 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %140 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = and i64 %141, %138
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* %9, align 8
  %144 = xor i64 %143, -1
  %145 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %146 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = and i64 %147, %144
  store i64 %148, i64* %146, align 8
  %149 = load i64, i64* %10, align 8
  %150 = call i32 @spin_lock_irqsave(i32* @alarm_lock, i64 %149)
  %151 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %152 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @GPIO_MINOR_A, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %136
  %157 = load i64, i64* @gpio_pa_high_alarms, align 8
  %158 = load i64, i64* %9, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load i64, i64* @gpio_pa_low_alarms, align 8
  %163 = load i64, i64* %9, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161, %156
  br label %167

167:                                              ; preds = %166, %161
  br label %168

168:                                              ; preds = %167, %136
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* @alarm_lock, i64 %169)
  br label %343

171:                                              ; preds = %26
  %172 = load i32**, i32*** @dir_oe, align 8
  %173 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %174 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32*, i32** %172, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %5, align 4
  br label %344

179:                                              ; preds = %26
  %180 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call i32 @setget_input(%struct.gpio_private* %180, i64 %181)
  store i32 %182, i32* %5, align 4
  br label %344

183:                                              ; preds = %26
  %184 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %185 = load i64, i64* %9, align 8
  %186 = call i32 @setget_output(%struct.gpio_private* %184, i64 %185)
  store i32 %186, i32* %5, align 4
  br label %344

187:                                              ; preds = %26
  %188 = load i32**, i32*** @dir_oe, align 8
  %189 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %190 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i32*, i32** %188, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  store i64 %195, i64* %14, align 8
  %196 = load i64, i64* %9, align 8
  %197 = and i64 %196, 255
  %198 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %199 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %198, i32 0, i32 3
  store i64 %197, i64* %199, align 8
  %200 = load i64, i64* %9, align 8
  %201 = lshr i64 %200, 8
  %202 = and i64 %201, 255
  %203 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %204 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %203, i32 0, i32 4
  store i64 %202, i64* %204, align 8
  %205 = load i64, i64* %9, align 8
  %206 = lshr i64 %205, 16
  %207 = and i64 %206, 1
  %208 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %209 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %208, i32 0, i32 5
  store i64 %207, i64* %209, align 8
  %210 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %211 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i64*, i64** @changeable_bits, align 8
  %214 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %215 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i64, i64* %213, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = and i64 %212, %218
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %247

221:                                              ; preds = %187
  %222 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %223 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = load i64*, i64** @changeable_bits, align 8
  %226 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %227 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds i64, i64* %225, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = and i64 %224, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %247

233:                                              ; preds = %221
  %234 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %235 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* %14, align 8
  %238 = and i64 %236, %237
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %233
  %241 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %242 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %14, align 8
  %245 = and i64 %243, %244
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %240, %233, %221, %187
  %248 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %249 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %248, i32 0, i32 3
  store i64 0, i64* %249, align 8
  %250 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %251 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %250, i32 0, i32 4
  store i64 0, i64* %251, align 8
  %252 = load i32, i32* @EPERM, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %5, align 4
  br label %344

254:                                              ; preds = %240
  br label %343

255:                                              ; preds = %26
  %256 = load i32**, i32*** @data_in, align 8
  %257 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %258 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds i32*, i32** %256, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  store i64 %263, i64* %11, align 8
  %264 = load i64, i64* %9, align 8
  %265 = inttoptr i64 %264 to i64*
  %266 = call i32 @copy_to_user(i64* %265, i64* %11, i32 8)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %255
  %269 = load i32, i32* @EFAULT, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %5, align 4
  br label %344

271:                                              ; preds = %255
  store i32 0, i32* %5, align 4
  br label %344

272:                                              ; preds = %26
  %273 = load i64**, i64*** @data_out, align 8
  %274 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %275 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds i64*, i64** %273, i64 %276
  %278 = load i64*, i64** %277, align 8
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %11, align 8
  %280 = load i64, i64* %9, align 8
  %281 = inttoptr i64 %280 to i64*
  %282 = call i32 @copy_to_user(i64* %281, i64* %11, i32 8)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %272
  %285 = load i32, i32* @EFAULT, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %5, align 4
  br label %344

287:                                              ; preds = %272
  br label %343

288:                                              ; preds = %26
  %289 = load i64, i64* %9, align 8
  %290 = inttoptr i64 %289 to i64*
  %291 = call i32 @copy_from_user(i64* %11, i64* %290, i32 8)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = load i32, i32* @EFAULT, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %5, align 4
  br label %344

296:                                              ; preds = %288
  %297 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %298 = load i64, i64* %11, align 8
  %299 = call i32 @setget_input(%struct.gpio_private* %297, i64 %298)
  %300 = sext i32 %299 to i64
  store i64 %300, i64* %11, align 8
  %301 = load i64, i64* %9, align 8
  %302 = inttoptr i64 %301 to i64*
  %303 = call i32 @copy_to_user(i64* %302, i64* %11, i32 8)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %296
  %306 = load i32, i32* @EFAULT, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %5, align 4
  br label %344

308:                                              ; preds = %296
  br label %343

309:                                              ; preds = %26
  %310 = load i64, i64* %9, align 8
  %311 = inttoptr i64 %310 to i64*
  %312 = call i32 @copy_from_user(i64* %11, i64* %311, i32 8)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load i32, i32* @EFAULT, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %5, align 4
  br label %344

317:                                              ; preds = %309
  %318 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %319 = load i64, i64* %11, align 8
  %320 = call i32 @setget_output(%struct.gpio_private* %318, i64 %319)
  %321 = sext i32 %320 to i64
  store i64 %321, i64* %11, align 8
  %322 = load i64, i64* %9, align 8
  %323 = inttoptr i64 %322 to i64*
  %324 = call i32 @copy_to_user(i64* %323, i64* %11, i32 8)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %317
  %327 = load i32, i32* @EFAULT, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %5, align 4
  br label %344

329:                                              ; preds = %317
  br label %343

330:                                              ; preds = %26
  %331 = load %struct.gpio_private*, %struct.gpio_private** %13, align 8
  %332 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @GPIO_MINOR_LEDS, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %330
  %337 = load i32, i32* %8, align 4
  %338 = load i64, i64* %9, align 8
  %339 = call i32 @gpio_leds_ioctl(i32 %337, i64 %338)
  store i32 %339, i32* %5, align 4
  br label %344

340:                                              ; preds = %330
  %341 = load i32, i32* @EINVAL, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %5, align 4
  br label %344

343:                                              ; preds = %329, %308, %287, %254, %168, %133, %113, %66, %37
  store i32 0, i32* %5, align 4
  br label %344

344:                                              ; preds = %343, %340, %336, %326, %314, %305, %293, %284, %271, %268, %247, %183, %179, %171, %29, %23
  %345 = load i32, i32* %5, align 4
  ret i32 %345
}

declare dso_local i64 @_IOC_TYPE(i32) #1

declare dso_local i32 @_IOC_NR(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @setget_input(%struct.gpio_private*, i64) #1

declare dso_local i32 @setget_output(%struct.gpio_private*, i64) #1

declare dso_local i32 @copy_to_user(i64*, i64*, i32) #1

declare dso_local i32 @copy_from_user(i64*, i64*, i32) #1

declare dso_local i32 @gpio_leds_ioctl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
