; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh2a.c_sh2a__flush_wback_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh2a.c_sh2a__flush_wback_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@CACHE_PHYSADDR_MASK = common dso_local global i64 0, align 8
@SH_CACHE_UPDATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sh2a__flush_wback_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh2a__flush_wback_region(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = load i32, i32* @L1_CACHE_BYTES, align 4
  %15 = sub nsw i32 %14, 1
  %16 = xor i32 %15, -1
  %17 = sext i32 %16 to i64
  %18 = and i64 %13, %17
  store i64 %18, i64* %6, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = load i32, i32* @L1_CACHE_BYTES, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = sub i64 %26, 1
  %28 = load i32, i32* @L1_CACHE_BYTES, align 4
  %29 = sub nsw i32 %28, 1
  %30 = xor i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = and i64 %27, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @local_irq_save(i64 %33)
  %35 = call i32 (...) @jump_to_uncached()
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %80, %2
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  %43 = load i64, i64* %5, align 8
  %44 = and i64 %43, 2032
  %45 = or i64 %42, %44
  store i64 %45, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %76, %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, 11
  %53 = sext i32 %52 to i64
  %54 = or i64 %50, %53
  %55 = call i64 @ctrl_inl(i64 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @CACHE_PHYSADDR_MASK, align 8
  %58 = and i64 %56, %57
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @CACHE_PHYSADDR_MASK, align 8
  %61 = and i64 %59, %60
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %49
  %64 = load i64, i64* @SH_CACHE_UPDATED, align 8
  %65 = xor i64 %64, -1
  %66 = load i64, i64* %11, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 %70, 11
  %72 = sext i32 %71 to i64
  %73 = or i64 %69, %72
  %74 = call i32 @ctrl_outl(i64 %68, i64 %73)
  br label %75

75:                                               ; preds = %63, %49
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %46

79:                                               ; preds = %46
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* @L1_CACHE_BYTES, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %5, align 8
  br label %37

85:                                               ; preds = %37
  %86 = call i32 (...) @back_to_cached()
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @local_irq_restore(i64 %87)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i64 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i64, i64) #1

declare dso_local i32 @back_to_cached(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
