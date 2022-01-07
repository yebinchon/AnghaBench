; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_pio_drain_ai_fifo_32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_pio_drain_ai_fifo_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@ADC_WRITE_PNTR_REG = common dso_local global i64 0, align 8
@ADC_READ_PNTR_REG = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@ADC_FIFO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pio_drain_ai_fifo_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_drain_ai_fifo_32(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.comedi_async*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  store %struct.comedi_subdevice* %13, %struct.comedi_subdevice** %3, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.comedi_async*, %struct.comedi_async** %15, align 8
  store %struct.comedi_async* %16, %struct.comedi_async** %4, align 8
  %17 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 0
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %5, align 8
  store i32 100000, i32* %7, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ADC_WRITE_PNTR_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readw(i64 %24)
  %26 = and i32 %25, 32767
  store i32 %26, i32* %9, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %28 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ADC_READ_PNTR_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readw(i64 %32)
  %34 = and i32 %33, 32767
  store i32 %34, i32* %10, align 4
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TRIG_COUNT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %1
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %43 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ugt i32 %41, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %40
  br label %53

53:                                               ; preds = %52, %1
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %89, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ult i32 %59, %60
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i1 [ false, %54 ], [ %61, %58 ]
  br i1 %63, label %64, label %98

64:                                               ; preds = %62
  %65 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %66 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ADC_FIFO_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 65535
  %75 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %72, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %64
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 65535
  %86 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %82, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %81, %64
  %90 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %91 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %90)
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ADC_READ_PNTR_REG, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @readw(i64 %95)
  %97 = and i32 %96, 32767
  store i32 %97, i32* %10, align 4
  br label %54

98:                                               ; preds = %62
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %101 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub i32 %103, %99
  store i32 %104, i32* %102, align 8
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cfc_write_to_buffer(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
