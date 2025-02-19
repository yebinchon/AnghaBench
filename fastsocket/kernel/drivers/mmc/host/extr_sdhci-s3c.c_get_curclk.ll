; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-s3c.c_get_curclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-s3c.c_get_curclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C_SDHCI_CTRL2_SELBASECLK_MASK = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL2_SELBASECLK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_curclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_curclk(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @S3C_SDHCI_CTRL2_SELBASECLK_MASK, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, %3
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @S3C_SDHCI_CTRL2_SELBASECLK_SHIFT, align 4
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, %6
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
