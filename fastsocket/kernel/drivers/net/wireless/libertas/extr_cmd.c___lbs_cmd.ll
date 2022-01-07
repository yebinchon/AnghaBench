; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c___lbs_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c___lbs_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_header = type { i32 }
%struct.cmd_ctrl_node = type { i32, i32, i32 }

@LBS_DEB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"PREP_CMD: command 0x%04x failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lbs_cmd(%struct.lbs_private* %0, i32 %1, %struct.cmd_header* %2, i32 %3, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %4, i64 %5) #0 {
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmd_ctrl_node*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.cmd_header* %2, %struct.cmd_header** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %4, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @LBS_DEB_HOST, align 4
  %17 = call i32 @lbs_deb_enter(i32 %16)
  %18 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.cmd_header*, %struct.cmd_header** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call %struct.cmd_ctrl_node* @__lbs_cmd_async(%struct.lbs_private* %18, i32 %19, %struct.cmd_header* %20, i32 %21, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %22, i64 %23)
  store %struct.cmd_ctrl_node* %24, %struct.cmd_ctrl_node** %13, align 8
  %25 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %26 = call i64 @IS_ERR(%struct.cmd_ctrl_node* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %30 = call i32 @PTR_ERR(%struct.cmd_ctrl_node* %29)
  store i32 %30, i32* %15, align 4
  br label %61

31:                                               ; preds = %6
  %32 = call i32 (...) @might_sleep()
  %33 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %34 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %37 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wait_event_interruptible(i32 %35, i32 %38)
  %40 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 0
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %45 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @lbs_pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %31
  %54 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %55 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %56 = call i32 @__lbs_cleanup_and_insert_cmd(%struct.lbs_private* %54, %struct.cmd_ctrl_node* %55)
  %57 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 0
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %53, %28
  %62 = load i32, i32* @LBS_DEB_HOST, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @lbs_deb_leave_args(i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %15, align 4
  ret i32 %65
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.cmd_ctrl_node* @__lbs_cmd_async(%struct.lbs_private*, i32, %struct.cmd_header*, i32, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, i64) #1

declare dso_local i64 @IS_ERR(%struct.cmd_ctrl_node*) #1

declare dso_local i32 @PTR_ERR(%struct.cmd_ctrl_node*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lbs_pr_info(i8*, i32, i32) #1

declare dso_local i32 @__lbs_cleanup_and_insert_cmd(%struct.lbs_private*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
