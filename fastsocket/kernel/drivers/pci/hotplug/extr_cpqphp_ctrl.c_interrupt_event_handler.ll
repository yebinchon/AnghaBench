; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_interrupt_event_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_interrupt_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.TYPE_5__*, i32, i64, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.pci_func = type { i32 }
%struct.slot = type { i64, %struct.TYPE_6__, %struct.controller*, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"hp_slot %d, func %p, p_slot %p\0A\00", align 1
@INT_BUTTON_PRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"button pressed\0A\00", align 1
@INT_BUTTON_CANCEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"button cancel\0A\00", align 1
@BLINKINGOFF_STATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"turn on green LED\0A\00", align 1
@BLINKINGON_STATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"turn off green LED\0A\00", align 1
@msg_button_cancel = common dso_local global i32 0, align 4
@STATIC_STATE = common dso_local global i64 0, align 8
@INT_BUTTON_RELEASE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"button release\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"slot is on\0A\00", align 1
@msg_button_off = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"slot is off\0A\00", align 1
@msg_button_on = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"blink green LED and turn off amber\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@pushbutton_helper_thread = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"add_timer p_slot = %p\0A\00", align 1
@INT_POWER_FAULT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"power fault\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*)* @interrupt_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interrupt_event_handler(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_func*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.slot*, align 8
  store %struct.controller* %0, %struct.controller** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %8

8:                                                ; preds = %256, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %257

11:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %253, %11
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %256

15:                                               ; preds = %12
  %16 = load %struct.controller*, %struct.controller** %2, align 8
  %17 = getelementptr inbounds %struct.controller, %struct.controller* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %252

25:                                               ; preds = %15
  %26 = load %struct.controller*, %struct.controller** %2, align 8
  %27 = getelementptr inbounds %struct.controller, %struct.controller* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load %struct.controller*, %struct.controller** %2, align 8
  %35 = getelementptr inbounds %struct.controller, %struct.controller* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.controller*, %struct.controller** %2, align 8
  %39 = getelementptr inbounds %struct.controller, %struct.controller* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call %struct.pci_func* @cpqhp_slot_find(i32 %36, i64 %41, i32 0)
  store %struct.pci_func* %42, %struct.pci_func** %5, align 8
  %43 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %44 = icmp ne %struct.pci_func* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %25
  br label %258

46:                                               ; preds = %25
  %47 = load %struct.controller*, %struct.controller** %2, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.controller*, %struct.controller** %2, align 8
  %50 = getelementptr inbounds %struct.controller, %struct.controller* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = call %struct.slot* @cpqhp_find_slot(%struct.controller* %47, i64 %52)
  store %struct.slot* %53, %struct.slot** %7, align 8
  %54 = load %struct.slot*, %struct.slot** %7, align 8
  %55 = icmp ne %struct.slot* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %258

57:                                               ; preds = %46
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %60 = load %struct.slot*, %struct.slot** %7, align 8
  %61 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %58, %struct.pci_func* %59, %struct.slot* %60)
  %62 = load %struct.controller*, %struct.controller** %2, align 8
  %63 = getelementptr inbounds %struct.controller, %struct.controller* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @INT_BUTTON_PRESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %244

74:                                               ; preds = %57
  %75 = load %struct.controller*, %struct.controller** %2, align 8
  %76 = getelementptr inbounds %struct.controller, %struct.controller* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @INT_BUTTON_CANCEL, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %134

85:                                               ; preds = %74
  %86 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.slot*, %struct.slot** %7, align 8
  %88 = getelementptr inbounds %struct.slot, %struct.slot* %87, i32 0, i32 1
  %89 = call i32 @del_timer(%struct.TYPE_6__* %88)
  %90 = load %struct.controller*, %struct.controller** %2, align 8
  %91 = getelementptr inbounds %struct.controller, %struct.controller* %90, i32 0, i32 1
  %92 = call i32 @mutex_lock(i32* %91)
  %93 = load %struct.slot*, %struct.slot** %7, align 8
  %94 = getelementptr inbounds %struct.slot, %struct.slot* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @BLINKINGOFF_STATE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.controller*, %struct.controller** %2, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @green_LED_on(%struct.controller* %100, i64 %101)
  br label %115

