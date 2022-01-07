; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_adc.c_s3c_adc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_adc.c_s3c_adc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_adc_client = type { i32, i32*, i32* }

@wake = common dso_local global i32 0, align 4
@s3c_convert_done = common dso_local global i32* null, align 8
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c_adc_read(%struct.s3c_adc_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c_adc_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3c_adc_client* %0, %struct.s3c_adc_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @wake, align 4
  %8 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %7)
  %9 = load i32*, i32** @s3c_convert_done, align 8
  %10 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %11 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %13 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %12, i32 0, i32 2
  store i32* @wake, i32** %13, align 8
  %14 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %15 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @s3c_adc_start(%struct.s3c_adc_client* %16, i32 %17, i32 1)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %45

22:                                               ; preds = %2
  %23 = load i32, i32* @wake, align 4
  %24 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %25 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 %29, 2
  %31 = call i32 @wait_event_timeout(i32 %23, i32 %28, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %33 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %45

39:                                               ; preds = %22
  %40 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %41 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %43 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %36, %21
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %39
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @s3c_adc_start(%struct.s3c_adc_client*, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
