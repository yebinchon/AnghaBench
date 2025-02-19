; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atue_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atue_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOP13XX_ATUE_OCCAR = common dso_local global i32 0, align 4
@IOP13XX_ATUE_OCCDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @iop13xx_atue_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop13xx_atue_read(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i32, i32* @IOP13XX_ATUE_OCCAR, align 4
  %6 = call i32 @__raw_writel(i64 %4, i32 %5)
  %7 = load i32, i32* @IOP13XX_ATUE_OCCDR, align 4
  %8 = call i32 @__raw_readl(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = call i32 (...) @rmb()
  %10 = load i32, i32* %3, align 4
  ret i32 %10
}

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
