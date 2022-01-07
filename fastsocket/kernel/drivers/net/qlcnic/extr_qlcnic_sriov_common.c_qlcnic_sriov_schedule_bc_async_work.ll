; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_schedule_bc_async_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_schedule_bc_async_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_back_channel = type { i32 }
%struct.qlcnic_async_work_list = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_back_channel*, i32, i8*)* @qlcnic_sriov_schedule_bc_async_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_schedule_bc_async_work(%struct.qlcnic_back_channel* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.qlcnic_back_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qlcnic_async_work_list*, align 8
  store %struct.qlcnic_back_channel* %0, %struct.qlcnic_back_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store %struct.qlcnic_async_work_list* null, %struct.qlcnic_async_work_list** %7, align 8
  %8 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %4, align 8
  %9 = call %struct.qlcnic_async_work_list* @qlcnic_sriov_get_free_node_async_work(%struct.qlcnic_back_channel* %8)
  store %struct.qlcnic_async_work_list* %9, %struct.qlcnic_async_work_list** %7, align 8
  %10 = load %struct.qlcnic_async_work_list*, %struct.qlcnic_async_work_list** %7, align 8
  %11 = icmp ne %struct.qlcnic_async_work_list* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %27

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.qlcnic_async_work_list*, %struct.qlcnic_async_work_list** %7, align 8
  %16 = getelementptr inbounds %struct.qlcnic_async_work_list, %struct.qlcnic_async_work_list* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.qlcnic_async_work_list*, %struct.qlcnic_async_work_list** %7, align 8
  %18 = getelementptr inbounds %struct.qlcnic_async_work_list, %struct.qlcnic_async_work_list* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %4, align 8
  %22 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qlcnic_async_work_list*, %struct.qlcnic_async_work_list** %7, align 8
  %25 = getelementptr inbounds %struct.qlcnic_async_work_list, %struct.qlcnic_async_work_list* %24, i32 0, i32 0
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.qlcnic_async_work_list* @qlcnic_sriov_get_free_node_async_work(%struct.qlcnic_back_channel*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
