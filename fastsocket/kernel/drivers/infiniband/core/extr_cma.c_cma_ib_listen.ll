; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_ib_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_ib_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { %struct.ib_cm_id* }
%struct.ib_cm_id = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_cm_compare_data = type { i32 }
%struct.sockaddr = type { i32 }

@cma_req_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_ib_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_ib_listen(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.ib_cm_compare_data, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.ib_cm_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %10 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @cma_req_handler, align 4
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %15 = call %struct.ib_cm_id* @ib_create_cm_id(i32 %12, i32 %13, %struct.rdma_id_private* %14)
  store %struct.ib_cm_id* %15, %struct.ib_cm_id** %6, align 8
  %16 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %17 = call i64 @IS_ERR(%struct.ib_cm_id* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.ib_cm_id* %20)
  store i32 %21, i32* %2, align 4
  br label %75

22:                                               ; preds = %1
  %23 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %24 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %25 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.ib_cm_id* %23, %struct.ib_cm_id** %26, align 8
  %27 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %28 = call %struct.sockaddr* @cma_src_addr(%struct.rdma_id_private* %27)
  store %struct.sockaddr* %28, %struct.sockaddr** %5, align 8
  %29 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %30 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %29, i32 0, i32 1
  %31 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %32 = call i32 @rdma_get_service_id(%struct.TYPE_4__* %30, %struct.sockaddr* %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %34 = call i64 @cma_any_addr(%struct.sockaddr* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %22
  %37 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %38 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %43 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.ib_cm_id*, %struct.ib_cm_id** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ib_cm_listen(%struct.ib_cm_id* %45, i32 %46, i32 0, %struct.ib_cm_compare_data* null)
  store i32 %47, i32* %8, align 4
  br label %61

48:                                               ; preds = %36, %22
  %49 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %50 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %54 = call i32 @cma_set_compare_data(i32 %52, %struct.sockaddr* %53, %struct.ib_cm_compare_data* %4)
  %55 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %56 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.ib_cm_id*, %struct.ib_cm_id** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ib_cm_listen(%struct.ib_cm_id* %58, i32 %59, i32 0, %struct.ib_cm_compare_data* %4)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %48, %41
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %66 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.ib_cm_id*, %struct.ib_cm_id** %67, align 8
  %69 = call i32 @ib_destroy_cm_id(%struct.ib_cm_id* %68)
  %70 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %71 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store %struct.ib_cm_id* null, %struct.ib_cm_id** %72, align 8
  br label %73

73:                                               ; preds = %64, %61
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %19
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.ib_cm_id* @ib_create_cm_id(i32, i32, %struct.rdma_id_private*) #1

declare dso_local i64 @IS_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_cm_id*) #1

declare dso_local %struct.sockaddr* @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_get_service_id(%struct.TYPE_4__*, %struct.sockaddr*) #1

declare dso_local i64 @cma_any_addr(%struct.sockaddr*) #1

declare dso_local i32 @ib_cm_listen(%struct.ib_cm_id*, i32, i32, %struct.ib_cm_compare_data*) #1

declare dso_local i32 @cma_set_compare_data(i32, %struct.sockaddr*, %struct.ib_cm_compare_data*) #1

declare dso_local i32 @ib_destroy_cm_id(%struct.ib_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
