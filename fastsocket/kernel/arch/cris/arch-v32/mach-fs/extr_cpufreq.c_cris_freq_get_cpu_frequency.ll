; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_cpufreq.c_cris_freq_get_cpu_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_cpufreq.c_cris_freq_get_cpu_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@config = common dso_local global i32 0, align 4
@regi_config = common dso_local global i32 0, align 4
@rw_clk_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cris_freq_get_cpu_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cris_freq_get_cpu_frequency(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @config, align 4
  %6 = load i32, i32* @regi_config, align 4
  %7 = load i32, i32* @rw_clk_ctrl, align 4
  %8 = call i64 @REG_RD(i32 %5, i32 %6, i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = bitcast %struct.TYPE_3__* %3 to i8*
  %11 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 200000, i32 6000
  ret i32 %16
}

declare dso_local i64 @REG_RD(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
