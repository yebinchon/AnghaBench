; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_queue_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_queue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i32, i32 }
%struct.cmd_ctrl_node = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cmd_ds_802_11_ps_mode = type { i64 }

@LBS_DEB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"QUEUE_CMD: cmdnode is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DNLD_CMD: cmd size is zero\0A\00", align 1
@CMD_802_11_PS_MODE = common dso_local global i64 0, align 8
@CMD_SUBCMD_EXIT_PS = common dso_local global i32 0, align 4
@PS_STATE_FULL_POWER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"QUEUE_CMD: inserted command 0x%04x into cmdpendingq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, %struct.cmd_ctrl_node*)* @lbs_queue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_queue_cmd(%struct.lbs_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_ds_802_11_ps_mode*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  store i32 1, i32* %6, align 4
  %8 = load i32, i32* @LBS_DEB_HOST, align 4
  %9 = call i32 @lbs_deb_enter(i32 %8)
  %10 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %11 = icmp ne %struct.cmd_ctrl_node* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %87

14:                                               ; preds = %2
  %15 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %16 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %87

23:                                               ; preds = %14
  %24 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %25 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %27 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le16_to_cpu(i32 %30)
  %32 = load i64, i64* @CMD_802_11_PS_MODE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %23
  %35 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %36 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = bitcast %struct.TYPE_2__* %38 to i8*
  %40 = bitcast i8* %39 to %struct.cmd_ds_802_11_ps_mode*
  store %struct.cmd_ds_802_11_ps_mode* %40, %struct.cmd_ds_802_11_ps_mode** %7, align 8
  %41 = load %struct.cmd_ds_802_11_ps_mode*, %struct.cmd_ds_802_11_ps_mode** %7, align 8
  %42 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @CMD_SUBCMD_EXIT_PS, align 4
  %45 = call i64 @cpu_to_le16(i32 %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %34
  %48 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %49 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PS_STATE_FULL_POWER, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %47
  br label %55

55:                                               ; preds = %54, %34
  br label %56

56:                                               ; preds = %55, %23
  %57 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 1
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %65 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %64, i32 0, i32 1
  %66 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %67 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %66, i32 0, i32 2
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  br label %75

69:                                               ; preds = %56
  %70 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %71 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %70, i32 0, i32 1
  %72 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %73 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %72, i32 0, i32 2
  %74 = call i32 @list_add(i32* %71, i32* %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %77 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %76, i32 0, i32 1
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %81 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le16_to_cpu(i32 %84)
  %86 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %75, %21, %12
  %88 = load i32, i32* @LBS_DEB_HOST, align 4
  %89 = call i32 @lbs_deb_leave(i32 %88)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_host(i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
