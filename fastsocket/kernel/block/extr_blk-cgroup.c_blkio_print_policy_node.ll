; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_print_policy_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_print_policy_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blkio_policy_node = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BLKIO_PROP_weight_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%u:%u\09%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%u:%u\09%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.blkio_policy_node*)* @blkio_print_policy_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkio_print_policy_node(%struct.seq_file* %0, %struct.blkio_policy_node* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.blkio_policy_node*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.blkio_policy_node* %1, %struct.blkio_policy_node** %4, align 8
  %5 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %6 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %65 [
    i32 133, label %8
    i32 132, label %30
  ]

8:                                                ; preds = %2
  %9 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %10 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BLKIO_PROP_weight_device, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %17 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MAJOR(i32 %18)
  %20 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %21 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MINOR(i32 %22)
  %24 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %25 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %14, %8
  br label %67

30:                                               ; preds = %2
  %31 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %32 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %64 [
    i32 131, label %34
    i32 129, label %34
    i32 130, label %49
    i32 128, label %49
  ]

34:                                               ; preds = %30, %30
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %37 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MAJOR(i32 %38)
  %40 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %41 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MINOR(i32 %42)
  %44 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %45 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %43, i32 %47)
  br label %64

49:                                               ; preds = %30, %30
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %52 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MAJOR(i32 %53)
  %55 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %56 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @MINOR(i32 %57)
  %59 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %4, align 8
  %60 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %30, %49, %34
  br label %67

65:                                               ; preds = %2
  %66 = call i32 (...) @BUG()
  br label %67

67:                                               ; preds = %65, %64, %29
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
