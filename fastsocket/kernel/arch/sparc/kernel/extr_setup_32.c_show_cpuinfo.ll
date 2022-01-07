; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_setup_32.c_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_setup_32.c_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.seq_file = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [154 x i8] c"cpu\09\09: %s\0Afpu\09\09: %s\0Apromlib\09\09: Version %d Revision %d\0Aprom\09\09: %d.%d\0Atype\09\09: %s\0Ancpus probed\09: %d\0Ancpus active\09: %d\0ACPU0Bogo\09: %lu.%02lu\0ACPU0ClkTck\09: %ld\0A\00", align 1
@sparc_cpu_type = common dso_local global i32 0, align 4
@sparc_fpu_type = common dso_local global i32 0, align 4
@romvec = common dso_local global %struct.TYPE_3__* null, align 8
@prom_rev = common dso_local global i32 0, align 4
@cputypval = common dso_local global i32 0, align 4
@ncpus_probed = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpuinfo(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load i32, i32* @sparc_cpu_type, align 4
  %10 = load i32, i32* @sparc_fpu_type, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @romvec, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @prom_rev, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @romvec, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 16
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @romvec, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 65535
  %23 = load i32, i32* @ncpus_probed, align 4
  %24 = call i32 (...) @num_online_cpus()
  %25 = call i64 @cpu_data(i32 0)
  %26 = bitcast %struct.TYPE_4__* %5 to i64*
  store i64 %25, i64* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 500000, %29
  %31 = sdiv i32 %28, %30
  %32 = call i64 @cpu_data(i32 0)
  %33 = bitcast %struct.TYPE_4__* %6 to i64*
  store i64 %32, i64* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HZ, align 4
  %37 = sdiv i32 5000, %36
  %38 = sdiv i32 %35, %37
  %39 = srem i32 %38, 100
  %40 = call i64 @cpu_data(i32 0)
  %41 = bitcast %struct.TYPE_4__* %7 to i64*
  store i64 %40, i64* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i32 %13, i32 %14, i32 %18, i32 %22, i32* @cputypval, i32 %23, i32 %24, i32 %31, i32 %39, i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = call i32 @mmu_info(%struct.seq_file* %45)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i64 @cpu_data(i32) #1

declare dso_local i32 @mmu_info(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
