; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_lookup_qpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_lookup_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qib_ibport = type { i32, i32 }
%struct.qib_ibdev = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qib_ibdev }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qib_qp* @qib_lookup_qpn(%struct.qib_ibport* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_ibport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_qp*, align 8
  %6 = alloca %struct.qib_ibdev*, align 8
  %7 = alloca i32, align 4
  store %struct.qib_ibport* %0, %struct.qib_ibport** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.qib_qp* null, %struct.qib_qp** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %19 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.qib_qp* @rcu_dereference(i32 %20)
  store %struct.qib_qp* %21, %struct.qib_qp** %5, align 8
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %24 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.qib_qp* @rcu_dereference(i32 %25)
  store %struct.qib_qp* %26, %struct.qib_qp** %5, align 8
  br label %27

27:                                               ; preds = %22, %17
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %30 = call %struct.TYPE_6__* @ppd_from_ibp(%struct.qib_ibport* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.qib_ibdev* %33, %struct.qib_ibdev** %6, align 8
  %34 = load %struct.qib_ibdev*, %struct.qib_ibdev** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @qpn_hash(%struct.qib_ibdev* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.qib_ibdev*, %struct.qib_ibdev** %6, align 8
  %39 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.qib_qp* @rcu_dereference(i32 %44)
  store %struct.qib_qp* %45, %struct.qib_qp** %5, align 8
  br label %46

46:                                               ; preds = %58, %28
  %47 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %48 = icmp ne %struct.qib_qp* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %51 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %63

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %60 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.qib_qp* @rcu_dereference(i32 %61)
  store %struct.qib_qp* %62, %struct.qib_qp** %5, align 8
  br label %46

63:                                               ; preds = %56, %46
  br label %64

64:                                               ; preds = %63, %27
  %65 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %66 = icmp ne %struct.qib_qp* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %69 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %68, i32 0, i32 0
  %70 = call i32 @atomic_inc_not_zero(i32* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store %struct.qib_qp* null, %struct.qib_qp** %5, align 8
  br label %77

77:                                               ; preds = %76, %67
  br label %78

78:                                               ; preds = %77, %64
  %79 = call i32 (...) @rcu_read_unlock()
  %80 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  ret %struct.qib_qp* %80
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.qib_qp* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_6__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @qpn_hash(%struct.qib_ibdev*, i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
