; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_s3c2410-iotiming.c_s3c2410_iotiming_getbank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_s3c2410-iotiming.c_s3c2410_iotiming_getbank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_cpufreq_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.s3c2410_iobank_timing = type { i64, i32, i8*, i8*, i8*, i8* }

@S3C2410_BANKCON_Tcah_SHIFT = common dso_local global i64 0, align 8
@S3C2410_BANKCON_Tcoh_SHIFT = common dso_local global i64 0, align 8
@S3C2410_BANKCON_Tcos_SHIFT = common dso_local global i64 0, align 8
@S3C2410_BANKCON_Tacs_SHIFT = common dso_local global i64 0, align 8
@S3C2410_BANKCON_Tacc_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c2410_iotiming_getbank(%struct.s3c_cpufreq_config* %0, %struct.s3c2410_iobank_timing* %1) #0 {
  %3 = alloca %struct.s3c_cpufreq_config*, align 8
  %4 = alloca %struct.s3c2410_iobank_timing*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.s3c_cpufreq_config* %0, %struct.s3c_cpufreq_config** %3, align 8
  store %struct.s3c2410_iobank_timing* %1, %struct.s3c2410_iobank_timing** %4, align 8
  %7 = load %struct.s3c2410_iobank_timing*, %struct.s3c2410_iobank_timing** %4, align 8
  %8 = getelementptr inbounds %struct.s3c2410_iobank_timing, %struct.s3c2410_iobank_timing* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %3, align 8
  %11 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @S3C2410_BANKCON_Tcah_SHIFT, align 8
  %17 = lshr i64 %15, %16
  %18 = call i8* @get_0124(i64 %14, i64 %17)
  %19 = load %struct.s3c2410_iobank_timing*, %struct.s3c2410_iobank_timing** %4, align 8
  %20 = getelementptr inbounds %struct.s3c2410_iobank_timing, %struct.s3c2410_iobank_timing* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @S3C2410_BANKCON_Tcoh_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = call i8* @get_0124(i64 %21, i64 %24)
  %26 = load %struct.s3c2410_iobank_timing*, %struct.s3c2410_iobank_timing** %4, align 8
  %27 = getelementptr inbounds %struct.s3c2410_iobank_timing, %struct.s3c2410_iobank_timing* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @S3C2410_BANKCON_Tcos_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = call i8* @get_0124(i64 %28, i64 %31)
  %33 = load %struct.s3c2410_iobank_timing*, %struct.s3c2410_iobank_timing** %4, align 8
  %34 = getelementptr inbounds %struct.s3c2410_iobank_timing, %struct.s3c2410_iobank_timing* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @S3C2410_BANKCON_Tacs_SHIFT, align 8
  %38 = lshr i64 %36, %37
  %39 = call i8* @get_0124(i64 %35, i64 %38)
  %40 = load %struct.s3c2410_iobank_timing*, %struct.s3c2410_iobank_timing** %4, align 8
  %41 = getelementptr inbounds %struct.s3c2410_iobank_timing, %struct.s3c2410_iobank_timing* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @S3C2410_BANKCON_Tacc_SHIFT, align 8
  %45 = lshr i64 %43, %44
  %46 = call i32 @get_tacc(i64 %42, i64 %45)
  %47 = load %struct.s3c2410_iobank_timing*, %struct.s3c2410_iobank_timing** %4, align 8
  %48 = getelementptr inbounds %struct.s3c2410_iobank_timing, %struct.s3c2410_iobank_timing* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  ret void
}

declare dso_local i8* @get_0124(i64, i64) #1

declare dso_local i32 @get_tacc(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
