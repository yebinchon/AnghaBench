; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_ib_init_qp_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_ib_init_qp_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32 }
%struct.ib_qp_attr = type { i64, i32, i32, i32 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.ib_qp_attr*, i32*)* @cma_ib_init_qp_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_ib_init_qp_attr(%struct.rdma_id_private* %0, %struct.ib_qp_attr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rdma_dev_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %12 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.rdma_dev_addr* %15, %struct.rdma_dev_addr** %8, align 8
  %16 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %17 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %21 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @rdma_port_get_link_layer(i32 %19, i32 %23)
  %25 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %29 = call i32 @ib_addr_get_pkey(%struct.rdma_dev_addr* %28)
  store i32 %29, i32* %10, align 4
  br label %31

30:                                               ; preds = %3
  store i32 65535, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %33 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %37 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %42 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %41, i32 0, i32 3
  %43 = call i32 @ib_find_cached_pkey(i32 %35, i32 %39, i32 %40, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %92

48:                                               ; preds = %31
  %49 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %50 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %54 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @IB_QP_STATE, align 4
  %56 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IB_QP_PORT, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %62 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IB_QPT_UD, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %48
  %68 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %69 = call i32 @cma_set_qkey(%struct.rdma_id_private* %68, i32 0)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %92

74:                                               ; preds = %67
  %75 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %76 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %79 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @IB_QP_QKEY, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %91

84:                                               ; preds = %48
  %85 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %74
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %72, %46
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @rdma_port_get_link_layer(i32, i32) #1

declare dso_local i32 @ib_addr_get_pkey(%struct.rdma_dev_addr*) #1

declare dso_local i32 @ib_find_cached_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
