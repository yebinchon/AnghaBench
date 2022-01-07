; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_32.c_smp_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_32.c_smp_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }

@NO_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  store %struct.mm_struct* %11, %struct.mm_struct** %7, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NO_CONTEXT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %3
  %18 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %19 = call i32* @mm_cpumask(%struct.mm_struct* %18)
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = call i32 (...) @smp_processor_id()
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @cpu_clear(i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @cpus_empty(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %17
  %28 = call i64 @BTFIXUP_CALL(i32 (%struct.vm_area_struct*, i64, i64)* @local_flush_tlb_range)
  %29 = trunc i64 %28 to i32
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %31 = ptrtoint %struct.vm_area_struct* %30 to i64
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @xc3(i32 %29, i64 %31, i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %27, %17
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @local_flush_tlb_range(%struct.vm_area_struct* %36, i64 %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %3
  ret void
}

declare dso_local i32* @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpu_clear(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpus_empty(i32) #1

declare dso_local i32 @xc3(i32, i64, i64, i64) #1

declare dso_local i64 @BTFIXUP_CALL(i32 (%struct.vm_area_struct*, i64, i64)*) #1

declare dso_local i32 @local_flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
