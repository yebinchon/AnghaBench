; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_handle_ao_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_handle_ao_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i64 }
%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd, i32 }
%struct.comedi_cmd = type { i64 }

@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@DAEMI = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@INT_ADCFIFO = common dso_local global i64 0, align 8
@DAC_CSR = common dso_local global i64 0, align 8
@DAC_EMPTY = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"dac fifo underflow\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@DAHFI = common dso_local global i32 0, align 4
@DACDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @handle_ao_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ao_interrupt(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %5, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.comedi_async*, %struct.comedi_async** %16, align 8
  store %struct.comedi_async* %17, %struct.comedi_async** %6, align 8
  %18 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 0
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %7, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %8, align 4
  %24 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DAEMI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %94

30:                                               ; preds = %2
  %31 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DAEMI, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @INT_ADCFIFO, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outw(i32 %39, i64 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DAC_CSR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @inw(i64 %54)
  %56 = load i32, i32* @DAC_EMPTY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %30
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TRIG_NONE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TRIG_COUNT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71, %59
  %77 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %78 = call i32 @comedi_error(%struct.comedi_device* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %81 = call i32 @cb_pcidas_ao_cancel(%struct.comedi_device* %79, %struct.comedi_subdevice* %80)
  %82 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %83 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %84 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %76, %71, %65
  %88 = load i32, i32* @COMEDI_CB_EOA, align 4
  %89 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %30
  br label %173

94:                                               ; preds = %2
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @DAHFI, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %172

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %9, align 4
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TRIG_COUNT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %112, %106, %99
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = mul i64 %122, 2
  %124 = trunc i64 %123 to i32
  %125 = call i32 @cfc_read_array_from_buffer(%struct.comedi_subdevice* %117, i32 %120, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = udiv i64 %127, 2
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %9, align 4
  %130 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %131 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TRIG_COUNT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %116
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %116
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @DACDATA, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @outsw(i64 %147, i32 %150, i32 %151)
  %153 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %154 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %153, i32 0, i32 0
  %155 = load i64, i64* %10, align 8
  %156 = call i32 @spin_lock_irqsave(i32* %154, i64 %155)
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @DAHFI, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @INT_ADCFIFO, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @outw(i32 %161, i64 %166)
  %168 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %169 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %168, i32 0, i32 0
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  br label %172

172:                                              ; preds = %142, %94
  br label %173

173:                                              ; preds = %172, %93
  %174 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %175 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %176 = call i32 @comedi_event(%struct.comedi_device* %174, %struct.comedi_subdevice* %175)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @cb_pcidas_ao_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @cfc_read_array_from_buffer(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @outsw(i64, i32, i32) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
