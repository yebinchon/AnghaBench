; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_ConfigCounterTimerWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_ConfigCounterTimerWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1500_CLK_SELECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"\0AThe option for input clock selection does not exist\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@APCI1500_COUNTER = common dso_local global i32 0, align 4
@APCI1500_TIMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\0AThis choice is not a timer nor a counter\0A\00", align 1
@APCI1500_CONTINUOUS = common dso_local global i32 0, align 4
@APCI1500_SINGLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"\0AThis option for single/continuous mode does not exist\0A\00", align 1
@APCI1500_ENABLE = common dso_local global i32 0, align 4
@APCI1500_DISABLE = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR1_MODE_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_Z8536_CONTROL_REGISTER = common dso_local global i64 0, align 8
@APCI1500_RW_CPT_TMR1_TIME_CST_LOW = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR1_TIME_CST_HIGH = common dso_local global i32 0, align 4
@APCI1500_RW_MASTER_CONFIGURATION_CONTROL = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR1_CMD_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"\0AError in selection of interrupt enable or disable\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\0AError in selection of reload value\0A\00", align 1
@i_TimerCounterWatchdogInterrupt = common dso_local global i32 0, align 4
@i_TimerCounter1Init = common dso_local global i32 0, align 4
@APCI1500_SOFTWARE_TRIGGER = common dso_local global i32 0, align 4
@APCI1500_HARDWARE_TRIGGER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"\0AThis choice for software or hardware trigger does not exist\0A\00", align 1
@APCI1500_SOFTWARE_GATE = common dso_local global i32 0, align 4
@APCI1500_HARDWARE_GATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"\0AThis choice for software or hardware gate does not exist\0A\00", align 1
@APCI1500_RW_CPT_TMR2_MODE_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR2_TIME_CST_LOW = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR2_TIME_CST_HIGH = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR2_CMD_STATUS = common dso_local global i32 0, align 4
@i_TimerCounter2Init = common dso_local global i32 0, align 4
@APCI1500_WATCHDOG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"\0AThis choice is not a watchdog nor a counter\0A\00", align 1
@APCI1500_RW_CPT_TMR3_MODE_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR3_TIME_CST_LOW = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR3_TIME_CST_HIGH = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR3_CMD_STATUS = common dso_local global i32 0, align 4
@i_WatchdogCounter3Init = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"\0AThe specified counter\09imer option does not exist\0A\00", align 1
@i_CounterLogic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1500_ConfigCounterTimerWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @current, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %39

29:                                               ; preds = %24, %19, %4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @APCI1500_CLK_SELECT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outw(i32 %32, i64 %37)
  br label %49

