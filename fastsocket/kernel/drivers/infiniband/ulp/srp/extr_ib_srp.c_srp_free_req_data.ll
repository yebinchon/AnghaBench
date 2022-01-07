; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_free_req_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_free_req_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { i32, %struct.srp_request*, %struct.TYPE_4__* }
%struct.srp_request = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }

@SRP_CMD_SQ_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_target_port*)* @srp_free_req_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_free_req_data(%struct.srp_target_port* %0) #0 {
  %2 = alloca %struct.srp_target_port*, align 8
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.srp_request*, align 8
  %5 = alloca i32, align 4
  store %struct.srp_target_port* %0, %struct.srp_target_port** %2, align 8
  %6 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %7 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  store %struct.ib_device* %12, %struct.ib_device** %3, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %14 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %13, i32 0, i32 1
  %15 = load %struct.srp_request*, %struct.srp_request** %14, align 8
  store %struct.srp_request* %15, %struct.srp_request** %4, align 8
  br label %16

16:                                               ; preds = %48, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SRP_CMD_SQ_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.srp_request*, %struct.srp_request** %4, align 8
  %22 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  %25 = load %struct.srp_request*, %struct.srp_request** %4, align 8
  %26 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @kfree(i32 %27)
  %29 = load %struct.srp_request*, %struct.srp_request** %4, align 8
  %30 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %35 = load %struct.srp_request*, %struct.srp_request** %4, align 8
  %36 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %39 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @ib_dma_unmap_single(%struct.ib_device* %34, i64 %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %20
  %44 = load %struct.srp_request*, %struct.srp_request** %4, align 8
  %45 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kfree(i32 %46)
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load %struct.srp_request*, %struct.srp_request** %4, align 8
  %52 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %51, i32 1
  store %struct.srp_request* %52, %struct.srp_request** %4, align 8
  br label %16

53:                                               ; preds = %16
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
