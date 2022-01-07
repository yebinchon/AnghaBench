; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_submit_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 (%struct.lbs_private*, i32, i32*, i64)*, i32, i32, i64, %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { %struct.cmd_header* }
%struct.cmd_header = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@LBS_DEB_HOST = common dso_local global i32 0, align 4
@CMD_802_11_SCAN = common dso_local global i64 0, align 8
@CMD_802_11_ASSOCIATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"DNLD_CMD: command 0x%04x, seq %d, size %d\0A\00", align 1
@LBS_DEB_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"DNLD_CMD\00", align 1
@MVMS_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"DNLD_CMD: hw_host_to_card failed: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, %struct.cmd_ctrl_node*)* @lbs_submit_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_submit_command(%struct.lbs_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cmd_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 3, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @LBS_DEB_HOST, align 4
  %14 = call i32 @lbs_deb_enter(i32 %13)
  %15 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %16 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %15, i32 0, i32 0
  %17 = load %struct.cmd_header*, %struct.cmd_header** %16, align 8
  store %struct.cmd_header* %17, %struct.cmd_header** %6, align 8
  %18 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 2
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %23 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 4
  store %struct.cmd_ctrl_node* %22, %struct.cmd_ctrl_node** %24, align 8
  %25 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 2
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %32 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le16_to_cpu(i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %36 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le16_to_cpu(i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @CMD_802_11_SCAN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %2
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @CMD_802_11_ASSOCIATE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %2
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 5, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %52 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @le16_to_cpu(i32 %53)
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %54, i64 %55)
  %57 = load i32, i32* @LBS_DEB_CMD, align 4
  %58 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %59 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %58, i32 0, i32 0
  %60 = load %struct.cmd_header*, %struct.cmd_header** %59, align 8
  %61 = bitcast %struct.cmd_header* %60 to i8*
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @lbs_deb_hex(i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %61, i64 %62)
  %64 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 0
  %66 = load i32 (%struct.lbs_private*, i32, i32*, i64)*, i32 (%struct.lbs_private*, i32, i32*, i64)** %65, align 8
  %67 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %68 = load i32, i32* @MVMS_CMD, align 4
  %69 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %70 = bitcast %struct.cmd_header* %69 to i32*
  %71 = load i64, i64* %7, align 8
  %72 = call i32 %66(%struct.lbs_private* %67, i32 %68, i32* %70, i64 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %49
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @lbs_pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @HZ, align 4
  %79 = sdiv i32 %78, 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %75, %49
  %81 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %82 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %81, i32 0, i32 1
  %83 = load i64, i64* @jiffies, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = call i32 @mod_timer(i32* %82, i64 %86)
  %88 = load i32, i32* @LBS_DEB_HOST, align 4
  %89 = call i32 @lbs_deb_leave(i32 %88)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i64, i64, i64) #1

declare dso_local i32 @lbs_deb_hex(i32, i8*, i8*, i64) #1

declare dso_local i32 @lbs_pr_info(i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
