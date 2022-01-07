; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_context.c___new_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_context.c___new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cpu_asid_lock = common dso_local global i32 0, align 4
@cpu_last_asid = common dso_local global i32 0, align 4
@ASID_FIRST_VERSION = common dso_local global i32 0, align 4
@ASID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__new_context(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = call i32 @spin_lock(i32* @cpu_asid_lock)
  %5 = load i32, i32* @cpu_last_asid, align 4
  %6 = add i32 %5, 1
  store i32 %6, i32* @cpu_last_asid, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ASID_FIRST_VERSION, align 4
  store i32 %10, i32* @cpu_last_asid, align 4
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ASID_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %11
  %21 = load i32, i32* @cpu_last_asid, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* @cpu_last_asid, align 4
  store i32 %22, i32* %3, align 4
  call void asm sideeffect "mcr\09p15, 0, $0, c13, c0, 1\09@ set reserved context ID\0A", "r,~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !2
  %23 = call i32 (...) @isb()
  %24 = call i32 (...) @flush_tlb_all()
  %25 = call i64 (...) @icache_is_vivt_asid_tagged()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = call i32 (...) @__flush_icache_all()
  %29 = call i32 (...) @dsb()
  br label %30

30:                                               ; preds = %27, %20
  br label %31

31:                                               ; preds = %30, %11
  %32 = call i32 @spin_unlock(i32* @cpu_asid_lock)
  %33 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %34 = call i32 @mm_cpumask(%struct.mm_struct* %33)
  %35 = call i32 (...) @smp_processor_id()
  %36 = call i32 @cpumask_of(i32 %35)
  %37 = call i32 @cpumask_copy(i32 %34, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @flush_tlb_all(...) #1

declare dso_local i64 @icache_is_vivt_asid_tagged(...) #1

declare dso_local i32 @__flush_icache_all(...) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 954}
