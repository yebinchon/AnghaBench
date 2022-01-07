; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atu_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atu_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOP13XX_ESSR0 = common dso_local global i32 0, align 4
@IOP13XX_INTERFACE_SEL_PCIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iop13xx_atu_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop13xx_atu_function(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %23 [
    i32 128, label %5
    i32 129, label %14
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @IOP13XX_ESSR0, align 4
  %7 = call i32 @__raw_readl(i32 %6)
  %8 = load i32, i32* @IOP13XX_INTERFACE_SEL_PCIX, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i32 5, i32* %3, align 4
  br label %13

12:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %11
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* @IOP13XX_ESSR0, align 4
  %16 = call i32 @__raw_readl(i32 %15)
  %17 = load i32, i32* @IOP13XX_INTERFACE_SEL_PCIX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %14
  store i32 5, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %25

23:                                               ; preds = %1
  %24 = call i32 (...) @BUG()
  br label %25

25:                                               ; preds = %23, %22, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
