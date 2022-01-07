; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_interrupt_pcl818_ai_mode13_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_interrupt_pcl818_ai_mode13_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i64, i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@PCL818_FI_INTCLR = common dso_local global i64 0, align 8
@PCL818_FI_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"A/D mode1/3 FIFO overflow!\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"A/D mode1/3 FIFO interrupt without data!\00", align 1
@PCL818_FI_DATALO = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"comedi: A/D mode1/3 FIFO - channel dropout %d!=%d !\0A\00", align 1
@PCL818_FI_DATAHI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_pcl818_ai_mode13_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_pcl818_ai_mode13_fifo(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.comedi_device*
  store %struct.comedi_device* %12, %struct.comedi_device** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i64 0
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %7, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCL818_FI_INTCLR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 0, i64 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCL818_FI_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inb(i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %2
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = call i32 @comedi_error(%struct.comedi_device* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %37 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %35, %struct.comedi_subdevice* %36)
  %38 = load i32, i32* @COMEDI_CB_EOA, align 4
  %39 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 8
  %47 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %49 = call i32 @comedi_event(%struct.comedi_device* %47, %struct.comedi_subdevice* %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %196

51:                                               ; preds = %2
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = call i32 @comedi_error(%struct.comedi_device* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %58, %struct.comedi_subdevice* %59)
  %61 = load i32, i32* @COMEDI_CB_EOA, align 4
  %62 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 8
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %72 = call i32 @comedi_event(%struct.comedi_device* %70, %struct.comedi_subdevice* %71)
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %3, align 4
  br label %196

74:                                               ; preds = %51
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 2
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 512, i32* %9, align 4
  br label %80

79:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %78
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %184, %80
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %187

85:                                               ; preds = %81
  %86 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PCL818_FI_DATALO, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @inb(i64 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 15
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %93, %101
  br i1 %102, label %103, label %131

103:                                              ; preds = %85
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, 15
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %113)
  %115 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %117 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %115, %struct.comedi_subdevice* %116)
  %118 = load i32, i32* @COMEDI_CB_EOA, align 4
  %119 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %120
  store i32 %126, i32* %124, align 8
  %127 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %128 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %129 = call i32 @comedi_event(%struct.comedi_device* %127, %struct.comedi_subdevice* %128)
  %130 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %130, i32* %3, align 4
  br label %196

131:                                              ; preds = %85
  %132 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %133 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = ashr i32 %135, 4
  %137 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %138 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PCL818_FI_DATAHI, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @inb(i64 %141)
  %143 = shl i32 %142, 4
  %144 = or i32 %136, %143
  %145 = call i32 @comedi_buf_put(%struct.TYPE_4__* %134, i32 %144)
  %146 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %131
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, -1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %152, %131
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %183, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %162
  %168 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %169 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %170 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %168, %struct.comedi_subdevice* %169)
  %171 = load i32, i32* @COMEDI_CB_EOA, align 4
  %172 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %172, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %171
  store i32 %177, i32* %175, align 8
  %178 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %179 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %180 = call i32 @comedi_event(%struct.comedi_device* %178, %struct.comedi_subdevice* %179)
  %181 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %181, i32* %3, align 4
  br label %196

182:                                              ; preds = %162
  br label %183

183:                                              ; preds = %182, %157
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %81

187:                                              ; preds = %81
  %188 = load i32, i32* %9, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %192 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %193 = call i32 @comedi_event(%struct.comedi_device* %191, %struct.comedi_subdevice* %192)
  br label %194

194:                                              ; preds = %190, %187
  %195 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %194, %167, %103, %55, %32
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @pcl818_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
