; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_free_cmd_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_free_cmd_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { %struct.cmd_ctrl_node* }

@LBS_DEB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"FREE_CMD_BUF: cmd_array is NULL\0A\00", align 1
@LBS_NUM_CMD_BUFFERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_free_cmd_buffer(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.cmd_ctrl_node*, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %5 = load i32, i32* @LBS_DEB_HOST, align 4
  %6 = call i32 @lbs_deb_enter(i32 %5)
  %7 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %8 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %7, i32 0, i32 0
  %9 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %8, align 8
  %10 = icmp eq %struct.cmd_ctrl_node* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 0
  %16 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %15, align 8
  store %struct.cmd_ctrl_node* %16, %struct.cmd_ctrl_node** %3, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %43, %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %22, i64 %24
  %26 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %25, i32 0, i32 0
  %27 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %26, align 8
  %28 = icmp ne %struct.cmd_ctrl_node* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %30, i64 %32
  %34 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %33, i32 0, i32 0
  %35 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %34, align 8
  %36 = call i32 @kfree(%struct.cmd_ctrl_node* %35)
  %37 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %37, i64 %39
  %41 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %40, i32 0, i32 0
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %41, align 8
  br label %42

42:                                               ; preds = %29, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %17

46:                                               ; preds = %17
  %47 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %48 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %47, i32 0, i32 0
  %49 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %48, align 8
  %50 = icmp ne %struct.cmd_ctrl_node* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %53 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %52, i32 0, i32 0
  %54 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %53, align 8
  %55 = call i32 @kfree(%struct.cmd_ctrl_node* %54)
  %56 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 0
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %57, align 8
  br label %58

58:                                               ; preds = %51, %46
  br label %59

59:                                               ; preds = %58, %11
  %60 = load i32, i32* @LBS_DEB_HOST, align 4
  %61 = call i32 @lbs_deb_leave(i32 %60)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_host(i8*) #1

declare dso_local i32 @kfree(%struct.cmd_ctrl_node*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
