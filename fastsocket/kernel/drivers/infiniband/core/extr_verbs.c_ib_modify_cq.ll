; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_modify_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_modify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_modify_cq(%struct.ib_cq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %8 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.ib_cq*, i32, i32)**
  %12 = load i32 (%struct.ib_cq*, i32, i32)*, i32 (%struct.ib_cq*, i32, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.ib_cq*, i32, i32)* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %16 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.ib_cq*, i32, i32)**
  %20 = load i32 (%struct.ib_cq*, i32, i32)*, i32 (%struct.ib_cq*, i32, i32)** %19, align 8
  %21 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 %20(%struct.ib_cq* %21, i32 %22, i32 %23)
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOSYS, align 4
  %27 = sub nsw i32 0, %26
  br label %28

28:                                               ; preds = %25, %14
  %29 = phi i32 [ %24, %14 ], [ %27, %25 ]
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
