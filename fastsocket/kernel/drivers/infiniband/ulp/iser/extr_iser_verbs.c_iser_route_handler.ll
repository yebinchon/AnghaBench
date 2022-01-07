; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_route_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_route_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.iser_cm_hdr = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.iser_conn = type { i32 }

@ISER_ZBVA_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ISER_SEND_W_INV_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failure connecting: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*)* @iser_route_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_route_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_conn_param, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iser_cm_hdr, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %8 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iser_conn*
  %11 = call i32 @iser_create_ib_conn_res(%struct.iser_conn* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %38

15:                                               ; preds = %1
  %16 = call i32 @memset(%struct.rdma_conn_param* %4, i32 0, i32 32)
  %17 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 2
  store i32 7, i32* %19, align 8
  %20 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 3
  store i32 6, i32* %20, align 4
  %21 = bitcast %struct.iser_cm_hdr* %6 to %struct.rdma_conn_param*
  %22 = call i32 @memset(%struct.rdma_conn_param* %21, i32 0, i32 32)
  %23 = load i32, i32* @ISER_ZBVA_NOT_SUPPORTED, align 4
  %24 = load i32, i32* @ISER_SEND_W_INV_NOT_SUPPORTED, align 4
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds %struct.iser_cm_hdr, %struct.iser_cm_hdr* %6, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = bitcast %struct.iser_cm_hdr* %6 to i8*
  %28 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 6
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 5
  store i32 32, i32* %29, align 4
  %30 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %31 = call i32 @rdma_connect(%struct.rdma_cm_id* %30, %struct.rdma_conn_param* %4)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @iser_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %38

37:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %41

38:                                               ; preds = %34, %14
  %39 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %40 = call i32 @iser_connect_error(%struct.rdma_cm_id* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @iser_create_ib_conn_res(%struct.iser_conn*) #1

declare dso_local i32 @memset(%struct.rdma_conn_param*, i32, i32) #1

declare dso_local i32 @rdma_connect(%struct.rdma_cm_id*, %struct.rdma_conn_param*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

declare dso_local i32 @iser_connect_error(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
