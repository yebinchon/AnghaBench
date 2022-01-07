; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_adc.c_s3c_adc_dbgshow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_adc.c_s3c_adc_dbgshow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc_device = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"CON=%08x, TSC=%08x, DLY=%08x\0A\00", align 1
@S3C2410_ADCCON = common dso_local global i64 0, align 8
@S3C2410_ADCTSC = common dso_local global i64 0, align 8
@S3C2410_ADCDLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adc_device*)* @s3c_adc_dbgshow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_adc_dbgshow(%struct.adc_device* %0) #0 {
  %2 = alloca %struct.adc_device*, align 8
  store %struct.adc_device* %0, %struct.adc_device** %2, align 8
  %3 = load %struct.adc_device*, %struct.adc_device** %2, align 8
  %4 = load %struct.adc_device*, %struct.adc_device** %2, align 8
  %5 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @S3C2410_ADCCON, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  %10 = load %struct.adc_device*, %struct.adc_device** %2, align 8
  %11 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S3C2410_ADCTSC, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load %struct.adc_device*, %struct.adc_device** %2, align 8
  %17 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @S3C2410_ADCDLY, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  %22 = call i32 @adc_dbg(%struct.adc_device* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %15, i32 %21)
  ret void
}

declare dso_local i32 @adc_dbg(%struct.adc_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
