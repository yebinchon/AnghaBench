; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_c2_alloc_qpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_c2_alloc_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.c2_qp = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_dev*, %struct.c2_qp*)* @c2_alloc_qpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2_alloc_qpn(%struct.c2_dev* %0, %struct.c2_qp* %1) #0 {
  %3 = alloca %struct.c2_dev*, align 8
  %4 = alloca %struct.c2_qp*, align 8
  %5 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %3, align 8
  store %struct.c2_qp* %1, %struct.c2_qp** %4, align 8
  br label %6

6:                                                ; preds = %39, %2
  %7 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %8 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %12 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %15 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %16 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %21 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %20, i32 0, i32 0
  %22 = call i32 @idr_get_new_above(i32* %13, %struct.c2_qp* %14, i32 %18, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %24 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_irq(i32* %25)
  br label %27

27:                                               ; preds = %6
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %34 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i64 @idr_pre_get(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %32, %27
  %40 = phi i1 [ false, %27 ], [ %38, %32 ]
  br i1 %40, label %6, label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @idr_get_new_above(i32*, %struct.c2_qp*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @idr_pre_get(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
