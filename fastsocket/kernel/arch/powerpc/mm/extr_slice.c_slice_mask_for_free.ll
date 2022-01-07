; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_mask_for_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_mask_for_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64 }
%struct.slice_mask = type { i32, i32, i32, i32 }

@SLICE_NUM_LOW = common dso_local global i64 0, align 8
@SLICE_LOW_TOP = common dso_local global i64 0, align 8
@SLICE_NUM_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.mm_struct*)* @slice_mask_for_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @slice_mask_for_free(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.slice_mask, align 4
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %5 = bitcast %struct.slice_mask* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false)
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @SLICE_NUM_LOW, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @slice_low_has_vma(%struct.mm_struct* %11, i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 1, %17
  %19 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %10
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SLICE_LOW_TOP, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %55

33:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @SLICE_NUM_HIGH, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @slice_high_has_vma(%struct.mm_struct* %39, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 1, %45
  %47 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %2, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %38
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %4, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %34

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %32
  %56 = bitcast %struct.slice_mask* %2 to { i64, i64 }*
  %57 = load { i64, i64 }, { i64, i64 }* %56, align 4
  ret { i64, i64 } %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @slice_low_has_vma(%struct.mm_struct*, i64) #2

declare dso_local i32 @slice_high_has_vma(%struct.mm_struct*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
