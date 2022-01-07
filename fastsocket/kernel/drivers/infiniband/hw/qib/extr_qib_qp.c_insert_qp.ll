; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_insert_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_insert_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibdev = type { i32, i32* }
%struct.qib_qp = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qib_ibport = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ibdev*, %struct.qib_qp*)* @insert_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_qp(%struct.qib_ibdev* %0, %struct.qib_qp* %1) #0 {
  %3 = alloca %struct.qib_ibdev*, align 8
  %4 = alloca %struct.qib_qp*, align 8
  %5 = alloca %struct.qib_ibport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qib_ibdev* %0, %struct.qib_ibdev** %3, align 8
  store %struct.qib_qp* %1, %struct.qib_qp** %4, align 8
  %8 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %9 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %13 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qib_ibport* @to_iport(i32 %11, i32 %14)
  store %struct.qib_ibport* %15, %struct.qib_ibport** %5, align 8
  %16 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %17 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %18 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @qpn_hash(%struct.qib_ibdev* %16, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %23 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %27 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %26, i32 0, i32 2
  %28 = call i32 @atomic_inc(i32* %27)
  %29 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %30 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %36 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %39 = call i32 @rcu_assign_pointer(i32 %37, %struct.qib_qp* %38)
  br label %72

40:                                               ; preds = %2
  %41 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %42 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %48 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %51 = call i32 @rcu_assign_pointer(i32 %49, %struct.qib_qp* %50)
  br label %71

52:                                               ; preds = %40
  %53 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %54 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %61 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %63 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %70 = call i32 @rcu_assign_pointer(i32 %68, %struct.qib_qp* %69)
  br label %71

71:                                               ; preds = %52, %46
  br label %72

72:                                               ; preds = %71, %34
  %73 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %74 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %73, i32 0, i32 0
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = call i32 (...) @synchronize_rcu()
  ret void
}

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @qpn_hash(%struct.qib_ibdev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.qib_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
