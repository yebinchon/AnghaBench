; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i64, i64, i32, i32, i32* }
%struct.nvme_command = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*, %struct.nvme_command*)* @nvme_submit_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_submit_cmd(%struct.nvme_queue* %0, %struct.nvme_command* %1) #0 {
  %3 = alloca %struct.nvme_queue*, align 8
  %4 = alloca %struct.nvme_command*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %3, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %4, align 8
  %7 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %7, i32 0, i32 2
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load %struct.nvme_command*, %struct.nvme_command** %4, align 8
  %20 = call i32 @memcpy(i32* %18, %struct.nvme_command* %19, i32 4)
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  %23 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %24 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @writel(i64 %29, i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %36 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %38 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %37, i32 0, i32 2
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.nvme_command*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
