; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_summit_32.c_summit_init_apic_ldr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_summit_32.c_summit_init_apic_ldr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XAPIC_DEST_CPUS_SHIFT = common dso_local global i32 0, align 4
@APIC_DFR = common dso_local global i32 0, align 4
@SUMMIT_APIC_DFR_VALUE = common dso_local global i64 0, align 8
@APIC_LDR = common dso_local global i32 0, align 4
@APIC_LDR_MASK = common dso_local global i64 0, align 8
@BAD_APICID = common dso_local global i64 0, align 8
@cpu_2_logical_apicid = common dso_local global i64* null, align 8
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @summit_init_apic_ldr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @summit_init_apic_ldr() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 (...) @hard_smp_processor_id()
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @APIC_CLUSTER(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @XAPIC_DEST_CPUS_SHIFT, align 4
  %12 = icmp sge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  %19 = or i64 %15, %18
  store i64 %19, i64* %2, align 8
  %20 = load i32, i32* @APIC_DFR, align 4
  %21 = load i64, i64* @SUMMIT_APIC_DFR_VALUE, align 8
  %22 = call i32 @apic_write(i32 %20, i64 %21)
  %23 = load i32, i32* @APIC_LDR, align 4
  %24 = call i64 @apic_read(i32 %23)
  %25 = load i64, i64* @APIC_LDR_MASK, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @SET_APIC_LOGICAL_ID(i64 %28)
  %30 = load i64, i64* %1, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %1, align 8
  %32 = load i32, i32* @APIC_LDR, align 4
  %33 = load i64, i64* %1, align 8
  %34 = call i32 @apic_write(i32 %32, i64 %33)
  ret void
}

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local i64 @APIC_CLUSTER(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @apic_write(i32, i64) #1

declare dso_local i64 @apic_read(i32) #1

declare dso_local i64 @SET_APIC_LOGICAL_ID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
