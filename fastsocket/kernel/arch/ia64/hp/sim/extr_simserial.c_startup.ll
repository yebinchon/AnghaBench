; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_struct = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.async_struct*, %struct.async_struct*, i32, %struct.serial_state* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i64, i64 }
%struct.serial_state = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@IRQ_ports = common dso_local global %struct.async_struct** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@rs_interrupt_single = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"simserial\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_HI = common dso_local global i32 0, align 4
@ASYNC_SPD_VHI = common dso_local global i32 0, align 4
@ASYNC_SPD_SHI = common dso_local global i32 0, align 4
@ASYNC_SPD_WARP = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@RS_TIMER = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@timer_active = common dso_local global i32 0, align 4
@timer_table = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.async_struct*)* @startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startup(%struct.async_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.async_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.serial_state*, align 8
  %8 = alloca i64, align 8
  store %struct.async_struct* %0, %struct.async_struct** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %10 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %9, i32 0, i32 6
  %11 = load %struct.serial_state*, %struct.serial_state** %10, align 8
  store %struct.serial_state* %11, %struct.serial_state** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64 @get_zeroed_page(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %251

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %23 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @free_page(i64 %29)
  br label %247

31:                                               ; preds = %19
  %32 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %33 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %38 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %43 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = icmp ne %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @TTY_IO_ERROR, align 4
  %48 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %49 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = call i32 @set_bit(i32 %47, i32* %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @free_page(i64 %54)
  br label %247

56:                                               ; preds = %36
  %57 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %58 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @free_page(i64 %63)
  br label %71

65:                                               ; preds = %56
  %66 = load i64, i64* %8, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %69 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  br label %71

71:                                               ; preds = %65, %62
  %72 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %73 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %136

76:                                               ; preds = %71
  %77 = load %struct.async_struct**, %struct.async_struct*** @IRQ_ports, align 8
  %78 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %79 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.async_struct*, %struct.async_struct** %77, i64 %80
  %82 = load %struct.async_struct*, %struct.async_struct** %81, align 8
  %83 = icmp ne %struct.async_struct* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %76
  %85 = load %struct.async_struct**, %struct.async_struct*** @IRQ_ports, align 8
  %86 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %87 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.async_struct*, %struct.async_struct** %85, i64 %88
  %90 = load %struct.async_struct*, %struct.async_struct** %89, align 8
  %91 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %90, i32 0, i32 4
  %92 = load %struct.async_struct*, %struct.async_struct** %91, align 8
  %93 = icmp ne %struct.async_struct* %92, null
  br i1 %93, label %136, label %94

94:                                               ; preds = %84, %76
  %95 = load %struct.async_struct**, %struct.async_struct*** @IRQ_ports, align 8
  %96 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %97 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.async_struct*, %struct.async_struct** %95, i64 %98
  %100 = load %struct.async_struct*, %struct.async_struct** %99, align 8
  %101 = icmp ne %struct.async_struct* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %247

105:                                              ; preds = %94
  %106 = load i32, i32* @rs_interrupt_single, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105
  %108 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %109 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %113 = call i32 @IRQ_T(%struct.async_struct* %112)
  %114 = call i32 @request_irq(i64 %110, i32 %111, i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %107
  %118 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %119 = call i64 @capable(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %123 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = icmp ne %struct.TYPE_5__* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i32, i32* @TTY_IO_ERROR, align 4
  %128 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %129 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %128, i32 0, i32 1
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = call i32 @set_bit(i32 %127, i32* %131)
  br label %133

133:                                              ; preds = %126, %121
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %117
  br label %247

135:                                              ; preds = %107
  br label %136

136:                                              ; preds = %135, %84, %71
  %137 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %138 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %137, i32 0, i32 3
  store %struct.async_struct* null, %struct.async_struct** %138, align 8
  %139 = load %struct.async_struct**, %struct.async_struct*** @IRQ_ports, align 8
  %140 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %141 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.async_struct*, %struct.async_struct** %139, i64 %142
  %144 = load %struct.async_struct*, %struct.async_struct** %143, align 8
  %145 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %146 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %145, i32 0, i32 4
  store %struct.async_struct* %144, %struct.async_struct** %146, align 8
  %147 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %148 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %147, i32 0, i32 4
  %149 = load %struct.async_struct*, %struct.async_struct** %148, align 8
  %150 = icmp ne %struct.async_struct* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %136
  %152 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %153 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %154 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %153, i32 0, i32 4
  %155 = load %struct.async_struct*, %struct.async_struct** %154, align 8
  %156 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %155, i32 0, i32 3
  store %struct.async_struct* %152, %struct.async_struct** %156, align 8
  br label %157

157:                                              ; preds = %151, %136
  %158 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %159 = load %struct.async_struct**, %struct.async_struct*** @IRQ_ports, align 8
  %160 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %161 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.async_struct*, %struct.async_struct** %159, i64 %162
  store %struct.async_struct* %158, %struct.async_struct** %163, align 8
  %164 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %165 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %164, i32 0, i32 1
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = icmp ne %struct.TYPE_5__* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %157
  %169 = load i32, i32* @TTY_IO_ERROR, align 4
  %170 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %171 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = call i32 @clear_bit(i32 %169, i32* %173)
  br label %175

175:                                              ; preds = %168, %157
  %176 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %177 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %180 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  store i64 0, i64* %181, align 8
  %182 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %183 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %182, i32 0, i32 1
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = icmp ne %struct.TYPE_5__* %184, null
  br i1 %185, label %186, label %239

186:                                              ; preds = %175
  %187 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %188 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* @ASYNC_SPD_HI, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %186
  %195 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %196 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %195, i32 0, i32 1
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  store i32 57600, i32* %198, align 4
  br label %199

199:                                              ; preds = %194, %186
  %200 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %201 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %204 = and i32 %202, %203
  %205 = load i32, i32* @ASYNC_SPD_VHI, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %199
  %208 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %209 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %208, i32 0, i32 1
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  store i32 115200, i32* %211, align 4
  br label %212

212:                                              ; preds = %207, %199
  %213 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %214 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %217 = and i32 %215, %216
  %218 = load i32, i32* @ASYNC_SPD_SHI, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %222 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %221, i32 0, i32 1
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  store i32 230400, i32* %224, align 4
  br label %225

225:                                              ; preds = %220, %212
  %226 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %227 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %230 = and i32 %228, %229
  %231 = load i32, i32* @ASYNC_SPD_WARP, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %225
  %234 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %235 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %234, i32 0, i32 1
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  store i32 460800, i32* %237, align 4
  br label %238

238:                                              ; preds = %233, %225
  br label %239

239:                                              ; preds = %238, %175
  %240 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %241 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %242 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load i64, i64* %4, align 8
  %246 = call i32 @local_irq_restore(i64 %245)
  store i32 0, i32* %2, align 4
  br label %251

247:                                              ; preds = %134, %102, %53, %28
  %248 = load i64, i64* %4, align 8
  %249 = call i32 @local_irq_restore(i64 %248)
  %250 = load i32, i32* %5, align 4
  store i32 %250, i32* %2, align 4
  br label %251

251:                                              ; preds = %247, %239, %16
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, i32*) #1

declare dso_local i32 @IRQ_T(%struct.async_struct*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
