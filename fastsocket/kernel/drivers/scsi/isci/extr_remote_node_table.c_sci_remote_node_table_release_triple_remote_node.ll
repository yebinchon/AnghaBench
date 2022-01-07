; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_release_triple_remote_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_release_triple_remote_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_table = type { i32 }

@SCU_STP_REMOTE_NODE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_remote_node_table*, i32)* @sci_remote_node_table_release_triple_remote_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_remote_node_table_release_triple_remote_node(%struct.sci_remote_node_table* %0, i32 %1) #0 {
  %3 = alloca %struct.sci_remote_node_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sci_remote_node_table* %0, %struct.sci_remote_node_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %8 = sdiv i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @sci_remote_node_table_set_group_index(%struct.sci_remote_node_table* %9, i32 2, i32 %10)
  %12 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @sci_remote_node_table_set_group(%struct.sci_remote_node_table* %12, i32 %13)
  ret void
}

declare dso_local i32 @sci_remote_node_table_set_group_index(%struct.sci_remote_node_table*, i32, i32) #1

declare dso_local i32 @sci_remote_node_table_set_group(%struct.sci_remote_node_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
