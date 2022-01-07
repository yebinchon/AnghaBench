; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_mipsxx.c_mipsxx_cpu_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_mipsxx.c_mipsxx_cpu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@op_model_mipsxx_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mipsxx_cpu_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipsxx_cpu_stop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @op_model_mipsxx_ops, i32 0, i32 0), align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %14 [
    i32 4, label %6
    i32 3, label %8
    i32 2, label %10
    i32 1, label %12
  ]

6:                                                ; preds = %1
  %7 = call i32 @w_c0_perfctrl3(i32 0)
  br label %8

8:                                                ; preds = %1, %6
  %9 = call i32 @w_c0_perfctrl2(i32 0)
  br label %10

10:                                               ; preds = %1, %8
  %11 = call i32 @w_c0_perfctrl1(i32 0)
  br label %12

12:                                               ; preds = %1, %10
  %13 = call i32 @w_c0_perfctrl0(i32 0)
  br label %14

14:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @w_c0_perfctrl3(i32) #1

declare dso_local i32 @w_c0_perfctrl2(i32) #1

declare dso_local i32 @w_c0_perfctrl1(i32) #1

declare dso_local i32 @w_c0_perfctrl0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
