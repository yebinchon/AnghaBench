; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_pSeries_lpar_hpte_updatepp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_pSeries_lpar_hpte_updatepp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H_AVPN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"    update: avpnv=%016lx, hash=%016lx, f=%lx, psize: %d ...\00", align 1
@H_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"not found !\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@H_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32, i32, i32)* @pSeries_lpar_hpte_updatepp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pSeries_lpar_hpte_updatepp(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %9, align 8
  %18 = and i64 %17, 7
  %19 = load i64, i64* @H_AVPN, align 8
  %20 = or i64 %18, %19
  store i64 %20, i64* %15, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i64 @hpte_encode_avpn(i64 %21, i32 %22, i32 %23)
  store i64 %24, i64* %16, align 8
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %15, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26, i64 %27, i32 %28)
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %16, align 8
  %33 = call i64 @plpar_pte_protect(i64 %30, i64 %31, i64 %32)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @H_NOT_FOUND, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i64 -1, i64* %7, align 8
  br label %46

39:                                               ; preds = %6
  %40 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @H_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %39, %37
  %47 = load i64, i64* %7, align 8
  ret i64 %47
}

declare dso_local i64 @hpte_encode_avpn(i64, i32, i32) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local i64 @plpar_pte_protect(i64, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
