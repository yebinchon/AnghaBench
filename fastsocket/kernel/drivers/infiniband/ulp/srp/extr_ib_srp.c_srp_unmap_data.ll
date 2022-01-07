; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_unmap_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_unmap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.srp_target_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.srp_request = type { i32, %struct.ib_pool_fmr** }
%struct.ib_pool_fmr = type { i32 }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.srp_target_port*, %struct.srp_request*)* @srp_unmap_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_unmap_data(%struct.scsi_cmnd* %0, %struct.srp_target_port* %1, %struct.srp_request* %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.srp_target_port*, align 8
  %6 = alloca %struct.srp_request*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca %struct.ib_pool_fmr**, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.srp_target_port* %1, %struct.srp_target_port** %5, align 8
  store %struct.srp_request* %2, %struct.srp_request** %6, align 8
  %9 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %10 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  store %struct.ib_device* %15, %struct.ib_device** %7, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = call i32 @scsi_sglist(%struct.scsi_cmnd* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DMA_TO_DEVICE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %3
  br label %58

32:                                               ; preds = %25, %19
  %33 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %34 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %33, i32 0, i32 1
  %35 = load %struct.ib_pool_fmr**, %struct.ib_pool_fmr*** %34, align 8
  store %struct.ib_pool_fmr** %35, %struct.ib_pool_fmr*** %8, align 8
  br label %36

36:                                               ; preds = %42, %32
  %37 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %38 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.ib_pool_fmr**, %struct.ib_pool_fmr*** %8, align 8
  %44 = getelementptr inbounds %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %43, i32 1
  store %struct.ib_pool_fmr** %44, %struct.ib_pool_fmr*** %8, align 8
  %45 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %43, align 8
  %46 = ptrtoint %struct.ib_pool_fmr* %45 to i32
  %47 = call i32 @ib_fmr_pool_unmap(i32 %46)
  br label %36

48:                                               ; preds = %36
  %49 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = call i32 @scsi_sglist(%struct.scsi_cmnd* %50)
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %52)
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ib_dma_unmap_sg(%struct.ib_device* %49, i32 %51, i32 %53, i64 %56)
  br label %58

58:                                               ; preds = %48, %31
  ret void
}

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @ib_fmr_pool_unmap(i32) #1

declare dso_local i32 @ib_dma_unmap_sg(%struct.ib_device*, i32, i32, i64) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
