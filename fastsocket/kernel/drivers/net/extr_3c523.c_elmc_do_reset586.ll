; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c523.c_elmc_do_reset586.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c523.c_elmc_do_reset586.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELMC_CTRL_LBK = common dso_local global i32 0, align 4
@ELMC_CTRL = common dso_local global i64 0, align 8
@ELMC_CTRL_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @elmc_do_reset586 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elmc_do_reset586(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ELMC_CTRL_LBK, align 4
  %6 = or i32 3, %5
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @ELMC_CTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outb(i32 %6, i64 %10)
  %12 = call i32 (...) @DELAY_16()
  %13 = load i32, i32* @ELMC_CTRL_RST, align 4
  %14 = load i32, i32* @ELMC_CTRL_LBK, align 4
  %15 = or i32 %13, %14
  %16 = or i32 %15, 3
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @ELMC_CTRL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %16, i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @elmc_do_attn586(i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @DELAY_16(...) #1

declare dso_local i32 @elmc_do_attn586(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
