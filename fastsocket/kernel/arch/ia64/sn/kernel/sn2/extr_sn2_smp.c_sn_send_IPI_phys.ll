; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn2_smp.c_sn_send_IPI_phys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn2_smp.c_sn_send_IPI_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SH_IPI_INT = common dso_local global i32 0, align 4
@SH_IPI_INT_SEND_SHFT = common dso_local global i64 0, align 8
@SH_IPI_INT_PID_SHFT = common dso_local global i64 0, align 8
@SH_IPI_INT_TYPE_SHFT = common dso_local global i64 0, align 8
@SH_IPI_INT_IDX_SHFT = common dso_local global i64 0, align 8
@SH_IPI_INT_BASE_SHFT = common dso_local global i32 0, align 4
@sn2_global_ptc_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sn_send_IPI_phys(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SH_IPI_INT, align 4
  %14 = call i64 @GLOBAL_MMR_PHYS_ADDR(i32 %12, i32 %13)
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %11, align 8
  %16 = load i64, i64* @SH_IPI_INT_SEND_SHFT, align 8
  %17 = shl i64 1, %16
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @SH_IPI_INT_PID_SHFT, align 8
  %20 = shl i64 %18, %19
  %21 = or i64 %17, %20
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @SH_IPI_INT_TYPE_SHFT, align 8
  %25 = shl i64 %23, %24
  %26 = or i64 %21, %25
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @SH_IPI_INT_IDX_SHFT, align 8
  %30 = shl i64 %28, %29
  %31 = or i64 %26, %30
  %32 = load i32, i32* @SH_IPI_INT_BASE_SHFT, align 4
  %33 = zext i32 %32 to i64
  %34 = shl i64 4078, %33
  %35 = or i64 %31, %34
  store i64 %35, i64* %9, align 8
  %36 = call i32 (...) @mb()
  %37 = call i64 (...) @enable_shub_wars_1_1()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @spin_lock_irqsave(i32* @sn2_global_ptc_lock, i64 %40)
  br label %42

42:                                               ; preds = %39, %4
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @pio_phys_write_mmr(i64* %43, i64 %44)
  %46 = call i64 (...) @enable_shub_wars_1_1()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = call i32 (...) @wait_piowc()
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @sn2_global_ptc_lock, i64 %50)
  br label %52

52:                                               ; preds = %48, %42
  ret void
}

declare dso_local i64 @GLOBAL_MMR_PHYS_ADDR(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @enable_shub_wars_1_1(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pio_phys_write_mmr(i64*, i64) #1

declare dso_local i32 @wait_piowc(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