39:                                               ; preds = %24
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %694

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %685 [
    i32 130, label %53
    i32 129, label %236
    i32 128, label %459
  ]

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %65 [
    i32 0, label %57
    i32 1, label %61
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @APCI1500_COUNTER, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %58, i32* %60, align 4
  br label %69

61:                                               ; preds = %53
  %62 = load i32, i32* @APCI1500_TIMER, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %53
  %66 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %694

69:                                               ; preds = %61, %57
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %81 [
    i32 0, label %73
    i32 1, label %77
  ]

73:                                               ; preds = %69
  %74 = load i32, i32* @APCI1500_CONTINUOUS, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32 %74, i32* %76, align 4
  br label %85

77:                                               ; preds = %69
  %78 = load i32, i32* @APCI1500_SINGLE, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32 %78, i32* %80, align 4
  br label %85

81:                                               ; preds = %69
  %82 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %694

85:                                               ; preds = %77, %73
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %88, %91
  %93 = or i32 %92, 7
  store i32 %93, i32* %10, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp uge i32 %96, 0
  br i1 %97, label %98, label %228

98:                                               ; preds = %85
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp ule i32 %101, 65535
  br i1 %102, label %103, label %228

103:                                              ; preds = %98
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @APCI1500_ENABLE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 7
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @APCI1500_DISABLE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %223

115:                                              ; preds = %109, %103
  %116 = load i32, i32* @APCI1500_RW_CPT_TMR1_MODE_SPECIFICATION, align 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @outb(i32 %116, i64 %121)
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @outb(i32 %123, i64 %128)
  %130 = load i32, i32* @APCI1500_RW_CPT_TMR1_TIME_CST_LOW, align 4
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @outb(i32 %130, i64 %135)
  %137 = load i32*, i32** %9, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @outb(i32 %139, i64 %144)
  %146 = load i32, i32* @APCI1500_RW_CPT_TMR1_TIME_CST_HIGH, align 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @outb(i32 %146, i64 %151)
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = lshr i32 %155, 8
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  store i32 %156, i32* %158, align 4
  %159 = load i32*, i32** %9, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @outb(i32 %161, i64 %166)
  %168 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @outb(i32 %168, i64 %173)
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @inb(i64 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = or i32 %181, 64
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @outb(i32 %183, i64 %188)
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @outb(i32 %190, i64 %195)
  %197 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @outb(i32 %197, i64 %202)
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @outb(i32 0, i64 %208)
  %210 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 @outb(i32 %210, i64 %215)
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32 @outb(i32 2, i64 %221)
  br label %227

223:                                              ; preds = %109
  %224 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %5, align 4
  br label %694

227:                                              ; preds = %115
  br label %232

228:                                              ; preds = %98, %85
  %229 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %5, align 4
  br label %694

232:                                              ; preds = %227
  %233 = load i32*, i32** %9, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 7
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* @i_TimerCounterWatchdogInterrupt, align 4
  store i32 1, i32* @i_TimerCounter1Init, align 4
  br label %687

236:                                              ; preds = %49
  %237 = load i32*, i32** %9, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = load i32, i32* %238, align 4
  switch i32 %239, label %248 [
    i32 0, label %240
    i32 1, label %244
  ]

240:                                              ; preds = %236
  %241 = load i32, i32* @APCI1500_COUNTER, align 4
  %242 = load i32*, i32** %9, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  store i32 %241, i32* %243, align 4
  br label %252

244:                                              ; preds = %236
  %245 = load i32, i32* @APCI1500_TIMER, align 4
  %246 = load i32*, i32** %9, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  store i32 %245, i32* %247, align 4
  br label %252

248:                                              ; preds = %236
  %249 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %5, align 4
  br label %694

252:                                              ; preds = %244, %240
  %253 = load i32*, i32** %9, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 4
  %255 = load i32, i32* %254, align 4
  switch i32 %255, label %264 [
    i32 0, label %256
    i32 1, label %260
  ]

256:                                              ; preds = %252
  %257 = load i32, i32* @APCI1500_CONTINUOUS, align 4
  %258 = load i32*, i32** %9, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 4
  store i32 %257, i32* %259, align 4
  br label %268

260:                                              ; preds = %252
  %261 = load i32, i32* @APCI1500_SINGLE, align 4
  %262 = load i32*, i32** %9, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 4
  store i32 %261, i32* %263, align 4
  br label %268

264:                                              ; preds = %252
  %265 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %266 = load i32, i32* @EINVAL, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %5, align 4
  br label %694

268:                                              ; preds = %260, %256
  %269 = load i32*, i32** %9, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 5
  %271 = load i32, i32* %270, align 4
  switch i32 %271, label %280 [
    i32 0, label %272
    i32 1, label %276
  ]

272:                                              ; preds = %268
  %273 = load i32, i32* @APCI1500_SOFTWARE_TRIGGER, align 4
  %274 = load i32*, i32** %9, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 5
  store i32 %273, i32* %275, align 4
  br label %284

276:                                              ; preds = %268
  %277 = load i32, i32* @APCI1500_HARDWARE_TRIGGER, align 4
  %278 = load i32*, i32** %9, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 5
  store i32 %277, i32* %279, align 4
  br label %284

280:                                              ; preds = %268
  %281 = call i32 @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %5, align 4
  br label %694

284:                                              ; preds = %276, %272
  %285 = load i32*, i32** %9, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 6
  %287 = load i32, i32* %286, align 4
  switch i32 %287, label %296 [
    i32 0, label %288
    i32 1, label %292
  ]

288:                                              ; preds = %284
  %289 = load i32, i32* @APCI1500_SOFTWARE_GATE, align 4
  %290 = load i32*, i32** %9, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 6
  store i32 %289, i32* %291, align 4
  br label %300

292:                                              ; preds = %284
  %293 = load i32, i32* @APCI1500_HARDWARE_GATE, align 4
  %294 = load i32*, i32** %9, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 6
  store i32 %293, i32* %295, align 4
  br label %300

296:                                              ; preds = %284
  %297 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %298 = load i32, i32* @EINVAL, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %5, align 4
  br label %694

300:                                              ; preds = %292, %288
  %301 = load i32*, i32** %9, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 2
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %9, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 4
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %303, %306
  %308 = load i32*, i32** %9, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 5
  %310 = load i32, i32* %309, align 4
  %311 = or i32 %307, %310
  %312 = load i32*, i32** %9, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 6
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %311, %314
  %316 = or i32 %315, 7
  store i32 %316, i32* %10, align 4
  %317 = load i32*, i32** %9, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 3
  %319 = load i32, i32* %318, align 4
  %320 = icmp uge i32 %319, 0
  br i1 %320, label %321, label %451

321:                                              ; preds = %300
  %322 = load i32*, i32** %9, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 3
  %324 = load i32, i32* %323, align 4
  %325 = icmp ule i32 %324, 65535
  br i1 %325, label %326, label %451

326:                                              ; preds = %321
  %327 = load i32*, i32** %9, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 7
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @APCI1500_ENABLE, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %338, label %332

332:                                              ; preds = %326
  %333 = load i32*, i32** %9, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 7
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @APCI1500_DISABLE, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %446

338:                                              ; preds = %332, %326
  %339 = load i32, i32* @APCI1500_RW_CPT_TMR2_MODE_SPECIFICATION, align 4
  %340 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %344 = add nsw i64 %342, %343
  %345 = call i32 @outb(i32 %339, i64 %344)
  %346 = load i32, i32* %10, align 4
  %347 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %351 = add nsw i64 %349, %350
  %352 = call i32 @outb(i32 %346, i64 %351)
  %353 = load i32, i32* @APCI1500_RW_CPT_TMR2_TIME_CST_LOW, align 4
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %358 = add nsw i64 %356, %357
  %359 = call i32 @outb(i32 %353, i64 %358)
  %360 = load i32*, i32** %9, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 3
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %367 = add nsw i64 %365, %366
  %368 = call i32 @outb(i32 %362, i64 %367)
  %369 = load i32, i32* @APCI1500_RW_CPT_TMR2_TIME_CST_HIGH, align 4
  %370 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %374 = add nsw i64 %372, %373
  %375 = call i32 @outb(i32 %369, i64 %374)
  %376 = load i32*, i32** %9, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 3
  %378 = load i32, i32* %377, align 4
  %379 = lshr i32 %378, 8
  %380 = load i32*, i32** %9, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 3
  store i32 %379, i32* %381, align 4
  %382 = load i32*, i32** %9, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 3
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %389 = add nsw i64 %387, %388
  %390 = call i32 @outb(i32 %384, i64 %389)
  %391 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %392 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %396 = add nsw i64 %394, %395
  %397 = call i32 @outb(i32 %391, i64 %396)
  %398 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %402 = add nsw i64 %400, %401
  %403 = call i32 @inb(i64 %402)
  store i32 %403, i32* %11, align 4
  %404 = load i32, i32* %11, align 4
  %405 = or i32 %404, 32
  store i32 %405, i32* %11, align 4
  %406 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %407 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %411 = add nsw i64 %409, %410
  %412 = call i32 @outb(i32 %406, i64 %411)
  %413 = load i32, i32* %11, align 4
  %414 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %418 = add nsw i64 %416, %417
  %419 = call i32 @outb(i32 %413, i64 %418)
  %420 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %421 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %425 = add nsw i64 %423, %424
  %426 = call i32 @outb(i32 %420, i64 %425)
  %427 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %431 = add nsw i64 %429, %430
  %432 = call i32 @outb(i32 0, i64 %431)
  %433 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %434 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %435 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %438 = add nsw i64 %436, %437
  %439 = call i32 @outb(i32 %433, i64 %438)
  %440 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %441 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %444 = add nsw i64 %442, %443
  %445 = call i32 @outb(i32 2, i64 %444)
  br label %450

446:                                              ; preds = %332
  %447 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %448 = load i32, i32* @EINVAL, align 4
  %449 = sub nsw i32 0, %448
  store i32 %449, i32* %5, align 4
  br label %694

450:                                              ; preds = %338
  br label %455

451:                                              ; preds = %321, %300
  %452 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %453 = load i32, i32* @EINVAL, align 4
  %454 = sub nsw i32 0, %453
  store i32 %454, i32* %5, align 4
  br label %694

455:                                              ; preds = %450
  %456 = load i32*, i32** %9, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 7
  %458 = load i32, i32* %457, align 4
  store i32 %458, i32* @i_TimerCounterWatchdogInterrupt, align 4
  store i32 1, i32* @i_TimerCounter2Init, align 4
  br label %687

459:                                              ; preds = %49
  %460 = load i32*, i32** %9, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 2
  %462 = load i32, i32* %461, align 4
  switch i32 %462, label %471 [
    i32 0, label %463
    i32 1, label %467
  ]

463:                                              ; preds = %459
  %464 = load i32, i32* @APCI1500_COUNTER, align 4
  %465 = load i32*, i32** %9, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 2
  store i32 %464, i32* %466, align 4
  br label %475

467:                                              ; preds = %459
  %468 = load i32, i32* @APCI1500_WATCHDOG, align 4
  %469 = load i32*, i32** %9, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 2
  store i32 %468, i32* %470, align 4
  br label %475

471:                                              ; preds = %459
  %472 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %473 = load i32, i32* @EINVAL, align 4
  %474 = sub nsw i32 0, %473
  store i32 %474, i32* %5, align 4
  br label %694

475:                                              ; preds = %467, %463
  %476 = load i32*, i32** %9, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 4
  %478 = load i32, i32* %477, align 4
  switch i32 %478, label %487 [
    i32 0, label %479
    i32 1, label %483
  ]

479:                                              ; preds = %475
  %480 = load i32, i32* @APCI1500_CONTINUOUS, align 4
  %481 = load i32*, i32** %9, align 8
  %482 = getelementptr inbounds i32, i32* %481, i64 4
  store i32 %480, i32* %482, align 4
  br label %491

483:                                              ; preds = %475
  %484 = load i32, i32* @APCI1500_SINGLE, align 4
  %485 = load i32*, i32** %9, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 4
  store i32 %484, i32* %486, align 4
  br label %491

487:                                              ; preds = %475
  %488 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %489 = load i32, i32* @EINVAL, align 4
  %490 = sub nsw i32 0, %489
  store i32 %490, i32* %5, align 4
  br label %694

491:                                              ; preds = %483, %479
  %492 = load i32*, i32** %9, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 6
  %494 = load i32, i32* %493, align 4
  switch i32 %494, label %503 [
    i32 0, label %495
    i32 1, label %499
  ]

495:                                              ; preds = %491
  %496 = load i32, i32* @APCI1500_SOFTWARE_GATE, align 4
  %497 = load i32*, i32** %9, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 6
  store i32 %496, i32* %498, align 4
  br label %507

499:                                              ; preds = %491
  %500 = load i32, i32* @APCI1500_HARDWARE_GATE, align 4
  %501 = load i32*, i32** %9, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 6
  store i32 %500, i32* %502, align 4
  br label %507

503:                                              ; preds = %491
  %504 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %505 = load i32, i32* @EINVAL, align 4
  %506 = sub nsw i32 0, %505
  store i32 %506, i32* %5, align 4
  br label %694

507:                                              ; preds = %499, %495
  %508 = load i32*, i32** %9, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 2
  %510 = load i32, i32* %509, align 4
  %511 = load i32, i32* @APCI1500_WATCHDOG, align 4
  %512 = icmp eq i32 %510, %511
  br i1 %512, label %513, label %522

513:                                              ; preds = %507
  %514 = load i32*, i32** %9, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 2
  %516 = load i32, i32* %515, align 4
  %517 = load i32*, i32** %9, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 4
  %519 = load i32, i32* %518, align 4
  %520 = or i32 %516, %519
  %521 = or i32 %520, 84
  store i32 %521, i32* %10, align 4
  br label %535

522:                                              ; preds = %507
  %523 = load i32*, i32** %9, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 2
  %525 = load i32, i32* %524, align 4
  %526 = load i32*, i32** %9, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 4
  %528 = load i32, i32* %527, align 4
  %529 = or i32 %525, %528
  %530 = load i32*, i32** %9, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 6
  %532 = load i32, i32* %531, align 4
  %533 = or i32 %529, %532
  %534 = or i32 %533, 7
  store i32 %534, i32* %10, align 4
  br label %535

535:                                              ; preds = %522, %513
  %536 = load i32*, i32** %9, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 3
  %538 = load i32, i32* %537, align 4
  %539 = icmp uge i32 %538, 0
  br i1 %539, label %540, label %677

540:                                              ; preds = %535
  %541 = load i32*, i32** %9, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 3
  %543 = load i32, i32* %542, align 4
  %544 = icmp ule i32 %543, 65535
  br i1 %544, label %545, label %677

545:                                              ; preds = %540
  %546 = load i32*, i32** %9, align 8
  %547 = getelementptr inbounds i32, i32* %546, i64 7
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @APCI1500_ENABLE, align 4
  %550 = icmp eq i32 %548, %549
  br i1 %550, label %557, label %551

551:                                              ; preds = %545
  %552 = load i32*, i32** %9, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 7
  %554 = load i32, i32* %553, align 4
  %555 = load i32, i32* @APCI1500_DISABLE, align 4
  %556 = icmp eq i32 %554, %555
  br i1 %556, label %557, label %672

557:                                              ; preds = %551, %545
  %558 = load i32, i32* @APCI1500_RW_CPT_TMR3_MODE_SPECIFICATION, align 4
  %559 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %560 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %563 = add nsw i64 %561, %562
  %564 = call i32 @outb(i32 %558, i64 %563)
  %565 = load i32, i32* %10, align 4
  %566 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %567 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %570 = add nsw i64 %568, %569
  %571 = call i32 @outb(i32 %565, i64 %570)
  %572 = load i32, i32* @APCI1500_RW_CPT_TMR3_TIME_CST_LOW, align 4
  %573 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %574 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %573, i32 0, i32 0
  %575 = load i64, i64* %574, align 8
  %576 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %577 = add nsw i64 %575, %576
  %578 = call i32 @outb(i32 %572, i64 %577)
  %579 = load i32*, i32** %9, align 8
  %580 = getelementptr inbounds i32, i32* %579, i64 3
  %581 = load i32, i32* %580, align 4
  %582 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %583 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %582, i32 0, i32 0
  %584 = load i64, i64* %583, align 8
  %585 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %586 = add nsw i64 %584, %585
  %587 = call i32 @outb(i32 %581, i64 %586)
  %588 = load i32, i32* @APCI1500_RW_CPT_TMR3_TIME_CST_HIGH, align 4
  %589 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %590 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %589, i32 0, i32 0
  %591 = load i64, i64* %590, align 8
  %592 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %593 = add nsw i64 %591, %592
  %594 = call i32 @outb(i32 %588, i64 %593)
  %595 = load i32*, i32** %9, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 3
  %597 = load i32, i32* %596, align 4
  %598 = lshr i32 %597, 8
  %599 = load i32*, i32** %9, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 3
  store i32 %598, i32* %600, align 4
  %601 = load i32*, i32** %9, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 3
  %603 = load i32, i32* %602, align 4
  %604 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %605 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %604, i32 0, i32 0
  %606 = load i64, i64* %605, align 8
  %607 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %608 = add nsw i64 %606, %607
  %609 = call i32 @outb(i32 %603, i64 %608)
  %610 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %611 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %612 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %615 = add nsw i64 %613, %614
  %616 = call i32 @outb(i32 %610, i64 %615)
  %617 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %618 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %617, i32 0, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %621 = add nsw i64 %619, %620
  %622 = call i32 @inb(i64 %621)
  store i32 %622, i32* %11, align 4
  %623 = load i32, i32* %11, align 4
  %624 = or i32 %623, 16
  store i32 %624, i32* %11, align 4
  %625 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %626 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %627 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %626, i32 0, i32 0
  %628 = load i64, i64* %627, align 8
  %629 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %630 = add nsw i64 %628, %629
  %631 = call i32 @outb(i32 %625, i64 %630)
  %632 = load i32, i32* %11, align 4
  %633 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %634 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %637 = add nsw i64 %635, %636
  %638 = call i32 @outb(i32 %632, i64 %637)
  %639 = load i32*, i32** %9, align 8
  %640 = getelementptr inbounds i32, i32* %639, i64 2
  %641 = load i32, i32* %640, align 4
  %642 = load i32, i32* @APCI1500_COUNTER, align 4
  %643 = icmp eq i32 %641, %642
  br i1 %643, label %644, label %671

644:                                              ; preds = %557
  %645 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %646 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %647 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %646, i32 0, i32 0
  %648 = load i64, i64* %647, align 8
  %649 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %650 = add nsw i64 %648, %649
  %651 = call i32 @outb(i32 %645, i64 %650)
  %652 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %653 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %656 = add nsw i64 %654, %655
  %657 = call i32 @outb(i32 0, i64 %656)
  %658 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %659 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %660 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %659, i32 0, i32 0
  %661 = load i64, i64* %660, align 8
  %662 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %663 = add nsw i64 %661, %662
  %664 = call i32 @outb(i32 %658, i64 %663)
  %665 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %666 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %665, i32 0, i32 0
  %667 = load i64, i64* %666, align 8
  %668 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %669 = add nsw i64 %667, %668
  %670 = call i32 @outb(i32 2, i64 %669)
  br label %671

671:                                              ; preds = %644, %557
  br label %676

672:                                              ; preds = %551
  %673 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %674 = load i32, i32* @EINVAL, align 4
  %675 = sub nsw i32 0, %674
  store i32 %675, i32* %5, align 4
  br label %694

676:                                              ; preds = %671
  br label %681

677:                                              ; preds = %540, %535
  %678 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %679 = load i32, i32* @EINVAL, align 4
  %680 = sub nsw i32 0, %679
  store i32 %680, i32* %5, align 4
  br label %694

681:                                              ; preds = %676
  %682 = load i32*, i32** %9, align 8
  %683 = getelementptr inbounds i32, i32* %682, i64 7
  %684 = load i32, i32* %683, align 4
  store i32 %684, i32* @i_TimerCounterWatchdogInterrupt, align 4
  store i32 1, i32* @i_WatchdogCounter3Init, align 4
  br label %687

685:                                              ; preds = %49
  %686 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  br label %687

687:                                              ; preds = %685, %681, %455, %232
  %688 = load i32*, i32** %9, align 8
  %689 = getelementptr inbounds i32, i32* %688, i64 2
  %690 = load i32, i32* %689, align 4
  store i32 %690, i32* @i_CounterLogic, align 4
  %691 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %692 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 4
  store i32 %693, i32* %5, align 4
  br label %694

694:                                              ; preds = %687, %677, %672, %503, %487, %471, %451, %446, %296, %280, %264, %248, %228, %223, %81, %65, %44
  %695 = load i32, i32* %5, align 4
  ret i32 %695
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
