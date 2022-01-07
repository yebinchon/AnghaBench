; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mthca_ucontext = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_srq*)* @mthca_destroy_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_destroy_srq(%struct.ib_srq* %0) #0 {
  %2 = alloca %struct.ib_srq*, align 8
  %3 = alloca %struct.mthca_ucontext*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %2, align 8
  %4 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %5 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %10 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mthca_ucontext* @to_mucontext(i32 %13)
  store %struct.mthca_ucontext* %14, %struct.mthca_ucontext** %3, align 8
  %15 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %16 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @to_mdev(i32 %17)
  %19 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %3, align 8
  %20 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %19, i32 0, i32 1
  %21 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %3, align 8
  %22 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %25 = call %struct.TYPE_5__* @to_msrq(%struct.ib_srq* %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mthca_unmap_user_db(i32 %18, i32* %20, i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %8, %1
  %30 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %31 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @to_mdev(i32 %32)
  %34 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %35 = call %struct.TYPE_5__* @to_msrq(%struct.ib_srq* %34)
  %36 = call i32 @mthca_free_srq(i32 %33, %struct.TYPE_5__* %35)
  %37 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %38 = call i32 @kfree(%struct.ib_srq* %37)
  ret i32 0
}

declare dso_local %struct.mthca_ucontext* @to_mucontext(i32) #1

declare dso_local i32 @mthca_unmap_user_db(i32, i32*, i32, i32) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local %struct.TYPE_5__* @to_msrq(%struct.ib_srq*) #1

declare dso_local i32 @mthca_free_srq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.ib_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
