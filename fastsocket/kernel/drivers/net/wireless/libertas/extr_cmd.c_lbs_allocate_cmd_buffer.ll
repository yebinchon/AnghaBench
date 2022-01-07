; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_allocate_cmd_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_allocate_cmd_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { i32, i8* }

@LBS_DEB_HOST = common dso_local global i32 0, align 4
@LBS_NUM_CMD_BUFFERS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ALLOC_CMD_BUF: tempcmd_array is NULL\0A\00", align 1
@LBS_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ALLOC_CMD_BUF: ptempvirtualaddr is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_allocate_cmd_buffer(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_ctrl_node*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @LBS_DEB_HOST, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 16, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.cmd_ctrl_node*
  store %struct.cmd_ctrl_node* %16, %struct.cmd_ctrl_node** %6, align 8
  %17 = icmp ne %struct.cmd_ctrl_node* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %72

20:                                               ; preds = %1
  %21 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %22 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 0
  store %struct.cmd_ctrl_node* %21, %struct.cmd_ctrl_node** %23, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %47, %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i32, i32* @LBS_CMD_BUFFER_SIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  %32 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %32, i64 %34
  %36 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %35, i32 0, i32 1
  store i8* %31, i8** %36, align 8
  %37 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %37, i64 %39
  %41 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %28
  %45 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %72

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %24

50:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %68, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @LBS_NUM_CMD_BUFFERS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %56, i64 %58
  %60 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %59, i32 0, i32 0
  %61 = call i32 @init_waitqueue_head(i32* %60)
  %62 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %63 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %63, i64 %65
  %67 = call i32 @lbs_cleanup_and_insert_cmd(%struct.lbs_private* %62, %struct.cmd_ctrl_node* %66)
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %51

71:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %44, %18
  %73 = load i32, i32* @LBS_DEB_HOST, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @lbs_deb_leave_args(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @lbs_deb_host(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @lbs_cleanup_and_insert_cmd(%struct.lbs_private*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
