; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_allocate_single_remote_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_allocate_single_remote_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_table = type { i32 }

@SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX = common dso_local global i64 0, align 8
@SCIC_SDS_REMOTE_NODE_TABLE_INVALID_INDEX = common dso_local global i32 0, align 4
@SCU_STP_REMOTE_NODE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sci_remote_node_table*, i32)* @sci_remote_node_table_allocate_single_remote_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sci_remote_node_table_allocate_single_remote_node(%struct.sci_remote_node_table* %0, i32 %1) #0 {
  %3 = alloca %struct.sci_remote_node_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sci_remote_node_table* %0, %struct.sci_remote_node_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @sci_remote_node_table_get_group_index(%struct.sci_remote_node_table* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SCIC_SDS_REMOTE_NODE_TABLE_INVALID_INDEX, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %2
  %17 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @sci_remote_node_table_get_group_value(%struct.sci_remote_node_table* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %54, %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @sci_remote_node_table_clear_group_index(%struct.sci_remote_node_table* %37, i32 %38, i32 %39)
  %41 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @sci_remote_node_table_clear_node_index(%struct.sci_remote_node_table* %41, i64 %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @sci_remote_node_table_set_group_index(%struct.sci_remote_node_table* %47, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %30
  br label %57

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %20

57:                                               ; preds = %52, %20
  br label %58

58:                                               ; preds = %57, %2
  %59 = load i64, i64* %8, align 8
  ret i64 %59
}

declare dso_local i32 @sci_remote_node_table_get_group_index(%struct.sci_remote_node_table*, i32) #1

declare dso_local i32 @sci_remote_node_table_get_group_value(%struct.sci_remote_node_table*, i32) #1

declare dso_local i32 @sci_remote_node_table_clear_group_index(%struct.sci_remote_node_table*, i32, i32) #1

declare dso_local i32 @sci_remote_node_table_clear_node_index(%struct.sci_remote_node_table*, i64) #1

declare dso_local i32 @sci_remote_node_table_set_group_index(%struct.sci_remote_node_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
