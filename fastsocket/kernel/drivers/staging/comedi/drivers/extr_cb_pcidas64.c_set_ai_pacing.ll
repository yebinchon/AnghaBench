; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_ai_pacing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_ai_pacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@LAYOUT_4020 = common dso_local global i64 0, align 8
@ADC_SAMPLE_INTERVAL_LOWER_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"convert counter 0x%x\0A\00", align 1
@ADC_SAMPLE_INTERVAL_UPPER_REG = common dso_local global i64 0, align 8
@ADC_DELAY_INTERVAL_LOWER_REG = common dso_local global i64 0, align 8
@ADC_DELAY_INTERVAL_UPPER_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"scan counter 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @set_ai_pacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ai_pacing(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %9 = call i32 @check_adc_timing(%struct.comedi_device* %7, %struct.comedi_cmd* %8)
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %12 = call i32 @select_master_clock(%struct.comedi_device* %10, %struct.comedi_cmd* %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = call %struct.TYPE_4__* @board(%struct.comedi_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LAYOUT_4020, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %22 = call i32 @ai_convert_counter_4020(%struct.comedi_device* %20, %struct.comedi_cmd* %21)
  store i32 %22, i32* %5, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %26 = call i32 @ai_convert_counter_6xxx(%struct.comedi_device* %24, %struct.comedi_cmd* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %29 = call i32 @ai_scan_counter_6xxx(%struct.comedi_device* %27, %struct.comedi_cmd* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %23, %19
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 65535
  %33 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %34 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ADC_SAMPLE_INTERVAL_LOWER_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writew(i32 %32, i64 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ADC_SAMPLE_INTERVAL_UPPER_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writew(i32 %44, i64 %50)
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 65535
  %54 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %55 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ADC_DELAY_INTERVAL_LOWER_REG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writew(i32 %53, i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %65 = call %struct.TYPE_3__* @priv(%struct.comedi_device* %64)
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ADC_DELAY_INTERVAL_UPPER_REG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writew(i32 %63, i64 %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  ret void
}

declare dso_local i32 @check_adc_timing(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @select_master_clock(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local %struct.TYPE_4__* @board(%struct.comedi_device*) #1

declare dso_local i32 @ai_convert_counter_4020(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @ai_convert_counter_6xxx(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @ai_scan_counter_6xxx(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local %struct.TYPE_3__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
