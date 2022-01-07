; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_32.c_smp_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_32.c_smp_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }

@NO_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %5, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NO_CONTEXT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %17 = call i32* @mm_cpumask(%struct.mm_struct* %16)
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = call i32 (...) @smp_processor_id()
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @cpu_clear(i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @cpus_empty(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %15
  %26 = call i64 @BTFIXUP_CALL(i32 (%struct.vm_area_struct*, i64)* @local_flush_tlb_page)
  %27 = trunc i64 %26 to i32
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %29 = ptrtoint %struct.vm_area_struct* %28 to i64
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @xc2(i32 %27, i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %25, %15
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @local_flush_tlb_page(%struct.vm_area_struct* %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %2
  ret void
}

declare dso_local i32* @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpu_clear(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpus_empty(i32) #1

declare dso_local i32 @xc2(i32, i64, i64) #1

declare dso_local i64 @BTFIXUP_CALL(i32 (%struct.vm_area_struct*, i64)*) #1

declare dso_local i32 @local_flush_tlb_page(%struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
