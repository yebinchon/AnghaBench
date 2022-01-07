; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_cmd.c_lbtf_complete_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_cmd.c_lbtf_complete_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32* }
%struct.cmd_ctrl_node = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbtf_complete_command(%struct.lbtf_private* %0, %struct.cmd_ctrl_node* %1, i32 %2) #0 {
  %4 = alloca %struct.lbtf_private*, align 8
  %5 = alloca %struct.cmd_ctrl_node*, align 8
  %6 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %4, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %9 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %11 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %13 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %12, i32 0, i32 3
  %14 = call i32 @wake_up_interruptible(i32* %13)
  %15 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %16 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %21 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %22 = call i32 @__lbtf_cleanup_and_insert_cmd(%struct.lbtf_private* %20, %struct.cmd_ctrl_node* %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %25 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @__lbtf_cleanup_and_insert_cmd(%struct.lbtf_private*, %struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
