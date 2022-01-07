; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_free_all_qps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_free_all_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.TYPE_2__*, %struct.qib_ibdev }
%struct.TYPE_2__ = type { %struct.qib_ibport }
%struct.qib_ibport = type { i32, i32 }
%struct.qib_ibdev = type { i32, i32, i32* }
%struct.qib_qp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_free_all_qps(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.qib_ibdev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qib_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_ibport*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 2
  store %struct.qib_ibdev* %10, %struct.qib_ibdev** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %52, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.qib_ibport* %24, %struct.qib_ibport** %8, align 8
  %25 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %26 = call i32 @qib_mcast_tree_empty(%struct.qib_ibport* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %17
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %34 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @rcu_dereference(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %43 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @rcu_dereference(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = call i32 (...) @rcu_read_unlock()
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %11

55:                                               ; preds = %11
  %56 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %57 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %56, i32 0, i32 1
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %101, %55
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %63 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %104

66:                                               ; preds = %60
  %67 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %68 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %75 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %74, i32 0, i32 1
  %76 = call i32 @lockdep_is_held(i32* %75)
  %77 = call %struct.qib_qp* @rcu_dereference_protected(i32 %73, i32 %76)
  store %struct.qib_qp* %77, %struct.qib_qp** %5, align 8
  %78 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %79 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rcu_assign_pointer(i32 %84, i32* null)
  br label %86

86:                                               ; preds = %92, %66
  %87 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %88 = icmp ne %struct.qib_qp* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89
  %93 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %94 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %97 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %96, i32 0, i32 1
  %98 = call i32 @lockdep_is_held(i32* %97)
  %99 = call %struct.qib_qp* @rcu_dereference_protected(i32 %95, i32 %98)
  store %struct.qib_qp* %99, %struct.qib_qp** %5, align 8
  br label %86

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %60

104:                                              ; preds = %60
  %105 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %106 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %105, i32 0, i32 1
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = call i32 (...) @synchronize_rcu()
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @qib_mcast_tree_empty(%struct.qib_ibport*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.qib_qp* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
