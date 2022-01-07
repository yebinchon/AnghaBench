; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_setup_sample_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_setup_sample_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@TRIG_COUNT = common dso_local global i64 0, align 8
@ADC_COUNT_LOWER_REG = common dso_local global i64 0, align 8
@ADC_COUNT_UPPER_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @setup_sample_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sample_counters(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %5 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TRIG_COUNT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  br label %21

21:                                               ; preds = %10, %2
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %23 = call i64 @use_hw_sample_counter(%struct.comedi_cmd* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 65535
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ADC_COUNT_LOWER_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writew(i32 %29, i64 %35)
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ADC_COUNT_UPPER_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writew(i32 %41, i64 %47)
  br label %57

49:                                               ; preds = %21
  %50 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %51 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ADC_COUNT_LOWER_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writew(i32 1, i64 %55)
  br label %57

57:                                               ; preds = %49, %25
  ret void
}

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i64 @use_hw_sample_counter(%struct.comedi_cmd*) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
