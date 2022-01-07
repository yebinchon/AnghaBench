; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_htab.c_iSeries_hpte_invalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_htab.c_iSeries_hpte_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPTE_V_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32, i32)* @iSeries_hpte_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iSeries_hpte_invalidate(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %7, align 8
  %15 = lshr i64 %14, 23
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %13, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @iSeries_hlock(i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @iSeries_hpte_getword0(i64 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @HPTE_V_AVPN_VAL(i64 %22)
  %24 = load i64, i64* %12, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @HPTE_V_VALID, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @HvCallHpt_invalidateSetSwBitsGet(i64 %32, i32 0, i32 0)
  br label %34

34:                                               ; preds = %31, %26, %5
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @iSeries_hunlock(i64 %35)
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @iSeries_hlock(i64) #1

declare dso_local i64 @iSeries_hpte_getword0(i64) #1

declare dso_local i64 @HPTE_V_AVPN_VAL(i64) #1

declare dso_local i32 @HvCallHpt_invalidateSetSwBitsGet(i64, i32, i32) #1

declare dso_local i32 @iSeries_hunlock(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