103:                                              ; preds = %85
  %104 = load %struct.slot*, %struct.slot** %7, align 8
  %105 = getelementptr inbounds %struct.slot, %struct.slot* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BLINKINGON_STATE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %111 = load %struct.controller*, %struct.controller** %2, align 8
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @green_LED_off(%struct.controller* %111, i64 %112)
  br label %114

114:                                              ; preds = %109, %103
  br label %115

115:                                              ; preds = %114, %98
  %116 = load i32, i32* @msg_button_cancel, align 4
  %117 = load %struct.slot*, %struct.slot** %7, align 8
  %118 = getelementptr inbounds %struct.slot, %struct.slot* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @info(i32 %116, i32 %119)
  %121 = load i64, i64* @STATIC_STATE, align 8
  %122 = load %struct.slot*, %struct.slot** %7, align 8
  %123 = getelementptr inbounds %struct.slot, %struct.slot* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.controller*, %struct.controller** %2, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @amber_LED_off(%struct.controller* %124, i64 %125)
  %127 = load %struct.controller*, %struct.controller** %2, align 8
  %128 = call i32 @set_SOGO(%struct.controller* %127)
  %129 = load %struct.controller*, %struct.controller** %2, align 8
  %130 = call i32 @wait_for_ctrl_irq(%struct.controller* %129)
  %131 = load %struct.controller*, %struct.controller** %2, align 8
  %132 = getelementptr inbounds %struct.controller, %struct.controller* %131, i32 0, i32 1
  %133 = call i32 @mutex_unlock(i32* %132)
  br label %243

134:                                              ; preds = %74
  %135 = load %struct.controller*, %struct.controller** %2, align 8
  %136 = getelementptr inbounds %struct.controller, %struct.controller* %135, i32 0, i32 0
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @INT_BUTTON_RELEASE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %220

145:                                              ; preds = %134
  %146 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.controller*, %struct.controller** %2, align 8
  %148 = load i64, i64* %6, align 8
  %149 = call i64 @is_slot_enabled(%struct.controller* %147, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %145
  %152 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %153 = load i64, i64* @BLINKINGOFF_STATE, align 8
  %154 = load %struct.slot*, %struct.slot** %7, align 8
  %155 = getelementptr inbounds %struct.slot, %struct.slot* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load i32, i32* @msg_button_off, align 4
  %157 = load %struct.slot*, %struct.slot** %7, align 8
  %158 = getelementptr inbounds %struct.slot, %struct.slot* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @info(i32 %156, i32 %159)
  br label %171

161:                                              ; preds = %145
  %162 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %163 = load i64, i64* @BLINKINGON_STATE, align 8
  %164 = load %struct.slot*, %struct.slot** %7, align 8
  %165 = getelementptr inbounds %struct.slot, %struct.slot* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  %166 = load i32, i32* @msg_button_on, align 4
  %167 = load %struct.slot*, %struct.slot** %7, align 8
  %168 = getelementptr inbounds %struct.slot, %struct.slot* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @info(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %161, %151
  %172 = load %struct.controller*, %struct.controller** %2, align 8
  %173 = getelementptr inbounds %struct.controller, %struct.controller* %172, i32 0, i32 1
  %174 = call i32 @mutex_lock(i32* %173)
  %175 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %176 = load %struct.controller*, %struct.controller** %2, align 8
  %177 = load i64, i64* %6, align 8
  %178 = call i32 @amber_LED_off(%struct.controller* %176, i64 %177)
  %179 = load %struct.controller*, %struct.controller** %2, align 8
  %180 = load i64, i64* %6, align 8
  %181 = call i32 @green_LED_blink(%struct.controller* %179, i64 %180)
  %182 = load %struct.controller*, %struct.controller** %2, align 8
  %183 = call i32 @set_SOGO(%struct.controller* %182)
  %184 = load %struct.controller*, %struct.controller** %2, align 8
  %185 = call i32 @wait_for_ctrl_irq(%struct.controller* %184)
  %186 = load %struct.controller*, %struct.controller** %2, align 8
  %187 = getelementptr inbounds %struct.controller, %struct.controller* %186, i32 0, i32 1
  %188 = call i32 @mutex_unlock(i32* %187)
  %189 = load %struct.slot*, %struct.slot** %7, align 8
  %190 = getelementptr inbounds %struct.slot, %struct.slot* %189, i32 0, i32 1
  %191 = call i32 @init_timer(%struct.TYPE_6__* %190)
  %192 = load i64, i64* %6, align 8
  %193 = load %struct.slot*, %struct.slot** %7, align 8
  %194 = getelementptr inbounds %struct.slot, %struct.slot* %193, i32 0, i32 3
  store i64 %192, i64* %194, align 8
  %195 = load %struct.controller*, %struct.controller** %2, align 8
  %196 = load %struct.slot*, %struct.slot** %7, align 8
  %197 = getelementptr inbounds %struct.slot, %struct.slot* %196, i32 0, i32 2
  store %struct.controller* %195, %struct.controller** %197, align 8
  %198 = load i64, i64* @jiffies, align 8
  %199 = load i32, i32* @HZ, align 4
  %200 = mul nsw i32 5, %199
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %198, %201
  %203 = load %struct.slot*, %struct.slot** %7, align 8
  %204 = getelementptr inbounds %struct.slot, %struct.slot* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  store i64 %202, i64* %205, align 8
  %206 = load i32, i32* @pushbutton_helper_thread, align 4
  %207 = load %struct.slot*, %struct.slot** %7, align 8
  %208 = getelementptr inbounds %struct.slot, %struct.slot* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  store i32 %206, i32* %209, align 8
  %210 = load %struct.slot*, %struct.slot** %7, align 8
  %211 = ptrtoint %struct.slot* %210 to i64
  %212 = load %struct.slot*, %struct.slot** %7, align 8
  %213 = getelementptr inbounds %struct.slot, %struct.slot* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  store i64 %211, i64* %214, align 8
  %215 = load %struct.slot*, %struct.slot** %7, align 8
  %216 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), %struct.slot* %215)
  %217 = load %struct.slot*, %struct.slot** %7, align 8
  %218 = getelementptr inbounds %struct.slot, %struct.slot* %217, i32 0, i32 1
  %219 = call i32 @add_timer(%struct.TYPE_6__* %218)
  br label %242

