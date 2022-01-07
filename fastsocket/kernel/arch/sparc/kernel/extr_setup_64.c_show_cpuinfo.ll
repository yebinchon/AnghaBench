; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_setup_64.c_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_setup_64.c_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [147 x i8] c"cpu\09\09: %s\0Afpu\09\09: %s\0Apmu\09\09: %s\0Aprom\09\09: %s\0Atype\09\09: %s\0Ancpus probed\09: %d\0Ancpus active\09: %d\0AD$ parity tl1\09: %u\0AI$ parity tl1\09: %u\0ACpu0ClkTck\09: %016lx\0A\00", align 1
@sparc_cpu_type = common dso_local global i32 0, align 4
@sparc_fpu_type = common dso_local global i32 0, align 4
@sparc_pmu_type = common dso_local global i32 0, align 4
@prom_version = common dso_local global i32 0, align 4
@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"sun4v\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sun4u\00", align 1
@ncpus_probed = common dso_local global i32 0, align 4
@dcache_parity_tl1_occurred = common dso_local global i32 0, align 4
@icache_parity_tl1_occurred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpuinfo(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = load i32, i32* @sparc_cpu_type, align 4
  %8 = load i32, i32* @sparc_fpu_type, align 4
  %9 = load i32, i32* @sparc_pmu_type, align 4
  %10 = load i32, i32* @prom_version, align 4
  %11 = load i64, i64* @tlb_type, align 8
  %12 = load i64, i64* @hypervisor, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %16 = load i32, i32* @ncpus_probed, align 4
  %17 = call i32 (...) @num_online_cpus()
  %18 = load i32, i32* @dcache_parity_tl1_occurred, align 4
  %19 = load i32, i32* @icache_parity_tl1_occurred, align 4
  %20 = call i32 @cpu_data(i32 0)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i32 %9, i32 %10, i8* %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = call i32 @mmu_info(%struct.seq_file* %25)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @cpu_data(i32) #1

declare dso_local i32 @mmu_info(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
