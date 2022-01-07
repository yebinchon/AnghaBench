; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_mipsxx.c_mipsxx_cpu_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_mipsxx.c_mipsxx_cpu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@op_model_mipsxx_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@WHAT = common dso_local global i32 0, align 4
@reg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mipsxx_cpu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipsxx_cpu_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @op_model_mipsxx_ops, i32 0, i32 0), align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %34 [
    i32 4, label %6
    i32 3, label %13
    i32 2, label %20
    i32 1, label %27
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @WHAT, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %7, %10
  %12 = call i32 @w_c0_perfctrl3(i32 %11)
  br label %13

13:                                               ; preds = %1, %6
  %14 = load i32, i32* @WHAT, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %14, %17
  %19 = call i32 @w_c0_perfctrl2(i32 %18)
  br label %20

20:                                               ; preds = %1, %13
  %21 = load i32, i32* @WHAT, align 4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = call i32 @w_c0_perfctrl1(i32 %25)
  br label %27

27:                                               ; preds = %1, %20
  %28 = load i32, i32* @WHAT, align 4
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = call i32 @w_c0_perfctrl0(i32 %32)
  br label %34

34:                                               ; preds = %27, %1
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
