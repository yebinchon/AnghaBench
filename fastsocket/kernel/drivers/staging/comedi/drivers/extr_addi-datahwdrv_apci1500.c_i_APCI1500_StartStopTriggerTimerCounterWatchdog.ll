; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1500.c_i_APCI1500_StartStopTriggerTimerCounterWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1500.c_i_APCI1500_StartStopTriggerTimerCounterWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@i_TimerCounter1Init = common dso_local global i32 0, align 4
@i_TimerCounterWatchdogInterrupt = common dso_local global i32 0, align 4
@i_TimerCounter1Enabled = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR1_CMD_STATUS = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1500_Z8536_CONTROL_REGISTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"\0ACounter/Timer1 not configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"\0AThe specified option for start/stop/trigger does not exist\0A\00", align 1
@i_TimerCounter2Init = common dso_local global i32 0, align 4
@i_TimerCounter2Enabled = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR2_CMD_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"\0ACounter/Timer2 not configured\0A\00", align 1
@i_WatchdogCounter3Init = common dso_local global i32 0, align 4
@i_WatchdogCounter3Enabled = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR3_CMD_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\0AWatchdog/Counter3 not configured\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\0ACounter3 not configured\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\0AWatchdog 3 not configured\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\0AWrong choice of watchdog/counter3\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\0AThe specified choice for counter/watchdog/timer does not exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1500_StartStopTriggerTimerCounterWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %282 [
    i32 133, label %14
    i32 132, label %93
    i32 131, label %172
  ]

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %88 [
    i32 130, label %18
    i32 129, label %46
    i32 128, label %60
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @i_TimerCounter1Init, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i32, i32* @i_TimerCounterWatchdogInterrupt, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 196, i32* %10, align 4
  br label %26

25:                                               ; preds = %21
  store i32 228, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %24
  store i32 1, i32* @i_TimerCounter1Enabled, align 4
  %27 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i32 %27, i64 %32)
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 %34, i64 %39)
  br label %45

41:                                               ; preds = %18
  %42 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %290

45:                                               ; preds = %26
  br label %92

46:                                               ; preds = %14
  %47 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb(i32 %47, i64 %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 0, i64 %58)
  store i32 0, i32* @i_TimerCounter1Enabled, align 4
  br label %92

60:                                               ; preds = %14
  %61 = load i32, i32* @i_TimerCounter1Init, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load i32, i32* @i_TimerCounter1Enabled, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 6, i32* %10, align 4
  br label %68

