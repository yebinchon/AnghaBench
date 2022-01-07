; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c523.c_elmc_do_attn586.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c523.c_elmc_do_attn586.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELMC_CTRL_RST = common dso_local global i32 0, align 4
@ELMC_CTRL_CA = common dso_local global i32 0, align 4
@ELMC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @elmc_do_attn586 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elmc_do_attn586(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ELMC_CTRL_RST, align 4
  %6 = or i32 %5, 3
  %7 = load i32, i32* @ELMC_CTRL_CA, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @ELMC_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outb(i32 %10, i64 %14)
  %16 = call i32 (...) @DELAY_16()
  %17 = load i32, i32* @ELMC_CTRL_RST, align 4
  %18 = or i32 %17, 3
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @ELMC_CTRL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outb(i32 %20, i64 %24)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @DELAY_16(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
