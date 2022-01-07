; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_stop_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32 }

@DMAC_CONTROL = common dso_local global i32 0, align 4
@DMAC_CONTROL_ST_ = common dso_local global i32 0, align 4
@DMAC_STATUS = common dso_local global i32 0, align 4
@DMAC_STS_TS_ = common dso_local global i32 0, align 4
@IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TX DMAC failed to stop\00", align 1
@DMAC_STS_TXPS_ = common dso_local global i32 0, align 4
@DMAC_INTR_ENA = common dso_local global i32 0, align 4
@DMAC_INTR_ENA_TX_ = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_TXEN_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc9420_pdata*)* @smsc9420_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_stop_tx(%struct.smsc9420_pdata* %0) #0 {
  %2 = alloca %struct.smsc9420_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %2, align 8
  store i32 1000, i32* %6, align 4
  %7 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %8 = load i32, i32* @DMAC_CONTROL, align 4
  %9 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @DMAC_CONTROL_ST_, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %15 = load i32, i32* @DMAC_CONTROL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %30, %1
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %24 = load i32, i32* @DMAC_STATUS, align 4
  %25 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %23, i32 %24)
  %26 = load i32, i32* @DMAC_STS_TS_, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %32

30:                                               ; preds = %22
  %31 = call i32 @udelay(i32 10)
  br label %18

32:                                               ; preds = %29, %18
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @IFDOWN, align 4
  %37 = call i32 @smsc_warn(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %40 = load i32, i32* @DMAC_STATUS, align 4
  %41 = load i32, i32* @DMAC_STS_TXPS_, align 4
  %42 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %39, i32 %40, i32 %41)
  %43 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %44 = load i32, i32* @DMAC_INTR_ENA, align 4
  %45 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @DMAC_INTR_ENA_TX_, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %51 = load i32, i32* @DMAC_INTR_ENA, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %50, i32 %51, i32 %52)
  %54 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %55 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %54)
  %56 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %57 = load i32, i32* @MAC_CR, align 4
  %58 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %56, i32 %57)
  %59 = load i32, i32* @MAC_CR_TXEN_, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, i32* %4, align 4
  %62 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %63 = load i32, i32* @MAC_CR, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %62, i32 %63, i32 %64)
  %66 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %67 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %66)
  ret void
}

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smsc_warn(i32, i8*) #1

declare dso_local i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
