; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_create_flr_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_create_flr_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qlcnic_back_channel }
%struct.qlcnic_back_channel = type { %struct.workqueue_struct* }
%struct.workqueue_struct = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"qlcnic-flr\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot create FLR workqueue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_sriov_pf_create_flr_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_create_flr_queue(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_back_channel*, align 8
  %5 = alloca %struct.workqueue_struct*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.qlcnic_back_channel* %11, %struct.qlcnic_back_channel** %4, align 8
  %12 = call %struct.workqueue_struct* @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.workqueue_struct* %12, %struct.workqueue_struct** %5, align 8
  %13 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %14 = icmp eq %struct.workqueue_struct* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %25 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %4, align 8
  %26 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %25, i32 0, i32 0
  store %struct.workqueue_struct* %24, %struct.workqueue_struct** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.workqueue_struct* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
