; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_set_pll_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_set_pll_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }

@BT848_PLL_F_LO = common dso_local global i32 0, align 4
@BT848_PLL_F_HI = common dso_local global i32 0, align 4
@BT848_PLL_X = common dso_local global i8 0, align 1
@BT848_PLL_XCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, i32, i32)* @set_pll_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pll_freq(%struct.bttv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = udiv i32 %10, 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = udiv i32 %12, 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul i32 %14, 12
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = udiv i32 %16, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %9, align 1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = urem i32 %20, %21
  %23 = mul i32 %22, 256
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = udiv i32 %24, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %8, align 1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = urem i32 %28, %29
  %31 = mul i32 %30, 256
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = udiv i32 %32, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %7, align 1
  %36 = load i8, i8* %7, align 1
  %37 = load i32, i32* @BT848_PLL_F_LO, align 4
  %38 = call i32 @btwrite(i8 zeroext %36, i32 %37)
  %39 = load i8, i8* %8, align 1
  %40 = load i32, i32* @BT848_PLL_F_HI, align 4
  %41 = call i32 @btwrite(i8 zeroext %39, i32 %40)
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @BT848_PLL_X, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %43, %45
  %47 = trunc i32 %46 to i8
  %48 = load i32, i32* @BT848_PLL_XCI, align 4
  %49 = call i32 @btwrite(i8 zeroext %47, i32 %48)
  ret void
}

declare dso_local i32 @btwrite(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
