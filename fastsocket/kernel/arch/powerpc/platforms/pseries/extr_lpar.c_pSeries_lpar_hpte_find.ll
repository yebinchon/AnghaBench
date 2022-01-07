; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_pSeries_lpar_hpte_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_pSeries_lpar_hpte_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32)* @pSeries_lpar_hpte_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pSeries_lpar_hpte_find(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @hpt_hash(i64 %13, i32 %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @hpte_encode_avpn(i64 %22, i32 %23, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @htab_hash_mask, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @HPTES_PER_GROUP, align 8
  %30 = mul i64 %28, %29
  store i64 %30, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %52, %3
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @HPTES_PER_GROUP, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @pSeries_lpar_hpte_getword0(i64 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i64 @HPTE_V_COMPARE(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @HPTE_V_VALID, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* %10, align 8
  store i64 %48, i64* %4, align 8
  br label %56

49:                                               ; preds = %42, %35
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %31

55:                                               ; preds = %31
  store i64 -1, i64* %4, align 8
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i64 @hpt_hash(i64, i32, i32) #1

declare dso_local i64 @hpte_encode_avpn(i64, i32, i32) #1

declare dso_local i64 @pSeries_lpar_hpte_getword0(i64) #1

declare dso_local i64 @HPTE_V_COMPARE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
