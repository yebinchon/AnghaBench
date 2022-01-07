; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_au1xxx-ide.c_au1xxx_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_au1xxx-ide.c_au1xxx_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM_STCFG2 = common dso_local global i32 0, align 4
@PIO0 = common dso_local global i32 0, align 4
@TS_MASK = common dso_local global i32 0, align 4
@TCSOE_MASK = common dso_local global i32 0, align 4
@TOECS_MASK = common dso_local global i32 0, align 4
@SBC_IDE_PIO0_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_PIO0_TOECS = common dso_local global i32 0, align 4
@PIO1 = common dso_local global i32 0, align 4
@SBC_IDE_PIO1_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_PIO1_TOECS = common dso_local global i32 0, align 4
@PIO2 = common dso_local global i32 0, align 4
@SBC_IDE_PIO2_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_PIO2_TOECS = common dso_local global i32 0, align 4
@PIO3 = common dso_local global i32 0, align 4
@SBC_IDE_PIO3_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_PIO3_TOECS = common dso_local global i32 0, align 4
@PIO4 = common dso_local global i32 0, align 4
@SBC_IDE_PIO4_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_PIO4_TOECS = common dso_local global i32 0, align 4
@MEM_STTIME2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @au1xxx_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xxx_set_pio_mode(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @MEM_STCFG2, align 4
  %8 = call i32 @au_readl(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %108 [
    i32 0, label %10
    i32 1, label %29
    i32 2, label %48
    i32 3, label %68
    i32 4, label %88
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @PIO0, align 4
  %12 = call i32 @SBC_IDE_TIMING(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @TS_MASK, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @TCSOE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @TOECS_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @SBC_IDE_PIO0_TCSOE, align 4
  %25 = load i32, i32* @SBC_IDE_PIO0_TOECS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %108

29:                                               ; preds = %2
  %30 = load i32, i32* @PIO1, align 4
  %31 = call i32 @SBC_IDE_TIMING(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @TS_MASK, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @TCSOE_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @TOECS_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @SBC_IDE_PIO1_TCSOE, align 4
  %44 = load i32, i32* @SBC_IDE_PIO1_TOECS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %108

48:                                               ; preds = %2
  %49 = load i32, i32* @PIO2, align 4
  %50 = call i32 @SBC_IDE_TIMING(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @TS_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @TCSOE_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @TOECS_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @SBC_IDE_PIO2_TCSOE, align 4
  %64 = load i32, i32* @SBC_IDE_PIO2_TOECS, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %108

68:                                               ; preds = %2
  %69 = load i32, i32* @PIO3, align 4
  %70 = call i32 @SBC_IDE_TIMING(i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @TS_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @TCSOE_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @TOECS_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @SBC_IDE_PIO3_TCSOE, align 4
  %84 = load i32, i32* @SBC_IDE_PIO3_TOECS, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %108

88:                                               ; preds = %2
  %89 = load i32, i32* @PIO4, align 4
  %90 = call i32 @SBC_IDE_TIMING(i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @TS_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @TCSOE_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @TOECS_MASK, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @SBC_IDE_PIO4_TCSOE, align 4
  %104 = load i32, i32* @SBC_IDE_PIO4_TOECS, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %2, %88, %68, %48, %29, %10
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @MEM_STTIME2, align 4
  %111 = call i32 @au_writel(i32 %109, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @MEM_STCFG2, align 4
  %114 = call i32 @au_writel(i32 %112, i32 %113)
  ret void
}

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @SBC_IDE_TIMING(i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