220:                                              ; preds = %134
  %221 = load %struct.controller*, %struct.controller** %2, align 8
  %222 = getelementptr inbounds %struct.controller, %struct.controller* %221, i32 0, i32 0
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @INT_POWER_FAULT, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %220
  %232 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %241

233:                                              ; preds = %220
  %234 = load %struct.slot*, %struct.slot** %7, align 8
  %235 = icmp ne %struct.slot* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load %struct.controller*, %struct.controller** %2, align 8
  %238 = load %struct.slot*, %struct.slot** %7, align 8
  %239 = call i32 @update_slot_info(%struct.controller* %237, %struct.slot* %238)
  br label %240

240:                                              ; preds = %236, %233
  br label %241

241:                                              ; preds = %240, %231
  br label %242

242:                                              ; preds = %241, %171
  br label %243

243:                                              ; preds = %242, %115
  br label %244

244:                                              ; preds = %243, %72
  %245 = load %struct.controller*, %struct.controller** %2, align 8
  %246 = getelementptr inbounds %struct.controller, %struct.controller* %245, i32 0, i32 0
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %246, align 8
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  store i64 0, i64* %251, align 8
  store i32 1, i32* %4, align 4
  br label %252

252:                                              ; preds = %244, %15
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %3, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %3, align 4
  br label %12

256:                                              ; preds = %12
  br label %8

257:                                              ; preds = %8
  br label %258

258:                                              ; preds = %257, %56, %45
  ret void
}

declare dso_local %struct.pci_func* @cpqhp_slot_find(i32, i64, i32) #1

declare dso_local %struct.slot* @cpqhp_find_slot(%struct.controller*, i64) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @green_LED_on(%struct.controller*, i64) #1

declare dso_local i32 @green_LED_off(%struct.controller*, i64) #1

declare dso_local i32 @info(i32, i32) #1

declare dso_local i32 @amber_LED_off(%struct.controller*, i64) #1

declare dso_local i32 @set_SOGO(%struct.controller*) #1

declare dso_local i32 @wait_for_ctrl_irq(%struct.controller*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @is_slot_enabled(%struct.controller*, i64) #1

declare dso_local i32 @green_LED_blink(%struct.controller*, i64) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @update_slot_info(%struct.controller*, %struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
