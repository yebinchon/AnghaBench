; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_update_policy_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_update_policy_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_policy_node = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkio_policy_node*, %struct.blkio_policy_node*)* @blkio_update_policy_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkio_update_policy_rule(%struct.blkio_policy_node* %0, %struct.blkio_policy_node* %1) #0 {
  %3 = alloca %struct.blkio_policy_node*, align 8
  %4 = alloca %struct.blkio_policy_node*, align 8
  store %struct.blkio_policy_node* %0, %struct.blkio_policy_node** %3, align 8
  store %struct.blkio_policy_node* %1, %struct.blkio_policy_node** %4, align 8
  %5 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %3, align 8
  %6 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %37 [
    i32 133, label %8
    i32 132, label %16
  ]

8:                                                ; preds = %2
  %9 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %10 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %3, align 8
  %14 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %18 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %36 [
    i32 131, label %20
    i32 129, label %20
    i32 130, label %28
    i32 128, label %28
  ]

20:                                               ; preds = %16, %16
  %21 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %22 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %3, align 8
  %26 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  br label %36

28:                                               ; preds = %16, %16
  %29 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %30 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %3, align 8
  %34 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %16, %20
  br label %39

37:                                               ; preds = %2
  %38 = call i32 (...) @BUG()
  br label %39

39:                                               ; preds = %37, %36, %8
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
