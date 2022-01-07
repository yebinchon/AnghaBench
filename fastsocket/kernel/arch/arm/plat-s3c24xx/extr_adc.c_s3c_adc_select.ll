; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_adc.c_s3c_adc_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_adc.c_s3c_adc_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc_device = type { i64 }
%struct.s3c_adc_client = type { i32, i32, i32 (%struct.s3c_adc_client*, i32)* }

@S3C2410_ADCCON = common dso_local global i64 0, align 8
@S3C2410_ADCCON_MUXMASK = common dso_local global i32 0, align 4
@S3C2410_ADCCON_STDBM = common dso_local global i32 0, align 4
@S3C2410_ADCCON_STARTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adc_device*, %struct.s3c_adc_client*)* @s3c_adc_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_adc_select(%struct.adc_device* %0, %struct.s3c_adc_client* %1) #0 {
  %3 = alloca %struct.adc_device*, align 8
  %4 = alloca %struct.s3c_adc_client*, align 8
  %5 = alloca i32, align 4
  store %struct.adc_device* %0, %struct.adc_device** %3, align 8
  store %struct.s3c_adc_client* %1, %struct.s3c_adc_client** %4, align 8
  %6 = load %struct.adc_device*, %struct.adc_device** %3, align 8
  %7 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @S3C2410_ADCCON, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %13 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %12, i32 0, i32 2
  %14 = load i32 (%struct.s3c_adc_client*, i32)*, i32 (%struct.s3c_adc_client*, i32)** %13, align 8
  %15 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %16 = call i32 %14(%struct.s3c_adc_client* %15, i32 1)
  %17 = load i32, i32* @S3C2410_ADCCON_MUXMASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @S3C2410_ADCCON_STDBM, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @S3C2410_ADCCON_STARTMASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %30 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %2
  %34 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %4, align 8
  %35 = getelementptr inbounds %struct.s3c_adc_client, %struct.s3c_adc_client* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @S3C2410_ADCCON_SELMUX(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %33, %2
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.adc_device*, %struct.adc_device** %3, align 8
  %43 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @S3C2410_ADCCON, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @S3C2410_ADCCON_SELMUX(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
