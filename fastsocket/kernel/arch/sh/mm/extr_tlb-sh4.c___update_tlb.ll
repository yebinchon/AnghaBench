; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_tlb-sh4.c___update_tlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_tlb-sh4.c___update_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@MMU_VPN_MASK = common dso_local global i64 0, align 8
@MMU_PTEH = common dso_local global i32 0, align 4
@cpu_data = common dso_local global %struct.TYPE_7__* null, align 8
@CPU_HAS_PTEA = common dso_local global i32 0, align 4
@MMU_PTEA = common dso_local global i32 0, align 4
@_PAGE_FLAGS_HARDWARE_MASK = common dso_local global i64 0, align 8
@MMU_PTEL = common dso_local global i32 0, align 4
@_PAGE_WT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_tlb(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = bitcast %struct.TYPE_5__* %5 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %3, i64* %13, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = icmp ne %struct.vm_area_struct* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %58

25:                                               ; preds = %16, %4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @local_irq_save(i64 %26)
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @MMU_VPN_MASK, align 8
  %30 = and i64 %28, %29
  %31 = call i64 (...) @get_asid()
  %32 = or i64 %30, %31
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* @MMU_PTEH, align 4
  %35 = call i32 @ctrl_outl(i64 %33, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpu_data, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CPU_HAS_PTEA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %25
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @copy_ptea_attributes(i64 %45)
  %47 = load i32, i32* @MMU_PTEA, align 4
  %48 = call i32 @ctrl_outl(i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %25
  %50 = load i64, i64* @_PAGE_FLAGS_HARDWARE_MASK, align 8
  %51 = load i64, i64* %9, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* @MMU_PTEL, align 4
  %55 = call i32 @ctrl_outl(i64 %53, i32 %54)
  call void asm sideeffect "ldtlb", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @local_irq_restore(i64 %56)
  br label %58

58:                                               ; preds = %49, %24
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @get_asid(...) #1

declare dso_local i32 @ctrl_outl(i64, i32) #1

declare dso_local i64 @copy_ptea_attributes(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1360}
