; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_area_is_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_area_is_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64 }
%struct.vm_area_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i64)* @slice_area_is_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_area_is_free(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = sub i64 %11, %12
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %18, i64 %19)
  store %struct.vm_area_struct* %20, %struct.vm_area_struct** %8, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %22 = icmp ne %struct.vm_area_struct* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %24, %25
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ule i64 %26, %29
  br label %31

31:                                               ; preds = %23, %17
  %32 = phi i1 [ true, %17 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
