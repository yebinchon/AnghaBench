; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_update_blkg_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_update_blkg_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_cgroup = type { i32 }
%struct.blkio_group = type { i32 }
%struct.blkio_policy_node = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkio_cgroup*, %struct.blkio_group*, %struct.blkio_policy_node*)* @blkio_update_blkg_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkio_update_blkg_policy(%struct.blkio_cgroup* %0, %struct.blkio_group* %1, %struct.blkio_policy_node* %2) #0 {
  %4 = alloca %struct.blkio_cgroup*, align 8
  %5 = alloca %struct.blkio_group*, align 8
  %6 = alloca %struct.blkio_policy_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.blkio_cgroup* %0, %struct.blkio_cgroup** %4, align 8
  store %struct.blkio_group* %1, %struct.blkio_group** %5, align 8
  store %struct.blkio_policy_node* %2, %struct.blkio_policy_node** %6, align 8
  %10 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %11 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %78 [
    i32 133, label %13
    i32 132, label %33
  ]

13:                                               ; preds = %3
  %14 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %15 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %21 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %28

24:                                               ; preds = %13
  %25 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %4, align 8
  %26 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %23, %19 ], [ %27, %24 ]
  store i32 %29, i32* %7, align 4
  %30 = load %struct.blkio_group*, %struct.blkio_group** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @blkio_update_group_weight(%struct.blkio_group* %30, i32 %31)
  br label %80

33:                                               ; preds = %3
  %34 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %35 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %77 [
    i32 131, label %37
    i32 129, label %37
    i32 130, label %57
    i32 128, label %57
  ]

37:                                               ; preds = %33, %33
  %38 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %39 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %45 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi i32 [ %47, %43 ], [ -1, %48 ]
  store i32 %50, i32* %9, align 4
  %51 = load %struct.blkio_group*, %struct.blkio_group** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %54 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @blkio_update_group_bps(%struct.blkio_group* %51, i32 %52, i32 %55)
  br label %77

57:                                               ; preds = %33, %33
  %58 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %59 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %65 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  br label %69

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %63
  %70 = phi i32 [ %67, %63 ], [ -1, %68 ]
  store i32 %70, i32* %8, align 4
  %71 = load %struct.blkio_group*, %struct.blkio_group** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %6, align 8
  %74 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @blkio_update_group_iops(%struct.blkio_group* %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %33, %69, %49
  br label %80

78:                                               ; preds = %3
  %79 = call i32 (...) @BUG()
  br label %80

80:                                               ; preds = %78, %77, %28
  ret void
}

declare dso_local i32 @blkio_update_group_weight(%struct.blkio_group*, i32) #1

declare dso_local i32 @blkio_update_group_bps(%struct.blkio_group*, i32, i32) #1

declare dso_local i32 @blkio_update_group_iops(%struct.blkio_group*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
