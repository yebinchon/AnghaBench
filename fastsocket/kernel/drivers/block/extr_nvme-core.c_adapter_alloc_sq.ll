; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_adapter_alloc_sq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_adapter_alloc_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32 }
%struct.nvme_queue = type { i32, i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32, i32 }

@NVME_QUEUE_PHYS_CONTIG = common dso_local global i32 0, align 4
@NVME_SQ_PRIO_MEDIUM = common dso_local global i32 0, align 4
@nvme_admin_create_sq = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, i32, %struct.nvme_queue*)* @adapter_alloc_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapter_alloc_sq(%struct.nvme_dev* %0, i32 %1, %struct.nvme_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_command, align 8
  %10 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvme_queue* %2, %struct.nvme_queue** %7, align 8
  %11 = load i32, i32* @NVME_QUEUE_PHYS_CONTIG, align 4
  %12 = load i32, i32* @NVME_SQ_PRIO_MEDIUM, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = call i32 @memset(%struct.nvme_command* %9, i32 0, i32 40)
  %15 = load i32, i32* @nvme_admin_create_sq, align 4
  %16 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %19 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_le64(i32 %20)
  %22 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %29 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %44 = call i32 @nvme_submit_admin_cmd(%struct.nvme_dev* %43, %struct.nvme_command* %9, i32* null)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %3
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @nvme_submit_admin_cmd(%struct.nvme_dev*, %struct.nvme_command*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
