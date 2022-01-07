; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_irq_cascade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/52xx/extr_mpc52xx_gpt.c_mpc52xx_gpt_irq_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.mpc52xx_gpt_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MPC52xx_GPT_STATUS_IRQMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc52xx_gpt_irq_cascade(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.mpc52xx_gpt_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mpc52xx_gpt_priv* @get_irq_data(i32 %8)
  store %struct.mpc52xx_gpt_priv* %9, %struct.mpc52xx_gpt_priv** %5, align 8
  %10 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @in_be32(i32* %13)
  %15 = load i32, i32* @MPC52xx_GPT_STATUS_IRQMASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.mpc52xx_gpt_priv*, %struct.mpc52xx_gpt_priv** %5, align 8
  %21 = getelementptr inbounds %struct.mpc52xx_gpt_priv, %struct.mpc52xx_gpt_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @irq_linear_revmap(i32 %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @generic_handle_irq(i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  ret void
}

declare dso_local %struct.mpc52xx_gpt_priv* @get_irq_data(i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
