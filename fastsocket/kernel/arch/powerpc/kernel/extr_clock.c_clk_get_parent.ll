; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_clock.c_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_clock.c_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.clk* (%struct.clk*)* }
%struct.clk = type { i32 }

@clk_functions = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @clk_get_parent(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %4 = load %struct.clk* (%struct.clk*)*, %struct.clk* (%struct.clk*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_functions, i32 0, i32 0), align 8
  %5 = icmp ne %struct.clk* (%struct.clk*)* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.clk* (%struct.clk*)*, %struct.clk* (%struct.clk*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_functions, i32 0, i32 0), align 8
  %8 = load %struct.clk*, %struct.clk** %3, align 8
  %9 = call %struct.clk* %7(%struct.clk* %8)
  store %struct.clk* %9, %struct.clk** %2, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOSYS, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.clk* @ERR_PTR(i32 %12)
  store %struct.clk* %13, %struct.clk** %2, align 8
  br label %14

14:                                               ; preds = %10, %6
  %15 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %15
}

declare dso_local %struct.clk* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
