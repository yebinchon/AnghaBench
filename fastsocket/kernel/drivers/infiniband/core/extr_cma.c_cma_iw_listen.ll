; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_iw_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_iw_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.iw_cm_id* }
%struct.iw_cm_id = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { i32 }
%struct.TYPE_3__ = type { i32 }

@iw_conn_req_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, i32)* @cma_iw_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_iw_listen(%struct.rdma_id_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.iw_cm_id*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @iw_conn_req_handler, align 4
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %15 = call %struct.iw_cm_id* @iw_create_cm_id(i32 %12, i32 %13, %struct.rdma_id_private* %14)
  store %struct.iw_cm_id* %15, %struct.iw_cm_id** %8, align 8
  %16 = load %struct.iw_cm_id*, %struct.iw_cm_id** %8, align 8
  %17 = call i64 @IS_ERR(%struct.iw_cm_id* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.iw_cm_id*, %struct.iw_cm_id** %8, align 8
  %21 = call i32 @PTR_ERR(%struct.iw_cm_id* %20)
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %2
  %23 = load %struct.iw_cm_id*, %struct.iw_cm_id** %8, align 8
  %24 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %25 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.iw_cm_id* %23, %struct.iw_cm_id** %26, align 8
  %27 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %28 = call i64 @cma_src_addr(%struct.rdma_id_private* %27)
  %29 = inttoptr i64 %28 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %29, %struct.sockaddr_in** %7, align 8
  %30 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %31 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.iw_cm_id*, %struct.iw_cm_id** %32, align 8
  %34 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %33, i32 0, i32 0
  %35 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %36 = bitcast %struct.sockaddr_in* %34 to i8*
  %37 = bitcast %struct.sockaddr_in* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %39 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.iw_cm_id*, %struct.iw_cm_id** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @iw_cm_listen(%struct.iw_cm_id* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %22
  %47 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %48 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.iw_cm_id*, %struct.iw_cm_id** %49, align 8
  %51 = call i32 @iw_destroy_cm_id(%struct.iw_cm_id* %50)
  %52 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %53 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.iw_cm_id* null, %struct.iw_cm_id** %54, align 8
  br label %55

55:                                               ; preds = %46, %22
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.iw_cm_id* @iw_create_cm_id(i32, i32, %struct.rdma_id_private*) #1

declare dso_local i64 @IS_ERR(%struct.iw_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.iw_cm_id*) #1

declare dso_local i64 @cma_src_addr(%struct.rdma_id_private*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @iw_cm_listen(%struct.iw_cm_id*, i32) #1

declare dso_local i32 @iw_destroy_cm_id(%struct.iw_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
