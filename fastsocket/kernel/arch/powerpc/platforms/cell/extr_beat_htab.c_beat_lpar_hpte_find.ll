; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_htab.c_beat_lpar_hpte_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_htab.c_beat_lpar_hpte_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@MMU_SEGSIZE_256M = common dso_local global i32 0, align 4
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@HPTE_V_SECONDARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @beat_lpar_hpte_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @beat_lpar_hpte_find(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MMU_SEGSIZE_256M, align 4
  %20 = call i64 @hpt_hash(i64 %12, i32 %18, i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MMU_SEGSIZE_256M, align 4
  %24 = call i64 @hpte_encode_v(i64 %21, i32 %22, i32 %23)
  store i64 %24, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %78, %2
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %26, 2
  br i1 %27, label %28, label %81

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @htab_hash_mask, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @HPTES_PER_GROUP, align 8
  %33 = mul i64 %31, %32
  store i64 %33, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %72, %28
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @HPTES_PER_GROUP, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @beat_lpar_hpte_getword0(i64 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @HPTE_V_COMPARE(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %38
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @HPTE_V_VALID, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i64, i64* %9, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %3, align 8
  br label %82

69:                                               ; preds = %50, %45, %38
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %34

75:                                               ; preds = %34
  %76 = load i64, i64* %6, align 8
  %77 = xor i64 %76, -1
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %25

81:                                               ; preds = %25
  store i64 -1, i64* %3, align 8
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i64 @hpt_hash(i64, i32, i32) #1

declare dso_local i64 @hpte_encode_v(i64, i32, i32) #1

declare dso_local i64 @beat_lpar_hpte_getword0(i64) #1

declare dso_local i64 @HPTE_V_COMPARE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
