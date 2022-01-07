; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_init_qp_init_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_init_qp_init_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_id_private = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_qp_attr = type { i32, i32, i32 }

@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_id_private*, %struct.ib_qp_attr*, i32*)* @cm_init_qp_init_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_init_qp_init_attr(%struct.cm_id_private* %0, %struct.ib_qp_attr* %1, i32* %2) #0 {
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.ib_qp_attr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cm_id_private* %0, %struct.cm_id_private** %4, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %10 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %9, i32 0, i32 0
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %14 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %56 [
    i32 128, label %17
    i32 133, label %17
    i32 129, label %17
    i32 132, label %17
    i32 131, label %17
    i32 134, label %17
    i32 130, label %17
    i32 135, label %17
    i32 136, label %17
  ]

17:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3
  %18 = load i32, i32* @IB_QP_STATE, align 4
  %19 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IB_QP_PORT, align 4
  %24 = or i32 %22, %23
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %27 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %28 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %30 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %17
  %34 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %35 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %38 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %33, %17
  %42 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %43 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %47 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %49 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %55 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %8, align 4
  br label %59

56:                                               ; preds = %3
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %41
  %60 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %61 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %60, i32 0, i32 0
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
