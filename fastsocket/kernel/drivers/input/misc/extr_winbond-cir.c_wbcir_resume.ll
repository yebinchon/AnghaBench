; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.wbcir_data = type { i64, i64 }

@WBCIR_REG_WCEIR_EV_EN = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_CTL = common dso_local global i64 0, align 8
@WBCIR_IRQ_RX = common dso_local global i32 0, align 4
@WBCIR_IRQ_ERR = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*)* @wbcir_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_resume(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.wbcir_data*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %5 = call %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev* %4)
  store %struct.wbcir_data* %5, %struct.wbcir_data** %3, align 8
  %6 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %7 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @WBCIR_REG_WCEIR_EV_EN, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @wbcir_set_bits(i64 %10, i32 0, i32 7)
  %12 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %13 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WBCIR_REG_WCEIR_CTL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @wbcir_set_bits(i64 %16, i32 0, i32 1)
  %18 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %19 = call i32 @wbcir_reset_irdata(%struct.wbcir_data* %18)
  %20 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %21 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %24 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WBCIR_REG_SP3_IER, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 %22, i64 %27)
  ret i32 0
}

declare dso_local %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

declare dso_local i32 @wbcir_reset_irdata(%struct.wbcir_data*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
