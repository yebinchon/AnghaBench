; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i64, i32*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i64, i32, i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"premature interrupt\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"interrupt with no dma channel?\00", align 1
@DMA_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"interrupt while dma disabled?\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"residue > transfer size!\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@DAS1600_CONV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @das16_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das16_interrupt(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 3
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  store %struct.comedi_subdevice* %13, %struct.comedi_subdevice** %5, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = call i32 @comedi_error(%struct.comedi_device* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %210

21:                                               ; preds = %1
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load %struct.comedi_async*, %struct.comedi_async** %23, align 8
  store %struct.comedi_async* %24, %struct.comedi_async** %6, align 8
  %25 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %25, i32 0, i32 1
  store %struct.comedi_cmd* %26, %struct.comedi_cmd** %7, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = call i32 @comedi_error(%struct.comedi_device* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %210

34:                                               ; preds = %21
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_ENABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 1
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %210

51:                                               ; preds = %34
  %52 = call i64 (...) @claim_dma_lock()
  store i64 %52, i64* %3, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @clear_dma_ff(i64 %55)
  %57 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %58 = call i32 @disable_dma_on_even(%struct.comedi_device* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %51
  %65 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %66 = call i32 @comedi_error(%struct.comedi_device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %68 = load i32, i32* @COMEDI_CB_EOA, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  store i32 0, i32* %8, align 4
  br label %80

74:                                               ; preds = %51
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %74, %64
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TRIG_COUNT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* @COMEDI_CB_EOA, align 4
  %97 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %98 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %92, %86, %80
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %10, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  %109 = srem i32 %108, 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %118 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @TRIG_COUNT, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %101
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %122
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %135, %127, %122, %101
  %142 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %143 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @COMEDI_CB_EOA, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %190

148:                                              ; preds = %141
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 7
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @set_dma_addr(i64 %151, i32 %160)
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @set_dma_count(i64 %164, i32 %167)
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @enable_dma(i64 %171)
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 1024
  br i1 %176, label %177, label %189

177:                                              ; preds = %148
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %184 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @DAS1600_CONV, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @outb(i32 0, i64 %187)
  br label %189

189:                                              ; preds = %182, %177, %148
  br label %190

190:                                              ; preds = %189, %141
  %191 = load i64, i64* %3, align 8
  %192 = call i32 @release_dma_lock(i64 %191)
  %193 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %194 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %193, i32 0, i32 1
  %195 = load i64, i64* %4, align 8
  %196 = call i32 @spin_unlock_irqrestore(i32* %194, i64 %195)
  %197 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 6
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice* %197, i32 %204, i32 %205)
  %207 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %208 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %209 = call i32 @cfc_handle_events(%struct.comedi_device* %207, %struct.comedi_subdevice* %208)
  br label %210

210:                                              ; preds = %190, %45, %31, %18
  ret void
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DEBUG_PRINT(i8*) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @clear_dma_ff(i64) #1

declare dso_local i32 @disable_dma_on_even(%struct.comedi_device*) #1

declare dso_local i32 @set_dma_addr(i64, i32) #1

declare dso_local i32 @set_dma_count(i64, i32) #1

declare dso_local i32 @enable_dma(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @cfc_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
