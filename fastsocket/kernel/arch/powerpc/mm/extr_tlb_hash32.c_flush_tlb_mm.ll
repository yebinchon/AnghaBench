; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_tlb_hash32.c_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_tlb_hash32.c_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32, i32, %struct.vm_area_struct* }

@Hash = common dso_local global i64 0, align 8
@FINISH_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load i64, i64* @Hash, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @_tlbia()
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %3, align 8
  br label %12

12:                                               ; preds = %26, %8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %14 = icmp ne %struct.vm_area_struct* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @flush_range(i32 %18, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %15
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 3
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %28, align 8
  store %struct.vm_area_struct* %29, %struct.vm_area_struct** %3, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load i32, i32* @FINISH_FLUSH, align 4
  br label %32

32:                                               ; preds = %30, %6
  ret void
}

declare dso_local i32 @_tlbia(...) #1

declare dso_local i32 @flush_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
