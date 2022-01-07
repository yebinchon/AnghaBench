; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_tx_set_carrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_tx_set_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i32, i32, i32 }

@ENE_CIRCFG = common dso_local global i32 0, align 4
@ENE_CIRCFG_TX_CARR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"TX: pulse distance = %d * 500 ns\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"TX: pulse width = %d * 500 ns\00", align 1
@ENE_CIRMOD_PRD = common dso_local global i32 0, align 4
@ENE_CIRMOD_PRD_POL = common dso_local global i32 0, align 4
@ENE_CIRMOD_HPRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_tx_set_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_tx_set_carrier(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %5 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %6 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %5, i32 0, i32 2
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %10 = load i32, i32* @ENE_CIRCFG, align 4
  %11 = load i32, i32* @ENE_CIRCFG_TX_CARR, align 4
  %12 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %13 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ene_set_clear_reg_mask(%struct.ene_device* %9, i32 %10, i32 %11, i32 %16)
  %18 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %19 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %67

23:                                               ; preds = %1
  %24 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %25 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 100
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %30 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %31, 0
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ true, %23 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %38 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %41 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 100, %42
  %44 = sdiv i32 %39, %43
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %33
  %49 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %50 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %56 = load i32, i32* @ENE_CIRMOD_PRD, align 4
  %57 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %58 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ENE_CIRMOD_PRD_POL, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @ene_write_reg(%struct.ene_device* %55, i32 %56, i32 %61)
  %63 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %64 = load i32, i32* @ENE_CIRMOD_HPRD, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @ene_write_reg(%struct.ene_device* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %48, %22
  %68 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %69 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %68, i32 0, i32 2
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ene_set_clear_reg_mask(%struct.ene_device*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @ene_write_reg(%struct.ene_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
