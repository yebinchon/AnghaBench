; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_cpu-freq.c_s3c_cpufreq_calcio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_cpu-freq.c_s3c_cpufreq_calcio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_cpufreq_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.s3c_cpufreq_config*, i32*)* }

@s3c24xx_iotiming = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c_cpufreq_config*)* @s3c_cpufreq_calcio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_cpufreq_calcio(%struct.s3c_cpufreq_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3c_cpufreq_config*, align 8
  store %struct.s3c_cpufreq_config* %0, %struct.s3c_cpufreq_config** %3, align 8
  %4 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %3, align 8
  %5 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.s3c_cpufreq_config*, i32*)*, i32 (%struct.s3c_cpufreq_config*, i32*)** %7, align 8
  %9 = icmp ne i32 (%struct.s3c_cpufreq_config*, i32*)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %3, align 8
  %12 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.s3c_cpufreq_config*, i32*)*, i32 (%struct.s3c_cpufreq_config*, i32*)** %14, align 8
  %16 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %3, align 8
  %17 = call i32 %15(%struct.s3c_cpufreq_config* %16, i32* @s3c24xx_iotiming)
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
