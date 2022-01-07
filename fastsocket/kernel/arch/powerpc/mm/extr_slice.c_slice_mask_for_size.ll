; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_mask_for_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_mask_for_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.slice_mask = type { i32, i32, i32, i32 }

@SLICE_NUM_LOW = common dso_local global i64 0, align 8
@SLICE_NUM_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.mm_struct*, i32)* @slice_mask_for_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @slice_mask_for_size(%struct.mm_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.slice_mask, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.slice_mask* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %34, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @SLICE_NUM_LOW, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = mul i64 %19, 4
  %21 = lshr i64 %18, %20
  %22 = and i64 %21, 15
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 1, %28
  %30 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %63, %37
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @SLICE_NUM_HIGH, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = mul i64 %48, 4
  %50 = lshr i64 %47, %49
  %51 = and i64 %50, 15
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 1, %57
  %59 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %3, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %46
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %42

66:                                               ; preds = %42
  %67 = bitcast %struct.slice_mask* %3 to { i64, i64 }*
  %68 = load { i64, i64 }, { i64, i64 }* %67, align 4
  ret { i64, i64 } %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
