; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh2.c_sh2__flush_wback_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh2.c_sh2__flush_wback_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@CACHE_PHYSADDR_MASK = common dso_local global i64 0, align 8
@SH_CACHE_UPDATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sh2__flush_wback_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh2__flush_wback_region(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i32, i32* @L1_CACHE_BYTES, align 4
  %14 = sub nsw i32 %13, 1
  %15 = xor i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = and i64 %12, %16
  store i64 %17, i64* %6, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %19, %21
  %23 = load i32, i32* @L1_CACHE_BYTES, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = sub i64 %25, 1
  %27 = load i32, i32* @L1_CACHE_BYTES, align 4
  %28 = sub nsw i32 %27, 1
  %29 = xor i32 %28, -1
  %30 = sext i32 %29 to i64
  %31 = and i64 %26, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %76, %2
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %33
  %38 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  %39 = load i64, i64* %5, align 8
  %40 = and i64 %39, 4080
  %41 = or i64 %38, %40
  store i64 %41, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %72, %37
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 12
  %49 = sext i32 %48 to i64
  %50 = or i64 %46, %49
  %51 = call i64 @ctrl_inl(i64 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @CACHE_PHYSADDR_MASK, align 8
  %54 = and i64 %52, %53
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @CACHE_PHYSADDR_MASK, align 8
  %57 = and i64 %55, %56
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %45
  %60 = load i64, i64* @SH_CACHE_UPDATED, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %10, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %66, 12
  %68 = sext i32 %67 to i64
  %69 = or i64 %65, %68
  %70 = call i32 @ctrl_outl(i64 %64, i64 %69)
  br label %71

71:                                               ; preds = %59, %45
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %42

75:                                               ; preds = %42
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* @L1_CACHE_BYTES, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %5, align 8
  br label %33

81:                                               ; preds = %33
  ret void
}

declare dso_local i64 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
