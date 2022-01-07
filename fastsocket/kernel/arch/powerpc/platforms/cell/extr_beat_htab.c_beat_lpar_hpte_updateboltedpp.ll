; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_htab.c_beat_lpar_hpte_updateboltedpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_htab.c_beat_lpar_hpte_updateboltedpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMU_SEGSIZE_256M = common dso_local global i32 0, align 4
@beat_htab_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32)* @beat_lpar_hpte_updateboltedpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beat_lpar_hpte_updateboltedpp(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @MMU_SEGSIZE_256M, align 4
  %17 = call i64 @get_kernel_vsid(i64 %15, i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = shl i64 %18, 28
  %20 = load i64, i64* %6, align 8
  %21 = and i64 %20, 268435455
  %22 = or i64 %19, %21
  store i64 %22, i64* %12, align 8
  %23 = call i32 @spin_lock(i32* @beat_htab_lock)
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @beat_lpar_hpte_find(i64 %24, i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %27, -1
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @beat_write_htab_entry(i32 0, i64 %31, i32 0, i64 %32, i32 0, i32 7, i32* %13, i32* %14)
  store i64 %33, i64* %9, align 8
  %34 = call i32 @spin_unlock(i32* @beat_htab_lock)
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  ret void
}

declare dso_local i64 @get_kernel_vsid(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @beat_lpar_hpte_find(i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @beat_write_htab_entry(i32, i64, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
