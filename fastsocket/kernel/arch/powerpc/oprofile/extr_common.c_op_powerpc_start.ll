; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_common.c_op_powerpc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_common.c_op_powerpc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i64 }

@op_per_cpu_rc = common dso_local global i32 0, align 4
@model = common dso_local global %struct.TYPE_2__* null, align 8
@ctr = common dso_local global i32 0, align 4
@op_powerpc_cpu_start = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @op_powerpc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_powerpc_start() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @op_per_cpu_rc, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32 (i32)*, i32 (i32)** %3, align 8
  %5 = icmp ne i32 (i32)* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = load i32, i32* @ctr, align 4
  %11 = call i32 %9(i32 %10)
  store i32 %11, i32* %1, align 4
  br label %24

12:                                               ; preds = %0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @model, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @op_powerpc_cpu_start, align 4
  %19 = call i32 @on_each_cpu(i32 %18, i32* null, i32 1)
  %20 = load i32, i32* @op_per_cpu_rc, align 4
  store i32 %20, i32* %1, align 4
  br label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %21, %17, %6
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
