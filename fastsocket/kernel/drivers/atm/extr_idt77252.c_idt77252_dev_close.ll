; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_dev_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_dev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { %struct.idt77252_dev* }
%struct.idt77252_dev = type { i32 }

@SAR_CFG_RXPTH = common dso_local global i32 0, align 4
@SAR_RX_DELAY = common dso_local global i32 0, align 4
@SAR_CFG_RAWIE = common dso_local global i32 0, align 4
@SAR_CFG_RQFIE = common dso_local global i32 0, align 4
@SAR_CFG_TMOIE = common dso_local global i32 0, align 4
@SAR_CFG_FBIE = common dso_local global i32 0, align 4
@SAR_CFG_TXEN = common dso_local global i32 0, align 4
@SAR_CFG_TXINT = common dso_local global i32 0, align 4
@SAR_CFG_TXUIE = common dso_local global i32 0, align 4
@SAR_CFG_TXSFI = common dso_local global i32 0, align 4
@SAR_REG_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: closed IDT77252 ABR SAR.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_dev*)* @idt77252_dev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt77252_dev_close(%struct.atm_dev* %0) #0 {
  %2 = alloca %struct.atm_dev*, align 8
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %2, align 8
  %5 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %6 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %5, i32 0, i32 0
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  store %struct.idt77252_dev* %7, %struct.idt77252_dev** %3, align 8
  %8 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %9 = call i32 @close_card_oam(%struct.idt77252_dev* %8)
  %10 = load i32, i32* @SAR_CFG_RXPTH, align 4
  %11 = load i32, i32* @SAR_RX_DELAY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SAR_CFG_RAWIE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SAR_CFG_RQFIE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SAR_CFG_TMOIE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SAR_CFG_FBIE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SAR_CFG_TXEN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SAR_CFG_TXINT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SAR_CFG_TXUIE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SAR_CFG_TXSFI, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @SAR_REG_CFG, align 4
  %30 = call i32 @readl(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* @SAR_REG_CFG, align 4
  %35 = call i32 @writel(i32 %33, i32 %34)
  %36 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %37 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DIPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local i32 @close_card_oam(%struct.idt77252_dev*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @DIPRINTK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
