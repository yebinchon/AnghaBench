; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_init_hpdi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_init_hpdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_2__ = type { i64, i64, i8*, i8* }

@BOARD_RESET_BIT = common dso_local global i32 0, align 4
@BOARD_CONTROL_REG = common dso_local global i64 0, align 8
@RX_PROG_ALMOST_REG = common dso_local global i64 0, align 8
@TX_PROG_ALMOST_REG = common dso_local global i64 0, align 8
@TX_FIFO_SIZE_REG = common dso_local global i64 0, align 8
@RX_FIFO_SIZE_REG = common dso_local global i64 0, align 8
@INTERRUPT_CONTROL_REG = common dso_local global i64 0, align 8
@ICS_AERR = common dso_local global i32 0, align 4
@ICS_PERR = common dso_local global i32 0, align 4
@ICS_PIE = common dso_local global i32 0, align 4
@ICS_PLIE = common dso_local global i32 0, align 4
@ICS_PAIE = common dso_local global i32 0, align 4
@ICS_LIE = common dso_local global i32 0, align 4
@ICS_DMA0_E = common dso_local global i32 0, align 4
@PLX_INTRCS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @init_hpdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hpdi(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load i32, i32* @BOARD_RESET_BIT, align 4
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BOARD_CONTROL_REG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %4, i64 %10)
  %12 = call i32 @udelay(i32 10)
  %13 = call i32 @almost_empty_bits(i32 32)
  %14 = call i32 @almost_full_bits(i32 32)
  %15 = or i32 %13, %14
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RX_PROG_ALMOST_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %15, i64 %21)
  %23 = call i32 @almost_empty_bits(i32 32)
  %24 = call i32 @almost_full_bits(i32 32)
  %25 = or i32 %23, %24
  %26 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %27 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TX_PROG_ALMOST_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %25, i64 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %34 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TX_FIFO_SIZE_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  %40 = call i8* @fifo_size(i32 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %42 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i8* %40, i8** %43, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RX_FIFO_SIZE_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  %51 = call i8* @fifo_size(i32 %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %53 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %56 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @INTERRUPT_CONTROL_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 0, i64 %60)
  %62 = load i32, i32* @ICS_AERR, align 4
  %63 = load i32, i32* @ICS_PERR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ICS_PIE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ICS_PLIE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ICS_PAIE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ICS_LIE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @ICS_DMA0_E, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %77 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PLX_INTRCS_REG, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %75, i64 %81)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @almost_empty_bits(i32) #1

declare dso_local i32 @almost_full_bits(i32) #1

declare dso_local i8* @fifo_size(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
