; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2410/extr_cpu-freq.c_s3c2410_cpufreq_setdivs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2410/extr_cpu-freq.c_s3c2410_cpufreq_setdivs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_cpufreq_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@S3C2410_CLKDIVN_HDIVN = common dso_local global i32 0, align 4
@S3C2410_CLKDIVN_PDIVN = common dso_local global i32 0, align 4
@S3C2410_CLKDIVN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_cpufreq_config*)* @s3c2410_cpufreq_setdivs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_cpufreq_setdivs(%struct.s3c_cpufreq_config* %0) #0 {
  %2 = alloca %struct.s3c_cpufreq_config*, align 8
  %3 = alloca i32, align 4
  store %struct.s3c_cpufreq_config* %0, %struct.s3c_cpufreq_config** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %5 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @S3C2410_CLKDIVN_HDIVN, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %15 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %19 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* @S3C2410_CLKDIVN_PDIVN, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %13
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @S3C2410_CLKDIVN, align 4
  %30 = call i32 @__raw_writel(i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
