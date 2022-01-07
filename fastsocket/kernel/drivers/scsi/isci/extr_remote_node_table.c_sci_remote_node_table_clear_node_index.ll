; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_clear_node_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_clear_node_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_table = type { i32, i32* }

@SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD = common dso_local global i32 0, align 4
@SCU_STP_REMOTE_NODE_COUNT = common dso_local global i32 0, align 4
@SCIC_SDS_REMOTE_NODES_PER_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_remote_node_table*, i32)* @sci_remote_node_table_clear_node_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_remote_node_table_clear_node_index(%struct.sci_remote_node_table* %0, i32 %1) #0 {
  %3 = alloca %struct.sci_remote_node_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sci_remote_node_table* %0, %struct.sci_remote_node_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %10 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %16 = sdiv i32 %14, %15
  %17 = icmp sle i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SCIC_SDS_REMOTE_NODES_PER_DWORD, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SCIC_SDS_REMOTE_NODES_PER_DWORD, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %28 = sdiv i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %34 = srem i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %41 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %39
  store i32 %47, i32* %45, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
