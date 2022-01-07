; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_alloc_fast_reg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_alloc_fast_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.qib_mr = type { %struct.ib_mr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @qib_alloc_fast_reg_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qib_mr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %9 = call %struct.qib_mr* @alloc_mr(i32 %7, %struct.ib_pd* %8)
  store %struct.qib_mr* %9, %struct.qib_mr** %6, align 8
  %10 = load %struct.qib_mr*, %struct.qib_mr** %6, align 8
  %11 = call i64 @IS_ERR(%struct.qib_mr* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.qib_mr*, %struct.qib_mr** %6, align 8
  %15 = bitcast %struct.qib_mr* %14 to %struct.ib_mr*
  store %struct.ib_mr* %15, %struct.ib_mr** %3, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.qib_mr*, %struct.qib_mr** %6, align 8
  %18 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %17, i32 0, i32 0
  store %struct.ib_mr* %18, %struct.ib_mr** %3, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %20
}

declare dso_local %struct.qib_mr* @alloc_mr(i32, %struct.ib_pd*) #1

declare dso_local i64 @IS_ERR(%struct.qib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
