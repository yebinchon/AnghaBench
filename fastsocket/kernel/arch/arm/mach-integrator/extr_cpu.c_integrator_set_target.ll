; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_cpu.c_integrator_set_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_cpu.c_integrator_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cpufreq_policy = type { i32, i32 }
%struct.icst525_vco = type { i32, i32, i32 }
%struct.cpufreq_freqs = type { i64, i64, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@CM_OSC = common dso_local global i32 0, align 4
@cclk_params = common dso_local global i32 0, align 4
@CPUFREQ_RELATION_L = common dso_local global i32 0, align 4
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@CM_LOCK = common dso_local global i32 0, align 4
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @integrator_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @integrator_set_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.icst525_vco, align 4
  %11 = alloca %struct.cpufreq_freqs, align 8
  %12 = alloca i32, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca %struct.icst525_vco, align 4
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @cpumask_of_cpu(i32 %24)
  %26 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %23, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (...) @smp_processor_id()
  %29 = icmp ne i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* @CM_OSC, align 4
  %33 = call i32 @__raw_readl(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = call i64 (...) @machine_is_integrator()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 7
  %40 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %10, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  br label %47

41:                                               ; preds = %3
  %42 = call i64 (...) @machine_is_cintegrator()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %10, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %10, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %10, i32 0, i32 2
  store i32 22, i32* %51, align 4
  %52 = bitcast { i64, i32 }* %13 to i8*
  %53 = bitcast %struct.icst525_vco* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  %54 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %55 = load i64, i64* %54, align 4
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @icst525_khz(i32* @cclk_params, i64 %55, i32 %57)
  %59 = ptrtoint i8* %58 to i64
  %60 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %11, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @CPUFREQ_RELATION_L, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 999
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %47
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %70 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ugt i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %75 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* %6, align 4
  %79 = call { i64, i32 } @icst525_khz_to_vco(i32* @cclk_params, i32 %78)
  store { i64, i32 } %79, { i64, i32 }* %15, align 8
  %80 = bitcast { i64, i32 }* %15 to i8*
  %81 = bitcast %struct.icst525_vco* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 8 %80, i64 12, i1 false)
  %82 = bitcast %struct.icst525_vco* %10 to i8*
  %83 = bitcast %struct.icst525_vco* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 12, i1 false)
  %84 = bitcast { i64, i32 }* %16 to i8*
  %85 = bitcast %struct.icst525_vco* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 12, i1 false)
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %87 = load i64, i64* %86, align 4
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @icst525_khz(i32* @cclk_params, i64 %87, i32 %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %11, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  %93 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %94 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %11, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %11, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %11, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %77
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %103, i32 %104)
  store i32 0, i32* %4, align 4
  br label %145

106:                                              ; preds = %77
  %107 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %108 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %11, i32 %107)
  %109 = load i32, i32* @CM_OSC, align 4
  %110 = call i32 @__raw_readl(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = call i64 (...) @machine_is_integrator()
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, -2048
  store i32 %115, i32* %12, align 4
  %116 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %10, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %128

121:                                              ; preds = %106
  %122 = call i64 (...) @machine_is_cintegrator()
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  %126 = and i32 %125, -256
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %113
  %129 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %10, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %12, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* @CM_LOCK, align 4
  %134 = call i32 @__raw_writel(i32 41055, i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @CM_OSC, align 4
  %137 = call i32 @__raw_writel(i32 %135, i32 %136)
  %138 = load i32, i32* @CM_LOCK, align 4
  %139 = call i32 @__raw_writel(i32 0, i32 %138)
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @set_cpus_allowed(%struct.TYPE_3__* %140, i32 %141)
  %143 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %144 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %11, i32 %143)
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %128, %102
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @set_cpus_allowed(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cpumask_of_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i64 @machine_is_integrator(...) #1

declare dso_local i64 @machine_is_cintegrator(...) #1

declare dso_local i8* @icst525_khz(i32*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @icst525_khz_to_vco(i32*, i32) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
