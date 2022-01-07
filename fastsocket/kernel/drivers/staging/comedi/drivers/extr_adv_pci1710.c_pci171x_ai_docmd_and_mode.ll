; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci171x_ai_docmd_and_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci171x_ai_docmd_and_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [58 x i8] c"adv_pci1710 EDBG: BGN: pci171x_ai_docmd_and_mode(%d,...)\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PCI171x_CLRFIFO = common dso_local global i64 0, align 8
@PCI171x_CLRINT = common dso_local global i64 0, align 8
@Control_CNT0 = common dso_local global i32 0, align 4
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@Control_ONEFH = common dso_local global i32 0, align 4
@this_board = common dso_local global %struct.TYPE_5__* null, align 8
@Control_PACER = common dso_local global i32 0, align 4
@Control_IRQEN = common dso_local global i32 0, align 4
@Control_GATE = common dso_local global i32 0, align 4
@Control_EXT = common dso_local global i32 0, align 4
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"adv_pci1710 EDBG: OSC base=%u div1=%u div2=%u timer=%u\0A\00", align 1
@PCI171x_CONTROL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"adv_pci1710 EDBG: END: pci171x_ai_docmd_and_mode(...)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.comedi_device*, %struct.comedi_subdevice*)* @pci171x_ai_docmd_and_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci171x_ai_docmd_and_mode(i32 %0, %struct.comedi_device* %1, %struct.comedi_subdevice* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.comedi_device* %1, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %2, %struct.comedi_subdevice** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = call i32 @start_pacer(%struct.comedi_device* %13, i32 -1, i32 0, i32 0)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 15
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 14
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @check_channel_list(%struct.comedi_device* %15, %struct.comedi_subdevice* %16, i32 %19, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ult i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %220

29:                                               ; preds = %3
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 15
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @setup_channel_list(%struct.comedi_device* %30, %struct.comedi_subdevice* %31, i32 %34, i32 %37, i32 %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCI171x_CLRFIFO, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 0, i64 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PCI171x_CLRINT, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i32 0, i64 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 13
  store i64 0, i64* %56, align 8
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 12
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @Control_CNT0, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %29
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  store i32 1, i32* %78, align 8
  br label %87

79:                                               ; preds = %29
  %80 = load i32, i32* @Control_ONEFH, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %79, %76
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %103

100:                                              ; preds = %92
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %5, align 4
  switch i32 %104, label %218 [
    i32 1, label %105
    i32 2, label %105
    i32 3, label %201
  ]

105:                                              ; preds = %103, %103
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 10
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %113, %105
  %120 = load i32, i32* @Control_PACER, align 4
  %121 = load i32, i32* @Control_IRQEN, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %5, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %152

129:                                              ; preds = %119
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @Control_PACER, align 4
  %136 = load i32, i32* @Control_ONEFH, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @Control_GATE, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* @Control_EXT, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 7
  store i32 1, i32* %151, align 4
  br label %155

152:                                              ; preds = %119
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 7
  store i32 0, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %129
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 11
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 10
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %165 = and i32 %163, %164
  %166 = call i32 @i8253_cascade_ns_to_timer(i32 %158, i32* %8, i32* %9, i32* %160, i32 %165)
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %169, i32 %170, i32 %171, i32 %174)
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %180 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @PCI171x_CONTROL, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @outw(i32 %178, i64 %183)
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 2
  br i1 %186, label %187, label %193

187:                                              ; preds = %155
  %188 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @start_pacer(%struct.comedi_device* %188, i32 %189, i32 %190, i32 %191)
  br label %200

193:                                              ; preds = %155
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 8
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 9
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %193, %187
  br label %218

201:                                              ; preds = %103
  %202 = load i32, i32* @Control_EXT, align 4
  %203 = load i32, i32* @Control_IRQEN, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %213 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @PCI171x_CONTROL, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @outw(i32 %211, i64 %216)
  br label %218

218:                                              ; preds = %103, %201, %200
  %219 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %218, %26
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @check_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @setup_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @i8253_cascade_ns_to_timer(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
