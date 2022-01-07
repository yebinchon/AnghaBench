; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_common.c_op_powerpc_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_common.c_op_powerpc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32*, i32)*, i32 }

@op_per_cpu_rc = common dso_local global i32 0, align 4
@op_handle_interrupt = common dso_local global i32 0, align 4
@model = common dso_local global %struct.TYPE_2__* null, align 8
@ctr = common dso_local global i32 0, align 4
@sys = common dso_local global i32 0, align 4
@op_powerpc_cpu_setup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @op_powerpc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_powerpc_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* @op_per_cpu_rc, align 4
  %3 = load i32, i32* @op_handle_interrupt, align 4
  %4 = call i32 @reserve_pmc_hardware(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %31

9:                                                ; preds = %0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %11, align 8
  %13 = load i32, i32* @ctr, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %12(i32 %13, i32* @sys, i32 %16)
  store i32 %17, i32* @op_per_cpu_rc, align 4
  %18 = load i32, i32* @op_per_cpu_rc, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %24

21:                                               ; preds = %9
  %22 = load i32, i32* @op_powerpc_cpu_setup, align 4
  %23 = call i32 @on_each_cpu(i32 %22, i32* null, i32 1)
  br label %24

24:                                               ; preds = %21, %20
  %25 = load i32, i32* @op_per_cpu_rc, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @release_pmc_hardware()
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* @op_per_cpu_rc, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %7
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @reserve_pmc_hardware(i32) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i32 @release_pmc_hardware(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
