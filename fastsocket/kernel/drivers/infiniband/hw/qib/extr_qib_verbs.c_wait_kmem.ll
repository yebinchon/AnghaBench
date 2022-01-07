; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_wait_kmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_wait_kmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibdev = type { i32, i32, i32 }
%struct.qib_qp = type { i64, i32, i32, i32 }

@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@QIB_S_WAIT_KMEM = common dso_local global i32 0, align 4
@QIB_S_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ibdev*, %struct.qib_qp*)* @wait_kmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_kmem(%struct.qib_ibdev* %0, %struct.qib_qp* %1) #0 {
  %3 = alloca %struct.qib_ibdev*, align 8
  %4 = alloca %struct.qib_qp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qib_ibdev* %0, %struct.qib_ibdev** %3, align 8
  store %struct.qib_qp* %1, %struct.qib_qp** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %8 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32*, i32** @ib_qib_state_ops, align 8
  %12 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %13 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @QIB_PROCESS_RECV_OK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %2
  %21 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %22 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %25 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %24, i32 0, i32 3
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %20
  %29 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %30 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %29, i32 0, i32 1
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %35 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %34, i32 0, i32 2
  %36 = load i64, i64* @jiffies, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @mod_timer(i32* %35, i64 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* @QIB_S_WAIT_KMEM, align 4
  %41 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %42 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %46 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %45, i32 0, i32 3
  %47 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %48 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %47, i32 0, i32 1
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  br label %50

50:                                               ; preds = %39, %20
  %51 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %52 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32, i32* @QIB_S_BUSY, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %57 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %50, %2
  %63 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %64 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %63, i32 0, i32 1
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
