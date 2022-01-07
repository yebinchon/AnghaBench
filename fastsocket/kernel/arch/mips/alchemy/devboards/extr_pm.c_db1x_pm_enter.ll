; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/devboards/extr_pm.c_db1x_pm_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/devboards/extr_pm.c_db1x_pm_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_WAKEMSK = common dso_local global i32 0, align 4
@SYS_WAKESRC = common dso_local global i32 0, align 4
@db1x_pm_wakemsk = common dso_local global i64 0, align 8
@SYS_COUNTER_CNTRL = common dso_local global i32 0, align 4
@SYS_CNTRL_M20 = common dso_local global i32 0, align 4
@SYS_TOYREAD = common dso_local global i32 0, align 4
@db1x_pm_sleep_secs = common dso_local global i64 0, align 8
@SYS_TOYMATCH2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @db1x_pm_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db1x_pm_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @alchemy_gpio1_input_enable()
  %4 = load i32, i32* @SYS_WAKEMSK, align 4
  %5 = call i32 @au_writel(i64 0, i32 %4)
  %6 = call i32 (...) @au_sync()
  %7 = load i32, i32* @SYS_WAKESRC, align 4
  %8 = call i32 @au_writel(i64 0, i32 %7)
  %9 = call i32 (...) @au_sync()
  %10 = load i64, i64* @db1x_pm_wakemsk, align 8
  %11 = load i32, i32* @SYS_WAKEMSK, align 4
  %12 = call i32 @au_writel(i64 %10, i32 %11)
  %13 = call i32 (...) @au_sync()
  br label %14

14:                                               ; preds = %20, %1
  %15 = load i32, i32* @SYS_COUNTER_CNTRL, align 4
  %16 = call i32 @au_readl(i32 %15)
  %17 = load i32, i32* @SYS_CNTRL_M20, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %14

21:                                               ; preds = %14
  %22 = load i32, i32* @SYS_TOYREAD, align 4
  %23 = call i32 @au_readl(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @db1x_pm_sleep_secs, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @SYS_TOYMATCH2, align 4
  %28 = call i32 @au_writel(i64 %26, i32 %27)
  %29 = call i32 (...) @au_sync()
  br label %30

30:                                               ; preds = %36, %21
  %31 = load i32, i32* @SYS_COUNTER_CNTRL, align 4
  %32 = call i32 @au_readl(i32 %31)
  %33 = load i32, i32* @SYS_CNTRL_M20, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %30

37:                                               ; preds = %30
  %38 = call i32 (...) @au_sleep()
  ret i32 0
}

declare dso_local i32 @alchemy_gpio1_input_enable(...) #1

declare dso_local i32 @au_writel(i64, i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @au_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 803}
!3 = !{i32 966}
