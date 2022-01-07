; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_cq_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_mthca_cq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mthca_cq = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_6__*, i32)* }

@.str = private unnamed_addr constant [36 x i8] c"Completion event for bogus CQ %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_cq_completion(%struct.mthca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_cq*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %9, %14
  %16 = call %struct.mthca_cq* @mthca_array_get(i32* %8, i32 %15)
  store %struct.mthca_cq* %16, %struct.mthca_cq** %5, align 8
  %17 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %18 = icmp ne %struct.mthca_cq* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @mthca_warn(%struct.mthca_dev* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %25 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %29 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %30, align 8
  %32 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %33 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %32, i32 0, i32 0
  %34 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %35 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %31(%struct.TYPE_6__* %33, i32 %37)
  br label %39

39:                                               ; preds = %23, %19
  ret void
}

declare dso_local %struct.mthca_cq* @mthca_array_get(i32*, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
