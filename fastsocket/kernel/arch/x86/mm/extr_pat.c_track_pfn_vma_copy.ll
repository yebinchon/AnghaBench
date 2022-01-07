; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_track_pfn_vma_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_track_pfn_vma_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @track_pfn_vma_copy(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %16 = call i64 @is_linear_pfn_mapping(%struct.vm_area_struct* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @follow_phys(%struct.vm_area_struct* %19, i64 %22, i32 0, i64* %5, i32* %4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = call i32 @WARN_ON_ONCE(i32 1)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %18
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @__pgprot(i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @reserve_pfn_range(i32 %32, i64 %33, i32* %7, i32 1)
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @is_linear_pfn_mapping(%struct.vm_area_struct*) #1

declare dso_local i64 @follow_phys(%struct.vm_area_struct*, i64, i32, i64*, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__pgprot(i64) #1

declare dso_local i32 @reserve_pfn_range(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
