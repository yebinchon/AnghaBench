; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i8*, i32 }

@nvme_admin_identify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_identify(%struct.nvme_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_command, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.nvme_command* %9, i32 0, i32 32)
  %11 = load i32, i32* @nvme_admin_identify, align 4
  %12 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @cpu_to_le32(i32 %14)
  %16 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @cpu_to_le64(i32 %18)
  %20 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %9, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %27 = call i32 @nvme_submit_admin_cmd(%struct.nvme_dev* %26, %struct.nvme_command* %9, i32* null)
  ret i32 %27
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nvme_submit_admin_cmd(%struct.nvme_dev*, %struct.nvme_command*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
