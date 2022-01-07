; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_create_qp0_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_create_qp0_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.qib_ibport = type { i32 }
%struct.ib_ah_attr = type { i32, i32 }
%struct.qib_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_ah* @qib_create_qp0_ah(%struct.qib_ibport* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_ibport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_ah_attr, align 4
  %6 = alloca %struct.ib_ah*, align 8
  %7 = alloca %struct.qib_qp*, align 8
  store %struct.qib_ibport* %0, %struct.qib_ibport** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.ib_ah* @ERR_PTR(i32 %9)
  store %struct.ib_ah* %10, %struct.ib_ah** %6, align 8
  %11 = call i32 @memset(%struct.ib_ah_attr* %5, i32 0, i32 8)
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %15 = call %struct.TYPE_4__* @ppd_from_ibp(%struct.qib_ibport* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %21 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.qib_qp* @rcu_dereference(i32 %22)
  store %struct.qib_qp* %23, %struct.qib_qp** %7, align 8
  %24 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %25 = icmp ne %struct.qib_qp* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %28 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ib_ah* @ib_create_ah(i32 %30, %struct.ib_ah_attr* %5)
  store %struct.ib_ah* %31, %struct.ib_ah** %6, align 8
  br label %32

32:                                               ; preds = %26, %2
  %33 = call i32 (...) @rcu_read_unlock()
  %34 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  ret %struct.ib_ah* %34
}

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.qib_qp* @rcu_dereference(i32) #1

declare dso_local %struct.ib_ah* @ib_create_ah(i32, %struct.ib_ah_attr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
