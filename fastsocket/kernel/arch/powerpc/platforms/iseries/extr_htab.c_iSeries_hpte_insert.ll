; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_htab.c_iSeries_hpte_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_htab.c_iSeries_hpte_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i64, i64 }

@MMU_PAGE_4K = common dso_local global i32 0, align 4
@HPTE_V_SECONDARY = common dso_local global i64 0, align 8
@HW_PAGE_SHIFT = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@HPTE_V_BOLTED = common dso_local global i64 0, align 8
@PP_RWXX = common dso_local global i32 0, align 4
@MMU_SEGSIZE_256M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64, i32, i32)* @iSeries_hpte_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iSeries_hpte_insert(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.hash_pte, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @MMU_PAGE_4K, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  store i64 -1, i64* %8, align 8
  br label %109

29:                                               ; preds = %7
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @iSeries_hlock(i64 %30)
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @HW_PAGE_SHIFT, align 8
  %34 = lshr i64 %32, %33
  %35 = call i64 @HvCallHpt_findValid(%struct.hash_pte* %17, i64 %34)
  store i64 %35, i64* %16, align 8
  %36 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %17, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HPTE_V_VALID, align 8
  %39 = and i64 %37, %38
  %40 = call i64 @unlikely(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %29
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @HPTE_V_BOLTED, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load i64, i64* %16, align 8
  %49 = call i32 @HvCallHpt_setSwBits(i64 %48, i32 16, i32 0)
  %50 = load i64, i64* %16, align 8
  %51 = load i32, i32* @PP_RWXX, align 4
  %52 = call i32 @HvCallHpt_setPp(i64 %50, i32 %51)
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @iSeries_hunlock(i64 %53)
  %55 = load i64, i64* %16, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i64, i64* %16, align 8
  %59 = and i64 %58, 7
  %60 = or i64 8, %59
  store i64 %60, i64* %8, align 8
  br label %109

61:                                               ; preds = %47
  %62 = load i64, i64* %16, align 8
  %63 = and i64 %62, 7
  store i64 %63, i64* %8, align 8
  br label %109

64:                                               ; preds = %42
  %65 = call i32 (...) @BUG()
  br label %66

66:                                               ; preds = %64, %29
  %67 = load i64, i64* %16, align 8
  %68 = icmp eq i64 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @iSeries_hunlock(i64 %70)
  store i64 -1, i64* %8, align 8
  br label %109

72:                                               ; preds = %66
  %73 = load i64, i64* %16, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %77 = load i64, i64* %13, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %13, align 8
  store i32 1, i32* %18, align 4
  %79 = load i64, i64* %16, align 8
  %80 = and i64 %79, 9223372036854775807
  store i64 %80, i64* %16, align 8
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* @MMU_PAGE_4K, align 4
  %84 = load i32, i32* @MMU_SEGSIZE_256M, align 4
  %85 = call i64 @hpte_encode_v(i64 %82, i32 %83, i32 %84)
  %86 = load i64, i64* %13, align 8
  %87 = or i64 %85, %86
  %88 = load i64, i64* @HPTE_V_VALID, align 8
  %89 = or i64 %87, %88
  %90 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %17, i32 0, i32 0
  store i64 %89, i64* %90, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @phys_to_abs(i64 %91)
  %93 = load i32, i32* @MMU_PAGE_4K, align 4
  %94 = call i64 @hpte_encode_r(i32 %92, i32 %93)
  %95 = load i64, i64* %12, align 8
  %96 = or i64 %94, %95
  %97 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %17, i32 0, i32 1
  store i64 %96, i64* %97, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @HvCallHpt_addValidate(i64 %98, i32 %99, %struct.hash_pte* %17)
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @iSeries_hunlock(i64 %101)
  %103 = load i32, i32* %18, align 4
  %104 = shl i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %16, align 8
  %107 = and i64 %106, 7
  %108 = or i64 %105, %107
  store i64 %108, i64* %8, align 8
  br label %109

109:                                              ; preds = %81, %69, %61, %57, %28
  %110 = load i64, i64* %8, align 8
  ret i64 %110
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iSeries_hlock(i64) #1

declare dso_local i64 @HvCallHpt_findValid(%struct.hash_pte*, i64) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @HvCallHpt_setSwBits(i64, i32, i32) #1

declare dso_local i32 @HvCallHpt_setPp(i64, i32) #1

declare dso_local i32 @iSeries_hunlock(i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @hpte_encode_v(i64, i32, i32) #1

declare dso_local i64 @hpte_encode_r(i32, i32) #1

declare dso_local i32 @phys_to_abs(i64) #1

declare dso_local i32 @HvCallHpt_addValidate(i64, i32, %struct.hash_pte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
