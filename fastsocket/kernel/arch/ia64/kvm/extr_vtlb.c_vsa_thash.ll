; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_vsa_thash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_vsa_thash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thash_data = type { i32 }
%union.ia64_pta = type { i32 }

@PTA_BASE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thash_data* @vsa_thash(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %union.ia64_pta, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %union.ia64_pta, %union.ia64_pta* %5, i32 0, i32 0
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = bitcast %union.ia64_pta* %5 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 5
  %17 = sub nsw i32 %16, 8
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @REGION_OFFSET(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @_REGION_PAGE_SIZE(i32 %20)
  %22 = ashr i32 %19, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @_REGION_ID(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, 255
  %27 = load i32, i32* %12, align 4
  %28 = shl i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  %34 = shl i64 1, %33
  %35 = sub i64 %34, 1
  %36 = and i64 %31, %35
  %37 = or i64 %29, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 65535
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %12, align 4
  %44 = ashr i32 %42, %43
  %45 = shl i32 %44, 16
  %46 = or i32 %41, %45
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = bitcast %union.ia64_pta* %5 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PTA_BASE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 %52, 5
  %54 = add nsw i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to %struct.thash_data*
  ret %struct.thash_data* %56
}

declare dso_local i32 @REGION_OFFSET(i32) #1

declare dso_local i32 @_REGION_PAGE_SIZE(i32) #1

declare dso_local i32 @_REGION_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
