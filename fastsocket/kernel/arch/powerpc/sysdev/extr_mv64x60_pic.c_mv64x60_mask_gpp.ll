; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mv64x60_pic.c_mv64x60_mask_gpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mv64x60_pic.c_mv64x60_mask_gpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@irq_map = common dso_local global %struct.TYPE_2__* null, align 8
@MV64x60_LEVEL2_MASK = common dso_local global i32 0, align 4
@mv64x60_lock = common dso_local global i32 0, align 4
@mv64x60_cached_gpp_mask = common dso_local global i32 0, align 4
@mv64x60_gpp_reg_base = common dso_local global i64 0, align 8
@MV64x60_GPP_INTR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mv64x60_mask_gpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64x60_mask_gpp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MV64x60_LEVEL2_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @mv64x60_lock, i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* @mv64x60_cached_gpp_mask, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* @mv64x60_cached_gpp_mask, align 4
  %20 = load i64, i64* @mv64x60_gpp_reg_base, align 8
  %21 = load i64, i64* @MV64x60_GPP_INTR_MASK, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @mv64x60_cached_gpp_mask, align 4
  %24 = call i32 @out_le32(i64 %22, i32 %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @mv64x60_lock, i64 %25)
  %27 = load i64, i64* @mv64x60_gpp_reg_base, align 8
  %28 = load i64, i64* @MV64x60_GPP_INTR_MASK, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @in_le32(i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @out_le32(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @in_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
