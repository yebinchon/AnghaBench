; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_read_targ_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_read_targ_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@HBUS_TARG_MEM_RADDR = common dso_local global i32 0, align 4
@HBUS_TARG_MEM_RDAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_read_targ_mem(%struct.il_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = call i32 @_il_grab_nic_access(%struct.il_priv* %11)
  %13 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %14 = load i32, i32* @HBUS_TARG_MEM_RADDR, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @_il_wr(%struct.il_priv* %13, i32 %14, i32 %15)
  %17 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %18 = load i32, i32* @HBUS_TARG_MEM_RDAT, align 4
  %19 = call i32 @_il_rd(%struct.il_priv* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %21 = call i32 @_il_release_nic_access(%struct.il_priv* %20)
  %22 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_il_grab_nic_access(%struct.il_priv*) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @_il_release_nic_access(%struct.il_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
