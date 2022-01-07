; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_generic_64.c_io_remap_pud_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_generic_64.c_io_remap_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PUD_MASK = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32*, i64, i64, i64, i32, i32)* @io_remap_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_remap_pud_range(%struct.mm_struct* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* @PUD_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %11, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %16, align 8
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* @PUD_SIZE, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i64, i64* @PUD_SIZE, align 8
  store i64 %29, i64* %16, align 8
  br label %30

30:                                               ; preds = %28, %7
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %13, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %13, align 8
  br label %34

34:                                               ; preds = %64, %30
  %35 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32* @pmd_alloc(%struct.mm_struct* %35, i32* %36, i64 %37)
  store i32* %38, i32** %17, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %69

44:                                               ; preds = %34
  %45 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sub i64 %48, %49
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = add i64 %51, %52
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @io_remap_pmd_range(%struct.mm_struct* %45, i32* %46, i64 %47, i64 %50, i64 %53, i32 %54, i32 %55)
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @PUD_SIZE, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* @PUD_MASK, align 8
  %61 = and i64 %59, %60
  store i64 %61, i64* %11, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %10, align 8
  br label %64

64:                                               ; preds = %44
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %16, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %34, label %68

68:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @io_remap_pmd_range(%struct.mm_struct*, i32*, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
