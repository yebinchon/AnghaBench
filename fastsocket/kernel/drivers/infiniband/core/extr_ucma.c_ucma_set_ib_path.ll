; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_set_ib_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_set_ib_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_context = type { i32 }
%struct.ib_path_rec_data = type { i32, i32 }
%struct.ib_sa_path_rec = type { i32 }
%struct.rdma_cm_event = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_PATH_GMP = common dso_local global i32 0, align 4
@IB_PATH_PRIMARY = common dso_local global i32 0, align 4
@IB_PATH_BIDIRECTIONAL = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ROUTE_RESOLVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucma_context*, %struct.ib_path_rec_data*, i64)* @ucma_set_ib_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_set_ib_path(%struct.ucma_context* %0, %struct.ib_path_rec_data* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucma_context*, align 8
  %6 = alloca %struct.ib_path_rec_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ib_sa_path_rec, align 4
  %9 = alloca %struct.rdma_cm_event, align 4
  %10 = alloca i32, align 4
  store %struct.ucma_context* %0, %struct.ucma_context** %5, align 8
  store %struct.ib_path_rec_data* %1, %struct.ib_path_rec_data** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = urem i64 %11, 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %65

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.ib_path_rec_data*, %struct.ib_path_rec_data** %6, align 8
  %23 = getelementptr inbounds %struct.ib_path_rec_data, %struct.ib_path_rec_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IB_PATH_GMP, align 4
  %26 = load i32, i32* @IB_PATH_PRIMARY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IB_PATH_BIDIRECTIONAL, align 4
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %38

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %34, 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.ib_path_rec_data*, %struct.ib_path_rec_data** %6, align 8
  %37 = getelementptr inbounds %struct.ib_path_rec_data, %struct.ib_path_rec_data* %36, i32 1
  store %struct.ib_path_rec_data* %37, %struct.ib_path_rec_data** %6, align 8
  br label %18

38:                                               ; preds = %31, %18
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %65

44:                                               ; preds = %38
  %45 = load %struct.ib_path_rec_data*, %struct.ib_path_rec_data** %6, align 8
  %46 = getelementptr inbounds %struct.ib_path_rec_data, %struct.ib_path_rec_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ib_sa_unpack_path(i32 %47, %struct.ib_sa_path_rec* %8)
  %49 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %50 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rdma_set_ib_paths(i32 %51, %struct.ib_sa_path_rec* %8, i32 1)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %65

57:                                               ; preds = %44
  %58 = call i32 @memset(%struct.rdma_cm_event* %9, i32 0, i32 4)
  %59 = load i32, i32* @RDMA_CM_EVENT_ROUTE_RESOLVED, align 4
  %60 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %9, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %62 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ucma_event_handler(i32 %63, %struct.rdma_cm_event* %9)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %57, %55, %41, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @ib_sa_unpack_path(i32, %struct.ib_sa_path_rec*) #1

declare dso_local i32 @rdma_set_ib_paths(i32, %struct.ib_sa_path_rec*, i32) #1

declare dso_local i32 @memset(%struct.rdma_cm_event*, i32, i32) #1

declare dso_local i32 @ucma_event_handler(i32, %struct.rdma_cm_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
