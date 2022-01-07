; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_cache-xsc3l2.c_xsc3_l2_inv_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_cache-xsc3l2.c_xsc3_l2_inv_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @xsc3_l2_inv_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsc3_l2_inv_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 (...) @xsc3_l2_inv_all()
  br label %81

14:                                               ; preds = %9, %2
  store i64 -1, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @l2_map_save_flags(i64 %15)
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = and i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %14
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = and i64 %24, %28
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @l2_map_va(i64 %29, i64 %30, i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @xsc3_l2_clean_mva(i64 %33)
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @xsc3_l2_inv_mva(i64 %35)
  %37 = load i64, i64* %3, align 8
  %38 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = or i64 %37, %40
  %42 = add i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %23, %14
  br label %44

44:                                               ; preds = %53, %43
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = xor i32 %48, -1
  %50 = sext i32 %49 to i64
  %51 = and i64 %46, %50
  %52 = icmp ult i64 %45, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %44
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @l2_map_va(i64 %54, i64 %55, i64 %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @xsc3_l2_inv_mva(i64 %58)
  %60 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %3, align 8
  br label %44

64:                                               ; preds = %44
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @l2_map_va(i64 %69, i64 %70, i64 %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @xsc3_l2_clean_mva(i64 %73)
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @xsc3_l2_inv_mva(i64 %75)
  br label %77

77:                                               ; preds = %68, %64
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @l2_map_restore_flags(i64 %78)
  %80 = call i32 (...) @dsb()
  br label %81

81:                                               ; preds = %77, %12
  ret void
}

declare dso_local i32 @xsc3_l2_inv_all(...) #1

declare dso_local i32 @l2_map_save_flags(i64) #1

declare dso_local i64 @l2_map_va(i64, i64, i64) #1

declare dso_local i32 @xsc3_l2_clean_mva(i64) #1

declare dso_local i32 @xsc3_l2_inv_mva(i64) #1

declare dso_local i32 @l2_map_restore_flags(i64) #1

declare dso_local i32 @dsb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
