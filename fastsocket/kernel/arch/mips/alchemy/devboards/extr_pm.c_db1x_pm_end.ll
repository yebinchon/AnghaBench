; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/devboards/extr_pm.c_db1x_pm_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/devboards/extr_pm.c_db1x_pm_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_WAKESRC = common dso_local global i32 0, align 4
@db1x_pm_last_wakesrc = common dso_local global i32 0, align 4
@SYS_WAKEMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @db1x_pm_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db1x_pm_end() #0 {
  %1 = load i32, i32* @SYS_WAKESRC, align 4
  %2 = call i32 @au_readl(i32 %1)
  store i32 %2, i32* @db1x_pm_last_wakesrc, align 4
  %3 = load i32, i32* @SYS_WAKEMSK, align 4
  %4 = call i32 @au_writel(i32 0, i32 %3)
  %5 = load i32, i32* @SYS_WAKESRC, align 4
  %6 = call i32 @au_writel(i32 0, i32 %5)
  %7 = call i32 (...) @au_sync()
  ret void
}

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @au_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
