; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_delete_rule_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_delete_rule_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_policy_node = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkio_policy_node*)* @blkio_delete_rule_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkio_delete_rule_command(%struct.blkio_policy_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blkio_policy_node*, align 8
  store %struct.blkio_policy_node* %0, %struct.blkio_policy_node** %3, align 8
  %4 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %3, align 8
  %5 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %36 [
    i32 133, label %7
    i32 132, label %15
  ]

7:                                                ; preds = %1
  %8 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %3, align 8
  %9 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %39

14:                                               ; preds = %7
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %3, align 8
  %17 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %35 [
    i32 131, label %19
    i32 129, label %19
    i32 130, label %27
    i32 128, label %27
  ]

19:                                               ; preds = %15, %15
  %20 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %3, align 8
  %21 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %39

26:                                               ; preds = %19
  br label %35

27:                                               ; preds = %15, %15
  %28 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %3, align 8
  %29 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %39

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %15, %26
  br label %38

36:                                               ; preds = %1
  %37 = call i32 (...) @BUG()
  br label %38

38:                                               ; preds = %36, %35, %14
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33, %25, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
