; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i64, i64, i32, %struct.nvme_command* }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nvme_ns = type { i32 }

@nvme_cmd_flush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*, %struct.nvme_ns*, i32)* @nvme_submit_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_submit_flush(%struct.nvme_queue* %0, %struct.nvme_ns* %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_queue*, align 8
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %4, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %9 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %8, i32 0, i32 3
  %10 = load %struct.nvme_command*, %struct.nvme_command** %9, align 8
  %11 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %12 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i64 %13
  store %struct.nvme_command* %14, %struct.nvme_command** %7, align 8
  %15 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %16 = call i32 @memset(%struct.nvme_command* %15, i32 0, i32 12)
  %17 = load i32, i32* @nvme_cmd_flush, align 4
  %18 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %19 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %23 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %30 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %37 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %42 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %3
  %44 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %45 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %48 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @writel(i64 %46, i32 %49)
  ret i32 0
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
