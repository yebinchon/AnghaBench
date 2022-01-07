; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_pio_drain_ai_fifo_16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_pio_drain_ai_fifo_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@ADC_READ_PNTR_REG = common dso_local global i64 0, align 8
@ADC_WRITE_PNTR_REG = common dso_local global i64 0, align 8
@PREPOST_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c" rd seg %i, wrt seg %i, rd idx %i, wrt idx %i\0A\00", align 1
@TRIG_COUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c" cb_pcidas64: bug! num_samples < 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" read %i samples from fifo\0A\00", align 1
@ADC_FIFO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pio_drain_ai_fifo_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_drain_ai_fifo_16(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.comedi_async*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  store %struct.comedi_subdevice* %15, %struct.comedi_subdevice** %3, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.comedi_async*, %struct.comedi_async** %17, align 8
  store %struct.comedi_async* %18, %struct.comedi_async** %4, align 8
  %19 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 0
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %5, align 8
  br label %21

21:                                               ; preds = %126, %1
  %22 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %23 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ADC_READ_PNTR_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readw(i64 %27)
  %29 = and i32 %28, 32767
  store i32 %29, i32* %9, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ADC_WRITE_PNTR_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readw(i64 %35)
  %37 = and i32 %36, 32767
  store i32 %37, i32* %11, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PREPOST_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readw(i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @adc_upper_read_ptr_code(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @adc_upper_write_ptr_code(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %21
  %58 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %59 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %12, align 4
  br label %68

64:                                               ; preds = %21
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TRIG_COUNT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %68
  %75 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %76 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %130

81:                                               ; preds = %74
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %84 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %82, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %90 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %96 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %94
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %68
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %130

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %122, %105
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %114 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %115 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %114)
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ADC_FIFO_REG, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @readw(i64 %119)
  %121 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %113, i32 %120)
  br label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %108

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %21, label %130

130:                                              ; preds = %126, %103, %80
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @adc_upper_read_ptr_code(i32) #1

declare dso_local i32 @adc_upper_write_ptr_code(i32) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32, ...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @cfc_write_to_buffer(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
