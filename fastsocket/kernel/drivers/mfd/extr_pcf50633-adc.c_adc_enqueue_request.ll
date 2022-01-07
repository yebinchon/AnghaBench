; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-adc.c_adc_enqueue_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-adc.c_adc_enqueue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32 }
%struct.pcf50633_adc_request = type { i32 }
%struct.pcf50633_adc = type { i32, i32, i32, %struct.pcf50633_adc_request** }

@.str = private unnamed_addr constant [37 x i8] c"ADC queue is full, dropping request\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PCF50633_MAX_ADC_FIFO_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcf50633*, %struct.pcf50633_adc_request*)* @adc_enqueue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_enqueue_request(%struct.pcf50633* %0, %struct.pcf50633_adc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcf50633*, align 8
  %5 = alloca %struct.pcf50633_adc_request*, align 8
  %6 = alloca %struct.pcf50633_adc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %4, align 8
  store %struct.pcf50633_adc_request* %1, %struct.pcf50633_adc_request** %5, align 8
  %9 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %10 = call %struct.pcf50633_adc* @__to_adc(%struct.pcf50633* %9)
  store %struct.pcf50633_adc* %10, %struct.pcf50633_adc** %6, align 8
  %11 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %6, align 8
  %12 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %6, align 8
  %15 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %6, align 8
  %18 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %6, align 8
  %21 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %20, i32 0, i32 3
  %22 = load %struct.pcf50633_adc_request**, %struct.pcf50633_adc_request*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %22, i64 %24
  %26 = load %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %25, align 8
  %27 = icmp ne %struct.pcf50633_adc_request* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %6, align 8
  %30 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %33 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %63

38:                                               ; preds = %2
  %39 = load %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %5, align 8
  %40 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %6, align 8
  %41 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %40, i32 0, i32 3
  %42 = load %struct.pcf50633_adc_request**, %struct.pcf50633_adc_request*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pcf50633_adc_request*, %struct.pcf50633_adc_request** %42, i64 %44
  store %struct.pcf50633_adc_request* %39, %struct.pcf50633_adc_request** %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %51 = call i32 @trigger_next_adc_job_if_any(%struct.pcf50633* %50)
  br label %52

52:                                               ; preds = %49, %38
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* @PCF50633_MAX_ADC_FIFO_DEPTH, align 4
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %54, %56
  %58 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %6, align 8
  %59 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pcf50633_adc*, %struct.pcf50633_adc** %6, align 8
  %61 = getelementptr inbounds %struct.pcf50633_adc, %struct.pcf50633_adc* %60, i32 0, i32 2
  %62 = call i32 @mutex_unlock(i32* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %52, %28
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.pcf50633_adc* @__to_adc(%struct.pcf50633*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @trigger_next_adc_job_if_any(%struct.pcf50633*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