67:                                               ; preds = %63
  store i32 2, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outb(i32 %69, i64 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outb(i32 %76, i64 %81)
  br label %87

83:                                               ; preds = %60
  %84 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %290

87:                                               ; preds = %68
  br label %92

88:                                               ; preds = %14
  %89 = call i32 @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %290

92:                                               ; preds = %87, %46, %45
  br label %286

93:                                               ; preds = %4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %167 [
    i32 130, label %97
    i32 129, label %125
    i32 128, label %139
  ]

97:                                               ; preds = %93
  %98 = load i32, i32* @i_TimerCounter2Init, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = load i32, i32* @i_TimerCounterWatchdogInterrupt, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 196, i32* %10, align 4
  br label %105

104:                                              ; preds = %100
  store i32 228, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %103
  store i32 1, i32* @i_TimerCounter2Enabled, align 4
  %106 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @outb(i32 %106, i64 %111)
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @outb(i32 %113, i64 %118)
  br label %124

120:                                              ; preds = %97
  %121 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %290

124:                                              ; preds = %105
  br label %171

125:                                              ; preds = %93
  %126 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @outb(i32 %126, i64 %131)
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @outb(i32 0, i64 %137)
  store i32 0, i32* @i_TimerCounter2Enabled, align 4
  br label %171

139:                                              ; preds = %93
  %140 = load i32, i32* @i_TimerCounter2Init, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %162

142:                                              ; preds = %139
  %143 = load i32, i32* @i_TimerCounter2Enabled, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 6, i32* %10, align 4
  br label %147

146:                                              ; preds = %142
  store i32 2, i32* %10, align 4
  br label %147

147:                                              ; preds = %146, %145
  %148 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @outb(i32 %148, i64 %153)
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @outb(i32 %155, i64 %160)
  br label %166

162:                                              ; preds = %139
  %163 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %5, align 4
  br label %290

166:                                              ; preds = %147
  br label %171

167:                                              ; preds = %93
  %168 = call i32 @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %5, align 4
  br label %290

171:                                              ; preds = %166, %125, %124
  br label %286

172:                                              ; preds = %4
  %173 = load i32*, i32** %9, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  switch i32 %175, label %277 [
    i32 130, label %176
    i32 129, label %204
    i32 128, label %218
  ]

176:                                              ; preds = %172
  %177 = load i32, i32* @i_WatchdogCounter3Init, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %199

179:                                              ; preds = %176
  %180 = load i32, i32* @i_TimerCounterWatchdogInterrupt, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 196, i32* %10, align 4
  br label %184

183:                                              ; preds = %179
  store i32 228, i32* %10, align 4
  br label %184

184:                                              ; preds = %183, %182
  store i32 1, i32* @i_WatchdogCounter3Enabled, align 4
  %185 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @outb(i32 %185, i64 %190)
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @outb(i32 %192, i64 %197)
  br label %203

199:                                              ; preds = %176
  %200 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %5, align 4
  br label %290

203:                                              ; preds = %184
  br label %281

204:                                              ; preds = %172
  %205 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @outb(i32 %205, i64 %210)
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @outb(i32 0, i64 %216)
  store i32 0, i32* @i_WatchdogCounter3Enabled, align 4
  br label %281

218:                                              ; preds = %172
  %219 = load i32*, i32** %9, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  %221 = load i32, i32* %220, align 4
  switch i32 %221, label %272 [
    i32 0, label %222
    i32 1, label %250
  ]

222:                                              ; preds = %218
  %223 = load i32, i32* @i_WatchdogCounter3Init, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %245

225:                                              ; preds = %222
  %226 = load i32, i32* @i_WatchdogCounter3Enabled, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i32 6, i32* %10, align 4
  br label %230

229:                                              ; preds = %225
  store i32 2, i32* %10, align 4
  br label %230

230:                                              ; preds = %229, %228
  %231 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @outb(i32 %231, i64 %236)
  %238 = load i32, i32* %10, align 4
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @outb(i32 %238, i64 %243)
  br label %249

245:                                              ; preds = %222
  %246 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %247 = load i32, i32* @EINVAL, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %5, align 4
  br label %290

249:                                              ; preds = %230
  br label %276

250:                                              ; preds = %218
  %251 = load i32, i32* @i_WatchdogCounter3Init, align 4
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %267

253:                                              ; preds = %250
  %254 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @outb(i32 %254, i64 %259)
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %265 = add nsw i64 %263, %264
  %266 = call i32 @outb(i32 6, i64 %265)
  br label %271

267:                                              ; preds = %250
  %268 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %5, align 4
  br label %290

271:                                              ; preds = %253
  br label %276

272:                                              ; preds = %218
  %273 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %5, align 4
  br label %290

276:                                              ; preds = %271, %249
  br label %281

277:                                              ; preds = %172
  %278 = call i32 @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %279 = load i32, i32* @EINVAL, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %5, align 4
  br label %290

281:                                              ; preds = %276, %204, %203
  br label %286

282:                                              ; preds = %4
  %283 = call i32 @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  %284 = load i32, i32* @EINVAL, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %5, align 4
  br label %290

286:                                              ; preds = %281, %171, %92
  %287 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %288 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %286, %282, %277, %272, %267, %245, %199, %167, %162, %120, %88, %83, %41
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
