; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/oprofile/extr_common.c_op_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/oprofile/extr_common.c_op_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_4__*, i64)*, i32 (i64, %struct.pt_regs*, i32)* }
%struct.TYPE_4__ = type { i64 }
%struct.pt_regs = type { i32 }

@model = common dso_local global %struct.TYPE_5__* null, align 8
@ctr = common dso_local global i32 0, align 4
@reg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.pt_regs*)* @op_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_handle_interrupt(i64 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @model, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i32 (i64, %struct.pt_regs*, i32)*, i32 (i64, %struct.pt_regs*, i32)** %6, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = load i32, i32* @ctr, align 4
  %11 = call i32 %7(i64 %8, %struct.pt_regs* %9, i32 %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 0), align 8
  %13 = load i64, i64* %3, align 8
  %14 = lshr i64 %12, %13
  %15 = and i64 %14, 1
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @model, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_4__*, i64)*, i32 (%struct.TYPE_4__*, i64)** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 %20(%struct.TYPE_4__* @reg, i64 %21)
  br label %23

23:                                               ; preds = %17, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
