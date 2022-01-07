; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_cpu.c_integrator_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_cpu.c_integrator_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.icst525_vco = type { i32, i32, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@CM_OSC = common dso_local global i32 0, align 4
@cclk_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @integrator_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @integrator_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.icst525_vco, align 4
  %7 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %2, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @cpumask_of_cpu(i32 %12)
  %14 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %11, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 (...) @smp_processor_id()
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* @CM_OSC, align 4
  %21 = call i32 @__raw_readl(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = call i64 (...) @machine_is_integrator()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 7
  %28 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %35

29:                                               ; preds = %1
  %30 = call i64 (...) @machine_is_cintegrator()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %6, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %6, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %6, i32 0, i32 2
  store i32 22, i32* %39, align 4
  %40 = bitcast { i64, i32 }* %7 to i8*
  %41 = bitcast %struct.icst525_vco* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 12, i1 false)
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 4
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @icst525_khz(i32* @cclk_params, i64 %43, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @set_cpus_allowed(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cpumask_of_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i64 @machine_is_integrator(...) #1

declare dso_local i64 @machine_is_cintegrator(...) #1

declare dso_local i32 @icst525_khz(i32*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
