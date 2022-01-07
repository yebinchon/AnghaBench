; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_addr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_addr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64 }
%struct.iser_device = type { i32 }
%struct.iser_conn = type { %struct.iser_device* }

@.str = private unnamed_addr constant [31 x i8] c"device lookup/creation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"resolve route failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*)* @iser_addr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_addr_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.iser_device*, align 8
  %5 = alloca %struct.iser_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %8 = call %struct.iser_device* @iser_device_find_by_ib_device(%struct.rdma_cm_id* %7)
  store %struct.iser_device* %8, %struct.iser_device** %4, align 8
  %9 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %10 = icmp ne %struct.iser_device* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %14 = call i32 @iser_connect_error(%struct.rdma_cm_id* %13)
  store i32 %14, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %17 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.iser_conn*
  store %struct.iser_conn* %19, %struct.iser_conn** %5, align 8
  %20 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %21 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 0
  store %struct.iser_device* %20, %struct.iser_device** %22, align 8
  %23 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %24 = call i32 @rdma_resolve_route(%struct.rdma_cm_id* %23, i32 1000)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %31 = call i32 @iser_connect_error(%struct.rdma_cm_id* %30)
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %27, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.iser_device* @iser_device_find_by_ib_device(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_err(i8*, ...) #1

declare dso_local i32 @iser_connect_error(%struct.rdma_cm_id*) #1

declare dso_local i32 @rdma_resolve_route(%struct.rdma_cm_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
