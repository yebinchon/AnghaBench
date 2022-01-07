; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_admin_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_admin_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32* }
%struct.nvme_command = type { i32 }

@ADMIN_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_submit_admin_cmd(%struct.nvme_dev* %0, %struct.nvme_command* %1, i32* %2) #0 {
  %4 = alloca %struct.nvme_dev*, align 8
  %5 = alloca %struct.nvme_command*, align 8
  %6 = alloca i32*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %4, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %8 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nvme_command*, %struct.nvme_command** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @ADMIN_TIMEOUT, align 4
  %15 = call i32 @nvme_submit_sync_cmd(i32 %11, %struct.nvme_command* %12, i32* %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
