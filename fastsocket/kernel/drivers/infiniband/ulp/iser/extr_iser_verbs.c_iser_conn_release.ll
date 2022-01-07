; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_conn_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iser_conn = type { i64, i32, i32*, %struct.iser_device*, i32 }
%struct.iser_device = type { i32 }

@ISER_CONN_DOWN = common dso_local global i64 0, align 8
@ig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_conn*, i32)* @iser_conn_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_conn_release(%struct.iser_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %6, i32 0, i32 3
  %8 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  store %struct.iser_device* %8, %struct.iser_device** %5, align 8
  %9 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ISER_CONN_DOWN, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  %17 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %18 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %17, i32 0, i32 4
  %19 = call i32 @list_del(i32* %18)
  %20 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  %21 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %22 = call i32 @iser_free_rx_descriptors(%struct.iser_conn* %21)
  %23 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %24 = call i32 @iser_free_ib_conn_res(%struct.iser_conn* %23)
  %25 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %25, i32 0, i32 3
  store %struct.iser_device* null, %struct.iser_device** %26, align 8
  %27 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %28 = icmp ne %struct.iser_device* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %31 = call i32 @iser_device_try_release(%struct.iser_device* %30)
  br label %32

32:                                               ; preds = %29, %2
  %33 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %34 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %42 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @rdma_destroy_id(i32* %43)
  %45 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %46 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %37, %32
  %48 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %49 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @iscsi_destroy_endpoint(i32 %50)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iser_free_rx_descriptors(%struct.iser_conn*) #1

declare dso_local i32 @iser_free_ib_conn_res(%struct.iser_conn*) #1

declare dso_local i32 @iser_device_try_release(%struct.iser_device*) #1

declare dso_local i32 @rdma_destroy_id(i32*) #1

declare dso_local i32 @iscsi_destroy_endpoint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
