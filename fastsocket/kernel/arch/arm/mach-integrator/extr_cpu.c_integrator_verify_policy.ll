; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_cpu.c_integrator_verify_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_cpu.c_integrator_verify_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.icst525_vco = type { i32 }

@cclk_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @integrator_verify_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @integrator_verify_policy(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.icst525_vco, align 4
  %4 = alloca %struct.icst525_vco, align 4
  %5 = alloca %struct.icst525_vco, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %6, i32 %10, i32 %14)
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %17 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @icst525_khz_to_vco(i32* @cclk_params, i8* %18)
  %20 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = bitcast %struct.icst525_vco* %3 to i8*
  %22 = bitcast %struct.icst525_vco* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @icst525_khz(i32* @cclk_params, i32 %24)
  %26 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %27 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %29 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @icst525_khz_to_vco(i32* @cclk_params, i8* %30)
  %32 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.icst525_vco* %3 to i8*
  %34 = bitcast %struct.icst525_vco* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @icst525_khz(i32* @cclk_params, i32 %36)
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %39 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %41 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %42 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %40, i32 %44, i32 %48)
  ret i32 0
}

declare dso_local i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @icst525_khz_to_vco(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @icst525_khz(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
