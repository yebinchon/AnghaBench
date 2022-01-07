; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_pSeries_lpar_hpte_invalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_pSeries_lpar_hpte_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"    inval : slot=%lx, va=%016lx, psize: %d, local: %d\0A\00", align 1
@H_AVPN = common dso_local global i32 0, align 4
@H_NOT_FOUND = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32, i32)* @pSeries_lpar_hpte_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pSeries_lpar_hpte_invalidate(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @pr_devel(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16, i32 %17, i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @hpte_encode_avpn(i64 %20, i32 %21, i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i32, i32* @H_AVPN, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @plpar_pte_remove(i32 %24, i64 %25, i64 %26, i64* %13, i64* %14)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @H_NOT_FOUND, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %38

32:                                               ; preds = %5
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @H_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  br label %38

38:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @pr_devel(i8*, i64, i64, i32, i32) #1

declare dso_local i64 @hpte_encode_avpn(i64, i32, i32) #1

declare dso_local i64 @plpar_pte_remove(i32, i64, i64, i64*, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
