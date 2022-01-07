; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_sync_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_sync_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32 }
%struct.nvme_completion = type { i32, i32 }
%struct.sync_cmd_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_dev*, i8*, %struct.nvme_completion*)* @sync_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_completion(%struct.nvme_dev* %0, i8* %1, %struct.nvme_completion* %2) #0 {
  %4 = alloca %struct.nvme_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvme_completion*, align 8
  %7 = alloca %struct.sync_cmd_info*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.nvme_completion* %2, %struct.nvme_completion** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sync_cmd_info*
  store %struct.sync_cmd_info* %9, %struct.sync_cmd_info** %7, align 8
  %10 = load %struct.nvme_completion*, %struct.nvme_completion** %6, align 8
  %11 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %10, i32 0, i32 1
  %12 = call i32 @le32_to_cpup(i32* %11)
  %13 = load %struct.sync_cmd_info*, %struct.sync_cmd_info** %7, align 8
  %14 = getelementptr inbounds %struct.sync_cmd_info, %struct.sync_cmd_info* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.nvme_completion*, %struct.nvme_completion** %6, align 8
  %16 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %15, i32 0, i32 0
  %17 = call i32 @le16_to_cpup(i32* %16)
  %18 = ashr i32 %17, 1
  %19 = load %struct.sync_cmd_info*, %struct.sync_cmd_info** %7, align 8
  %20 = getelementptr inbounds %struct.sync_cmd_info, %struct.sync_cmd_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sync_cmd_info*, %struct.sync_cmd_info** %7, align 8
  %22 = getelementptr inbounds %struct.sync_cmd_info, %struct.sync_cmd_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wake_up_process(i32 %23)
  ret void
}

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
