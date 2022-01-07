; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_sync_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_sync_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sync_cmd_info = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@sync_completion = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_submit_sync_cmd(%struct.nvme_queue* %0, %struct.nvme_command* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_queue*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sync_cmd_info, align 4
  store %struct.nvme_queue* %0, %struct.nvme_queue** %6, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @current, align 4
  %13 = getelementptr inbounds %struct.sync_cmd_info, %struct.sync_cmd_info* %11, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @EINTR, align 4
  %15 = sub nsw i32 0, %14
  %16 = getelementptr inbounds %struct.sync_cmd_info, %struct.sync_cmd_info* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %18 = load i32, i32* @sync_completion, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @alloc_cmdid_killable(%struct.nvme_queue* %17, %struct.sync_cmd_info* %11, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %28 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @TASK_KILLABLE, align 4
  %31 = call i32 @set_current_state(i32 %30)
  %32 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %33 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %34 = call i32 @nvme_submit_cmd(%struct.nvme_queue* %32, %struct.nvme_command* %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @schedule_timeout(i32 %35)
  %37 = getelementptr inbounds %struct.sync_cmd_info, %struct.sync_cmd_info* %11, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EINTR, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %25
  %43 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @nvme_abort_command(%struct.nvme_queue* %43, i32 %44)
  %46 = load i32, i32* @EINTR, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %58

48:                                               ; preds = %25
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.sync_cmd_info, %struct.sync_cmd_info* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = getelementptr inbounds %struct.sync_cmd_info, %struct.sync_cmd_info* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %42, %23
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @alloc_cmdid_killable(%struct.nvme_queue*, %struct.sync_cmd_info*, i32, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @nvme_submit_cmd(%struct.nvme_queue*, %struct.nvme_command*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @nvme_abort_command(%struct.nvme_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
