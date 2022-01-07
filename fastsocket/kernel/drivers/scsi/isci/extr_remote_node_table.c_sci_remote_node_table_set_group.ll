; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_set_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_set_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_table = type { i64, i64* }

@SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD = common dso_local global i64 0, align 8
@SCU_STP_REMOTE_NODE_COUNT = common dso_local global i64 0, align 8
@SCIC_SDS_REMOTE_NODE_TABLE_FULL_SLOT_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_remote_node_table*, i64)* @sci_remote_node_table_set_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_remote_node_table_set_group(%struct.sci_remote_node_table* %0, i64 %1) #0 {
  %3 = alloca %struct.sci_remote_node_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sci_remote_node_table* %0, %struct.sci_remote_node_table** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %9 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD, align 8
  %12 = mul i64 %10, %11
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @SCU_STP_REMOTE_NODE_COUNT, align 8
  %15 = udiv i64 %13, %14
  %16 = icmp ule i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD, align 8
  %21 = udiv i64 %19, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD, align 8
  %24 = urem i64 %22, %23
  store i64 %24, i64* %6, align 8
  %25 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %26 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* @SCIC_SDS_REMOTE_NODE_TABLE_FULL_SLOT_VALUE, align 8
  %32 = load i64, i64* %6, align 8
  %33 = mul i64 %32, 4
  %34 = shl i64 %31, %33
  %35 = load i64, i64* %7, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %39 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %37, i64* %42, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
