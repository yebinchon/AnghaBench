; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c___qlcnic_sriov_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c___qlcnic_sriov_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info*, i32, i32, i32, %struct.qlcnic_back_channel }
%struct.qlcnic_back_channel = type { i32, i32 }
%struct.qlcnic_sriov = type { i32, %struct.qlcnic_sriov*, %struct.qlcnic_sriov*, i32, i32, i32, %struct.qlcnic_back_channel }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qlcnic_sriov_cleanup(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_sriov*, align 8
  %4 = alloca %struct.qlcnic_back_channel*, align 8
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %12 = bitcast %struct.qlcnic_vf_info* %11 to %struct.qlcnic_sriov*
  store %struct.qlcnic_sriov* %12, %struct.qlcnic_sriov** %3, align 8
  %13 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %13, i32 0, i32 6
  store %struct.qlcnic_back_channel* %14, %struct.qlcnic_back_channel** %4, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %16 = call i32 @qlcnic_sriov_enable_check(%struct.qlcnic_adapter* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %89

19:                                               ; preds = %1
  %20 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %4, align 8
  %21 = call i32 @qlcnic_sriov_cleanup_async_list(%struct.qlcnic_back_channel* %20)
  %22 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %4, align 8
  %23 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @destroy_workqueue(i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %49, %19
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %3, align 8
  %29 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %3, align 8
  %34 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %33, i32 0, i32 1
  %35 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %35, i64 %37
  %39 = bitcast %struct.qlcnic_sriov* %38 to %struct.qlcnic_vf_info*
  store %struct.qlcnic_vf_info* %39, %struct.qlcnic_vf_info** %5, align 8
  %40 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %41 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %40, i32 0, i32 5
  %42 = call i32 @qlcnic_sriov_cleanup_list(i32* %41)
  %43 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %44 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %43, i32 0, i32 4
  %45 = call i32 @cancel_work_sync(i32* %44)
  %46 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %47 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %46, i32 0, i32 3
  %48 = call i32 @qlcnic_sriov_cleanup_list(i32* %47)
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %26

52:                                               ; preds = %26
  %53 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %4, align 8
  %54 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @destroy_workqueue(i32 %55)
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %74, %52
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %3, align 8
  %60 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %3, align 8
  %65 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %64, i32 0, i32 1
  %66 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %66, i64 %68
  %70 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %69, i32 0, i32 2
  %71 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %70, align 8
  %72 = bitcast %struct.qlcnic_sriov* %71 to %struct.qlcnic_vf_info*
  %73 = call i32 @kfree(%struct.qlcnic_vf_info* %72)
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %57

77:                                               ; preds = %57
  %78 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %3, align 8
  %79 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %78, i32 0, i32 1
  %80 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %79, align 8
  %81 = bitcast %struct.qlcnic_sriov* %80 to %struct.qlcnic_vf_info*
  %82 = call i32 @kfree(%struct.qlcnic_vf_info* %81)
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %86, align 8
  %88 = call i32 @kfree(%struct.qlcnic_vf_info* %87)
  br label %89

89:                                               ; preds = %77, %18
  ret void
}

declare dso_local i32 @qlcnic_sriov_enable_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_cleanup_async_list(%struct.qlcnic_back_channel*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @qlcnic_sriov_cleanup_list(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.qlcnic_vf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
