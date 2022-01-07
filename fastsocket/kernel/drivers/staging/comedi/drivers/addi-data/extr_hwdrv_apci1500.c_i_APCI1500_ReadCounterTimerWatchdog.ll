; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_ReadCounterTimerWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_ReadCounterTimerWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@i_TimerCounter1Init = common dso_local global i32 0, align 4
@i_TimerCounter1Enabled = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR1_CMD_STATUS = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1500_Z8536_CONTROL_REGISTER = common dso_local global i64 0, align 8
@APCI1500_R_CPT_TMR1_VALUE_HIGH = common dso_local global i32 0, align 4
@APCI1500_R_CPT_TMR1_VALUE_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\0ATimer/Counter1 not configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@i_TimerCounter2Init = common dso_local global i32 0, align 4
@i_TimerCounter2Enabled = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR2_CMD_STATUS = common dso_local global i32 0, align 4
@APCI1500_R_CPT_TMR2_VALUE_HIGH = common dso_local global i32 0, align 4
@APCI1500_R_CPT_TMR2_VALUE_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\0ATimer/Counter2 not configured\0A\00", align 1
@i_WatchdogCounter3Init = common dso_local global i32 0, align 4
@i_WatchdogCounter3Enabled = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR3_CMD_STATUS = common dso_local global i32 0, align 4
@APCI1500_R_CPT_TMR3_VALUE_HIGH = common dso_local global i32 0, align 4
@APCI1500_R_CPT_TMR3_VALUE_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"\0AWatchdogCounter3 not configured\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\0AThe choice of timer/counter/watchdog does not exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1500_ReadCounterTimerWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  switch i32 %13, label %236 [
    i32 130, label %14
    i32 129, label %88
    i32 128, label %162
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @i_TimerCounter1Init, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %83

17:                                               ; preds = %14
  %18 = load i32, i32* @i_TimerCounter1Enabled, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 12, i32* %10, align 4
  br label %22

21:                                               ; preds = %17
  store i32 8, i32* %10, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %23, i64 %28)
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i32 %30, i64 %35)
  %37 = load i32, i32* @APCI1500_R_CPT_TMR1_VALUE_HIGH, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %37, i64 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @inb(i64 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 65280
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @APCI1500_R_CPT_TMR1_VALUE_LOW, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outb(i32 %64, i64 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inb(i64 %78)
  %80 = or i32 %73, %79
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  br label %87

83:                                               ; preds = %14
  %84 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %244

87:                                               ; preds = %22
  br label %240

88:                                               ; preds = %4
  %89 = load i32, i32* @i_TimerCounter2Init, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %157

91:                                               ; preds = %88
  %92 = load i32, i32* @i_TimerCounter2Enabled, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 12, i32* %10, align 4
  br label %96

95:                                               ; preds = %91
  store i32 8, i32* %10, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @outb(i32 %97, i64 %102)
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @outb(i32 %104, i64 %109)
  %111 = load i32, i32* @APCI1500_R_CPT_TMR2_VALUE_HIGH, align 4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @outb(i32 %111, i64 %116)
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @inb(i64 %122)
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 65280
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @APCI1500_R_CPT_TMR2_VALUE_LOW, align 4
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @outb(i32 %138, i64 %143)
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @inb(i64 %152)
  %154 = or i32 %147, %153
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %154, i32* %156, align 4
  br label %161

157:                                              ; preds = %88
  %158 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %244

161:                                              ; preds = %96
  br label %240

162:                                              ; preds = %4
  %163 = load i32, i32* @i_WatchdogCounter3Init, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %231

165:                                              ; preds = %162
  %166 = load i32, i32* @i_WatchdogCounter3Enabled, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 12, i32* %10, align 4
  br label %170

169:                                              ; preds = %165
  store i32 8, i32* %10, align 4
  br label %170

170:                                              ; preds = %169, %168
  %171 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @outb(i32 %171, i64 %176)
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @outb(i32 %178, i64 %183)
  %185 = load i32, i32* @APCI1500_R_CPT_TMR3_VALUE_HIGH, align 4
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @outb(i32 %185, i64 %190)
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @inb(i64 %196)
  %198 = load i32*, i32** %9, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 %197, i32* %199, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %202, 8
  %204 = load i32*, i32** %9, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  store i32 %203, i32* %205, align 4
  %206 = load i32*, i32** %9, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, 65280
  %210 = load i32*, i32** %9, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @APCI1500_R_CPT_TMR3_VALUE_LOW, align 4
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @outb(i32 %212, i64 %217)
  %219 = load i32*, i32** %9, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @inb(i64 %226)
  %228 = or i32 %221, %227
  %229 = load i32*, i32** %9, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  store i32 %228, i32* %230, align 4
  br label %235

231:                                              ; preds = %162
  %232 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %5, align 4
  br label %244

235:                                              ; preds = %170
  br label %240

236:                                              ; preds = %4
  %237 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %5, align 4
  br label %244

240:                                              ; preds = %235, %161, %87
  %241 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %242 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %240, %236, %231, %157, %83
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
