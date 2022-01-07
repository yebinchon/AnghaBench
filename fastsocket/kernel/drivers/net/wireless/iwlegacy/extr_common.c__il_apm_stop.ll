; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c__il_apm_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c__il_apm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Stop card, put in low power state\0A\00", align 1
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_SW_RESET = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_INIT_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_il_apm_stop(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %4 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %3, i32 0, i32 0
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = call i32 @D_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %8 = call i32 @_il_apm_stop_master(%struct.il_priv* %7)
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = load i32, i32* @CSR_RESET, align 4
  %11 = load i32, i32* @CSR_RESET_REG_FLAG_SW_RESET, align 4
  %12 = call i32 @_il_set_bit(%struct.il_priv* %9, i32 %10, i32 %11)
  %13 = call i32 @udelay(i32 10)
  %14 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %15 = load i32, i32* @CSR_GP_CNTRL, align 4
  %16 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_INIT_DONE, align 4
  %17 = call i32 @_il_clear_bit(%struct.il_priv* %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @_il_apm_stop_master(%struct.il_priv*) #1

declare dso_local i32 @_il_set_bit(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_il_clear_bit(%struct.il_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
