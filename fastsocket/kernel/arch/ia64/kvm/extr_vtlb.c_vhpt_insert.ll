; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_vhpt_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_vhpt_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ia64_rr = type { i32 }
%struct.thash_data = type { i64, i32, i64, i32 }

@_PAGE_PPN_MASK = common dso_local global i64 0, align 8
@INVALID_TI_TAG = common dso_local global i32 0, align 4
@PAGE_FLAGS_RV_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64)* @vhpt_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhpt_insert(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.ia64_rr, align 4
  %10 = alloca %struct.thash_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @itir_ps(i64 %13)
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @ia64_get_rr(i64 %15)
  %17 = bitcast %union.ia64_rr* %9 to i32*
  store i32 %16, i32* %17, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @_PAGE_PPN_MASK, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* %11, align 8
  %22 = lshr i64 %20, %21
  %23 = load i64, i64* %11, align 8
  %24 = shl i64 %22, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %11, align 8
  %27 = shl i64 1, %26
  %28 = sub i64 %27, 1
  %29 = and i64 %25, %28
  %30 = or i64 %24, %29
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @ia64_thash(i64 %31)
  %33 = inttoptr i64 %32 to %struct.thash_data*
  store %struct.thash_data* %33, %struct.thash_data** %10, align 8
  %34 = load i32, i32* @INVALID_TI_TAG, align 4
  %35 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %36 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = call i32 (...) @ia64_mf()
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @PAGE_FLAGS_RV_MASK, align 8
  %40 = xor i64 %39, -1
  %41 = and i64 %38, %40
  %42 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %43 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = bitcast %union.ia64_rr* %9 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 2
  %47 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %48 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @ia64_ttag(i64 %49)
  %51 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %52 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %55 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  ret void
}

declare dso_local i64 @itir_ps(i64) #1

declare dso_local i32 @ia64_get_rr(i64) #1

declare dso_local i64 @ia64_thash(i64) #1

declare dso_local i32 @ia64_mf(...) #1

declare dso_local i32 @ia64_ttag(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
