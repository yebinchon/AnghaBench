; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_get_group_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_get_group_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_table = type { i64* }

@SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD = common dso_local global i64 0, align 8
@SCIC_SDS_REMOTE_NODE_TABLE_FULL_SLOT_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sci_remote_node_table*, i64)* @sci_remote_node_table_get_group_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_remote_node_table_get_group_value(%struct.sci_remote_node_table* %0, i64 %1) #0 {
  %3 = alloca %struct.sci_remote_node_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sci_remote_node_table* %0, %struct.sci_remote_node_table** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD, align 8
  %10 = udiv i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD, align 8
  %13 = urem i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %15 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* @SCIC_SDS_REMOTE_NODE_TABLE_FULL_SLOT_VALUE, align 8
  %21 = load i64, i64* %6, align 8
  %22 = mul i64 %21, 4
  %23 = shl i64 %20, %22
  %24 = load i64, i64* %7, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = mul i64 %27, 4
  %29 = lshr i64 %26, %28
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
