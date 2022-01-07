; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/oprofile/extr_op_model_sh7750.c_sh7750_ppc_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/oprofile/extr_op_model_sh7750.c_sh7750_ppc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@op_model_sh7750_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PMCR_PMCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sh7750_ppc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh7750_ppc_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @op_model_sh7750_ops, i32 0, i32 0), align 4
  store i32 %3, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @PMCR(i32 %9)
  %11 = call i32 @__raw_readw(i32 %10)
  %12 = load i32, i32* @PMCR_PMCLR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @PMCR(i32 %14)
  %16 = call i32 @__raw_writew(i32 %13, i32 %15)
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %4

20:                                               ; preds = %4
  ret void
}

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @PMCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
