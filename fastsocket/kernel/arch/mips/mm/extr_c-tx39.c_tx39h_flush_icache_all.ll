; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_c-tx39.c_tx39h_flush_icache_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_c-tx39.c_tx39h_flush_icache_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TX39_CONF_ICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tx39h_flush_icache_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx39h_flush_icache_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* %1, align 8
  %4 = call i32 @local_irq_save(i64 %3)
  %5 = call i64 (...) @read_c0_conf()
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @TX39_CONF_ICE, align 8
  %8 = xor i64 %7, -1
  %9 = and i64 %6, %8
  %10 = call i32 @write_c0_conf(i64 %9)
  %11 = call i32 (...) @TX39_STOP_STREAMING()
  %12 = call i32 (...) @blast_icache16()
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @write_c0_conf(i64 %13)
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @local_irq_restore(i64 %15)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @read_c0_conf(...) #1

declare dso_local i32 @write_c0_conf(i64) #1

declare dso_local i32 @TX39_STOP_STREAMING(...) #1

declare dso_local i32 @blast_icache16(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
