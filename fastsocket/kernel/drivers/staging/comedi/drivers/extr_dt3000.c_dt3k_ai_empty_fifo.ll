; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DPR_AD_Buf_Front = common dso_local global i64 0, align 8
@AI_FIFO_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"reading %d samples\0A\00", align 1
@DPR_ADC_buffer = common dso_local global i64 0, align 8
@DPR_AD_Buf_Rear = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt3k_ai_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt3k_ai_empty_fifo(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DPR_AD_Buf_Front, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i8* @readw(i64 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @AI_FIFO_DEPTH, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %61, %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DPR_ADC_buffer, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i8* @readw(i64 %46)
  %48 = ptrtoint i8* %47 to i16
  store i16 %48, i16* %9, align 2
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i16, i16* %9, align 2
  %53 = call i32 @comedi_buf_put(i32 %51, i16 signext %52)
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @AI_FIFO_DEPTH, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %34

64:                                               ; preds = %34
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DPR_AD_Buf_Rear, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writew(i32 %68, i64 %73)
  ret void
}

declare dso_local i8* @readw(i64) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @comedi_buf_put(i32, i16 signext) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
