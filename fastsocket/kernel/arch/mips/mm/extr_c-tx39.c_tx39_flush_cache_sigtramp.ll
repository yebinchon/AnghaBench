; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_c-tx39.c_tx39_flush_cache_sigtramp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_c-tx39.c_tx39_flush_cache_sigtramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@current_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TX39_CONF_ICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tx39_flush_cache_sigtramp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx39_flush_cache_sigtramp(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 1, i32 0), align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 0, i32 0), align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* %4, align 8
  %11 = sub i64 %10, 1
  %12 = xor i64 %11, -1
  %13 = and i64 %9, %12
  %14 = call i32 @protected_writeback_dcache_line(i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  %17 = call i64 (...) @read_c0_conf()
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @TX39_CONF_ICE, align 8
  %20 = xor i64 %19, -1
  %21 = and i64 %18, %20
  %22 = call i32 @write_c0_conf(i64 %21)
  %23 = call i32 (...) @TX39_STOP_STREAMING()
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = sub i64 %25, 1
  %27 = xor i64 %26, -1
  %28 = and i64 %24, %27
  %29 = call i32 @protected_flush_icache_line(i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @write_c0_conf(i64 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @local_irq_restore(i64 %32)
  ret void
}

declare dso_local i32 @protected_writeback_dcache_line(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @read_c0_conf(...) #1

declare dso_local i32 @write_c0_conf(i64) #1

declare dso_local i32 @TX39_STOP_STREAMING(...) #1

declare dso_local i32 @protected_flush_icache_line(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
