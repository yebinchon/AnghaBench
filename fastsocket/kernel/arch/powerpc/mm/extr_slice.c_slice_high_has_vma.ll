; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_high_has_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_high_has_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@SLICE_HIGH_SHIFT = common dso_local global i64 0, align 8
@SLICE_LOW_TOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64)* @slice_high_has_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_high_has_vma(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @SLICE_HIGH_SHIFT, align 8
  %9 = shl i64 %7, %8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @SLICE_HIGH_SHIFT, align 8
  %12 = shl i64 1, %11
  %13 = add i64 %10, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @SLICE_LOW_TOP, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %21, %22
  %24 = call i32 @slice_area_is_free(%struct.mm_struct* %19, i64 %20, i64 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @slice_area_is_free(%struct.mm_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
