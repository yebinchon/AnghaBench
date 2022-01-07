; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_lubbock.c_lubbock_mmc_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_lubbock.c_lubbock_mmc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUB_IRQ_SET_CLR = common dso_local global i32 0, align 4
@mmc_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MMC_POLL_RATE = common dso_local global i64 0, align 8
@LUBBOCK_SD_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @lubbock_mmc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lubbock_mmc_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load i32, i32* @LUB_IRQ_SET_CLR, align 4
  %7 = and i32 %6, -2
  store i32 %7, i32* @LUB_IRQ_SET_CLR, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @local_irq_restore(i64 %8)
  %10 = load i32, i32* @LUB_IRQ_SET_CLR, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* @MMC_POLL_RATE, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @mod_timer(i32* @mmc_timer, i64 %16)
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @LUBBOCK_SD_IRQ, align 4
  %20 = load i64, i64* %2, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @mmc_detect_int(i32 %19, i8* %21)
  %23 = load i32, i32* @LUBBOCK_SD_IRQ, align 4
  %24 = call i32 @enable_irq(i32 %23)
  br label %25

25:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @mmc_detect_int(i32, i8*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
