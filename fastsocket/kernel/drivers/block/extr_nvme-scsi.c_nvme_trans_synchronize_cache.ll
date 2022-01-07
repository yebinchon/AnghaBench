; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_synchronize_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_synchronize_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvme_queue = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@nvme_cmd_flush = common dso_local global i32 0, align 4
@NVME_IO_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*)* @nvme_trans_synchronize_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_synchronize_cache(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_command, align 4
  %10 = alloca %struct.nvme_queue*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 @memset(%struct.nvme_command* %9, i32 0, i32 8)
  %13 = load i32, i32* @nvme_cmd_flush, align 4
  %14 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  %20 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %23 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.nvme_queue* @get_nvmeq(i32 %24)
  store %struct.nvme_queue* %25, %struct.nvme_queue** %10, align 8
  %26 = load %struct.nvme_queue*, %struct.nvme_queue** %10, align 8
  %27 = call i32 @put_nvmeq(%struct.nvme_queue* %26)
  %28 = load %struct.nvme_queue*, %struct.nvme_queue** %10, align 8
  %29 = load i32, i32* @NVME_IO_TIMEOUT, align 4
  %30 = call i32 @nvme_submit_sync_cmd(%struct.nvme_queue* %28, %struct.nvme_command* %9, i32* null, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %43

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.nvme_queue* @get_nvmeq(i32) #1

declare dso_local i32 @put_nvmeq(%struct.nvme_queue*) #1

declare dso_local i32 @nvme_submit_sync_cmd(%struct.nvme_queue*, %struct.nvme_command*, i32*, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
