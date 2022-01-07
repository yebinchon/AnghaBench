; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkcg_get_write_iops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkcg_get_write_iops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_cgroup = type { i32 }
%struct.blkio_policy_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BLKIO_POLICY_THROTL = common dso_local global i32 0, align 4
@BLKIO_THROTL_write_iops_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkcg_get_write_iops(%struct.blkio_cgroup* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blkio_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkio_policy_node*, align 8
  store %struct.blkio_cgroup* %0, %struct.blkio_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @BLKIO_POLICY_THROTL, align 4
  %10 = load i32, i32* @BLKIO_THROTL_write_iops_device, align 4
  %11 = call %struct.blkio_policy_node* @blkio_policy_search_node(%struct.blkio_cgroup* %7, i32 %8, i32 %9, i32 %10)
  store %struct.blkio_policy_node* %11, %struct.blkio_policy_node** %6, align 8
  %12 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %13 = icmp ne %struct.blkio_policy_node* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %16 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %14
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.blkio_policy_node* @blkio_policy_search_node(%struct.blkio_cgroup*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
