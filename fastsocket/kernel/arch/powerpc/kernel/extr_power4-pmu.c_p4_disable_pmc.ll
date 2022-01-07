; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power4-pmu.c_p4_disable_pmc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power4-pmu.c_p4_disable_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMCR0_PMC1SEL_SH = common dso_local global i32 0, align 4
@MMCR1_PMC3SEL_SH = common dso_local global i32 0, align 4
@MMCRA_PMC8SEL0_SH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*)* @p4_disable_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p4_disable_pmc(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ule i32 %5, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load i32, i32* @MMCR0_PMC1SEL_SH, align 4
  %9 = load i32, i32* %3, align 4
  %10 = mul i32 7, %9
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  %13 = shl i64 31, %12
  %14 = xor i64 %13, -1
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, %14
  store i64 %18, i64* %16, align 8
  br label %43

19:                                               ; preds = %2
  %20 = load i32, i32* @MMCR1_PMC3SEL_SH, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sub i32 %21, 2
  %23 = mul i32 5, %22
  %24 = sub i32 %20, %23
  %25 = zext i32 %24 to i64
  %26 = shl i64 31, %25
  %27 = xor i64 %26, -1
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %42

34:                                               ; preds = %19
  %35 = load i64, i64* @MMCRA_PMC8SEL0_SH, align 8
  %36 = shl i64 1, %35
  %37 = xor i64 %36, -1
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %40, %37
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %34, %19
  br label %43

43:                                               ; preds = %42, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
