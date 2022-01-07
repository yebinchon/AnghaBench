; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das800.c_das800_ai_do_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das800.c_das800_ai_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.comedi_device = type { i32, i64, i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [60 x i8] c"no irq assigned for das-800, cannot do hardware conversions\00", align 1
@SCAN_LIMITS = common dso_local global i32 0, align 4
@DAS800_GAIN = common dso_local global i64 0, align 8
@DAS800_SCAN_LIMITS = common dso_local global i64 0, align 8
@thisboard = common dso_local global %struct.TYPE_5__* null, align 8
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@EACS = common dso_local global i32 0, align 4
@IEOC = common dso_local global i32 0, align 4
@DTEN = common dso_local global i32 0, align 4
@CASC = common dso_local global i32 0, align 4
@ITE = common dso_local global i32 0, align 4
@TIMER_BASE = common dso_local global i32 0, align 4
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error setting up counters\00", align 1
@CONV_CONTROL = common dso_local global i32 0, align 4
@DAS800_CONV_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das800_ai_do_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das800_ai_do_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.comedi_async*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  store %struct.comedi_async* %15, %struct.comedi_async** %12, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = call i32 @comedi_error(%struct.comedi_device* %21, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %195

23:                                               ; preds = %2
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = call i32 @disable_das800(%struct.comedi_device* %24)
  %26 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %27 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CR_CHAN(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %35 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %33, %37
  %39 = sub nsw i32 %38, 1
  %40 = srem i32 %39, 8
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 3
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i32, i32* @SCAN_LIMITS, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DAS800_GAIN, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 %49, i64 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DAS800_SCAN_LIMITS, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i32 %56, i64 %61)
  %63 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %68 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CR_RANGE(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thisboard, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 12
  br i1 %77, label %78, label %84

78:                                               ; preds = %23
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 7
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %78, %23
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, 15
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DAS800_GAIN, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outb(i32 %87, i64 %92)
  %94 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %95 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %117 [
    i32 131, label %98
    i32 129, label %112
  ]

98:                                               ; preds = %84
  %99 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %100 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %104 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %102, %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  br label %118

112:                                              ; preds = %84
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 4
  br label %118

117:                                              ; preds = %84
  br label %118

118:                                              ; preds = %117, %112, %98
  store i32 0, i32* %10, align 4
  %119 = load i32, i32* @EACS, align 4
  %120 = load i32, i32* @IEOC, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %125 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 130
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = load i32, i32* @DTEN, align 4
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %129, %118
  %134 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %135 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  switch i32 %137, label %167 [
    i32 128, label %138
    i32 130, label %166
  ]

138:                                              ; preds = %133
  %139 = load i32, i32* @CASC, align 4
  %140 = load i32, i32* @ITE, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %10, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* @TIMER_BASE, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %150 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 6
  %152 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %153 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %157 = and i32 %155, %156
  %158 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %144, i32* %146, i32* %148, i32* %151, i32 %157)
  %159 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %160 = call i32 @das800_set_frequency(%struct.comedi_device* %159)
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %138
  %163 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %164 = call i32 @comedi_error(%struct.comedi_device* %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %195

165:                                              ; preds = %138
  br label %168

166:                                              ; preds = %133
  br label %168

167:                                              ; preds = %133
  br label %168

168:                                              ; preds = %167, %166, %165
  %169 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %170 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %169, i32 0, i32 0
  %171 = load i64, i64* %11, align 8
  %172 = call i32 @spin_lock_irqsave(i32* %170, i64 %171)
  %173 = load i32, i32* @CONV_CONTROL, align 4
  %174 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %175 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @DAS800_GAIN, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @outb(i32 %173, i64 %178)
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %182 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @DAS800_CONV_CONTROL, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @outb(i32 %180, i64 %185)
  %187 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %188 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %187, i32 0, i32 0
  %189 = load i64, i64* %11, align 8
  %190 = call i32 @spin_unlock_irqrestore(i32* %188, i64 %189)
  %191 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %192 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %191, i32 0, i32 0
  store i64 0, i64* %192, align 8
  %193 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %194 = call i32 @enable_das800(%struct.comedi_device* %193)
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %168, %162, %20
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @disable_das800(%struct.comedi_device*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @i8253_cascade_ns_to_timer_2div(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @das800_set_frequency(%struct.comedi_device*) #1

declare dso_local i32 @enable_das800(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
