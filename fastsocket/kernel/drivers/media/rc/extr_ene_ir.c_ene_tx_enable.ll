; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_tx_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i32, i64 }

@ENE_CIRCFG = common dso_local global i32 0, align 4
@ENE_FW2 = common dso_local global i32 0, align 4
@ENE_FW2_EMMITER1_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"TX: Transmitter #1 is connected\00", align 1
@ENE_FW2_EMMITER2_CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"TX: Transmitter #2 is connected\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"TX: transmitter cable isn't connected!\00", align 1
@ENE_HW_C = common dso_local global i64 0, align 8
@ENE_CIRCFG_RX_EN = common dso_local global i32 0, align 4
@ENE_CIRCFG_TX_EN = common dso_local global i32 0, align 4
@ENE_CIRCFG_TX_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_tx_enable(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %5 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %6 = load i32, i32* @ENE_CIRCFG, align 4
  %7 = call i32 @ene_read_reg(%struct.ene_device* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %9 = load i32, i32* @ENE_FW2, align 4
  %10 = call i32 @ene_read_reg(%struct.ene_device* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %13 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ENE_FW2_EMMITER1_CONN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ENE_FW2_EMMITER2_CONN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ENE_FW2_EMMITER1_CONN, align 4
  %30 = load i32, i32* @ENE_FW2_EMMITER2_CONN, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = call i32 @ene_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %27
  %37 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %38 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ENE_HW_C, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @ENE_CIRCFG_RX_EN, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* @ENE_CIRCFG_TX_EN, align 4
  %49 = load i32, i32* @ENE_CIRCFG_TX_IRQ, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %54 = load i32, i32* @ENE_CIRCFG, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @ene_write_reg(%struct.ene_device* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @ene_read_reg(%struct.ene_device*, i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @ene_warn(i8*) #1

declare dso_local i32 @ene_write_reg(%struct.ene_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
