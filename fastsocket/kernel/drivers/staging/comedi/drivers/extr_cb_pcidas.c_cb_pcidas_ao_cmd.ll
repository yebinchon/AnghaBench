; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i64, i32, i32, i32, i32* }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DAC_CSR = common dso_local global i64 0, align 8
@DACFIFOCLR = common dso_local global i64 0, align 8
@TIMER_BASE = common dso_local global i32 0, align 4
@DAC8254 = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@DAC_PACER_INT = common dso_local global i32 0, align 4
@DAC_PACER_EXT_RISE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error setting dac pacer source\00", align 1
@cb_pcidas_ao_inttrig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @cb_pcidas_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %6, align 8
  %13 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 1
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %60, %2
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CR_CHAN(i32 %32)
  %34 = call i32 @DAC_CHAN_EN(i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CR_CHAN(i32 %45)
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CR_RANGE(i32 %53)
  %55 = call i32 @DAC_RANGE(i32 %46, i32 %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %25
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %19

63:                                               ; preds = %19
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DAC_CSR, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outw(i32 %66, i64 %71)
  %73 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DACFIFOCLR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outw(i32 0, i64 %81)
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %87, label %117

87:                                               ; preds = %63
  %88 = load i32, i32* @TIMER_BASE, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 5
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %88, i32* %90, i32* %92, i32* %94, i32 %97)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DAC8254, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @i8254_load(i64 %103, i32 0, i32 1, i32 %106, i32 2)
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DAC8254, align 8
  %112 = add nsw i64 %110, %111
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @i8254_load(i64 %112, i32 0, i32 2, i32 %115, i32 2)
  br label %117

117:                                              ; preds = %87, %63
  %118 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %119 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TRIG_COUNT, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = mul i32 %126, %129
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %123, %117
  %134 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %135 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %134, i32 0, i32 0
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @spin_lock_irqsave(i32* %135, i64 %136)
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %153 [
    i32 128, label %141
    i32 129, label %147
  ]

141:                                              ; preds = %133
  %142 = load i32, i32* @DAC_PACER_INT, align 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %160

147:                                              ; preds = %133
  %148 = load i32, i32* @DAC_PACER_EXT_RISE, align 4
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %160

153:                                              ; preds = %133
  %154 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %155 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %154, i32 0, i32 0
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  %158 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %159 = call i32 @comedi_error(%struct.comedi_device* %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %168

160:                                              ; preds = %147, %141
  %161 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %162 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %161, i32 0, i32 0
  %163 = load i64, i64* %9, align 8
  %164 = call i32 @spin_unlock_irqrestore(i32* %162, i64 %163)
  %165 = load i32, i32* @cb_pcidas_ao_inttrig, align 4
  %166 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %167 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %160, %153
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DAC_CHAN_EN(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @DAC_RANGE(i32, i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i8253_cascade_ns_to_timer_2div(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @i8254_load(i64, i32, i32, i32, i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
