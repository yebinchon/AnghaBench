; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_complete_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_complete_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { i32, i32, i64, i32 }

@lbs_cmd_async_callback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_complete_command(%struct.lbs_private* %0, %struct.cmd_ctrl_node* %1, i32 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca %struct.cmd_ctrl_node*, align 8
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %8 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %9 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %8, i32 0, i32 1
  %10 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %9, align 8
  %11 = icmp eq %struct.cmd_ctrl_node* %7, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %19 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %21 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %23 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %22, i32 0, i32 3
  %24 = call i32 @wake_up_interruptible(i32* %23)
  %25 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %26 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %31 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @lbs_cmd_async_callback, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %16
  %36 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %37 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %5, align 8
  %38 = call i32 @__lbs_cleanup_and_insert_cmd(%struct.lbs_private* %36, %struct.cmd_ctrl_node* %37)
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 1
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %41, align 8
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @__lbs_cleanup_and_insert_cmd(%struct.lbs_private*, %struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
