; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_no_bufs_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_no_bufs_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qib_ibdev = type { i32, i32, i32 }
%struct.qib_devdata = type { i32 (%struct.qib_devdata*, i32)* }

@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@QIB_S_WAIT_PIO = common dso_local global i32 0, align 4
@QIB_S_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_qp*)* @no_bufs_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @no_bufs_available(%struct.qib_qp* %0) #0 {
  %2 = alloca %struct.qib_qp*, align 8
  %3 = alloca %struct.qib_ibdev*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qib_qp* %0, %struct.qib_qp** %2, align 8
  %7 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %8 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.qib_ibdev* @to_idev(i32 %10)
  store %struct.qib_ibdev* %11, %struct.qib_ibdev** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %13 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %12, i32 0, i32 1
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32*, i32** @ib_qib_state_ops, align 8
  %17 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %18 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @QIB_PROCESS_RECV_OK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %1
  %26 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %27 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %30 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %29, i32 0, i32 3
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %25
  %34 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %35 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @QIB_S_WAIT_PIO, align 4
  %39 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %40 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %44 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %43, i32 0, i32 3
  %45 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %46 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %45, i32 0, i32 1
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %49 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %48)
  store %struct.qib_devdata* %49, %struct.qib_devdata** %4, align 8
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 0
  %52 = load i32 (%struct.qib_devdata*, i32)*, i32 (%struct.qib_devdata*, i32)** %51, align 8
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %54 = call i32 %52(%struct.qib_devdata* %53, i32 1)
  br label %55

55:                                               ; preds = %33, %25
  %56 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %57 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load i32, i32* @QIB_S_BUSY, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %62 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %55, %1
  %68 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %69 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %68, i32 0, i32 1
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
