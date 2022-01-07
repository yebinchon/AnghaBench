; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_cma_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_cma_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }
%struct.rdma_cm_event = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"event %d status %d conn %p id %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unexpected RDMA CM event (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @iser_cma_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_cma_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %7 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %13 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %16 = call i32 @iser_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, %struct.rdma_cm_id* %15)
  %17 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %18 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %35 [
    i32 136, label %20
    i32 129, label %23
    i32 132, label %26
    i32 137, label %29
    i32 130, label %29
    i32 135, label %29
    i32 128, label %29
    i32 131, label %29
    i32 133, label %32
    i32 134, label %32
    i32 138, label %32
  ]

20:                                               ; preds = %2
  %21 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %22 = call i32 @iser_addr_handler(%struct.rdma_cm_id* %21)
  store i32 %22, i32* %5, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %25 = call i32 @iser_route_handler(%struct.rdma_cm_id* %24)
  store i32 %25, i32* %5, align 4
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %28 = call i32 @iser_connected_handler(%struct.rdma_cm_id* %27)
  br label %40

29:                                               ; preds = %2, %2, %2, %2, %2
  %30 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %31 = call i32 @iser_connect_error(%struct.rdma_cm_id* %30)
  store i32 %31, i32* %5, align 4
  br label %40

32:                                               ; preds = %2, %2, %2
  %33 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %34 = call i32 @iser_disconnected_handler(%struct.rdma_cm_id* %33)
  store i32 %34, i32* %5, align 4
  br label %40

35:                                               ; preds = %2
  %36 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %37 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iser_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %32, %29, %26, %23, %20
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @iser_info(i8*, i32, i32, i32, %struct.rdma_cm_id*) #1

declare dso_local i32 @iser_addr_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_route_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_connected_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_connect_error(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_disconnected_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
