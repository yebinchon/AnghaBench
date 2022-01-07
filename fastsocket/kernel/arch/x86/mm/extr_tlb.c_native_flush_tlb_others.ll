; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_tlb.c_native_flush_tlb_others.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_tlb.c_native_flush_tlb_others.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @native_flush_tlb_others(%struct.cpumask* %0, %struct.mm_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cpumask* %0, %struct.cpumask** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i64 (...) @is_uv_system()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = call i32 (...) @get_cpu()
  store i32 %11, i32* %7, align 4
  %12 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.cpumask* @uv_flush_tlb_others(%struct.cpumask* %12, %struct.mm_struct* %13, i64 %14, i32 %15)
  store %struct.cpumask* %16, %struct.cpumask** %4, align 8
  %17 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %18 = icmp ne %struct.cpumask* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @flush_tlb_others_ipi(%struct.cpumask* %20, %struct.mm_struct* %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %10
  %25 = call i32 (...) @put_cpu()
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @flush_tlb_others_ipi(%struct.cpumask* %27, %struct.mm_struct* %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %24
  ret void
}

declare dso_local i64 @is_uv_system(...) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.cpumask* @uv_flush_tlb_others(%struct.cpumask*, %struct.mm_struct*, i64, i32) #1

declare dso_local i32 @flush_tlb_others_ipi(%struct.cpumask*, %struct.mm_struct*, i64) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
