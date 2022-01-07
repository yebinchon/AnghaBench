; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_cmd.c_lbtf_submit_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_cmd.c_lbtf_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32 (%struct.lbtf_private*, i32, i32*, i32)*, i32, i32, %struct.cmd_ctrl_node* }
%struct.cmd_ctrl_node = type { %struct.cmd_header* }
%struct.cmd_header = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@LBTF_DEB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"DNLD_CMD: command 0x%04x, seq %d, size %d\0A\00", align 1
@LBTF_DEB_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"DNLD_CMD\00", align 1
@MVMS_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"DNLD_CMD: hw_host_to_card failed: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbtf_private*, %struct.cmd_ctrl_node*)* @lbtf_submit_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbtf_submit_command(%struct.lbtf_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.lbtf_private*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cmd_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 5, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @LBTF_DEB_HOST, align 4
  %14 = call i32 @lbtf_deb_enter(i32 %13)
  %15 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %16 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %15, i32 0, i32 0
  %17 = load %struct.cmd_header*, %struct.cmd_header** %16, align 8
  store %struct.cmd_header* %17, %struct.cmd_header** %6, align 8
  %18 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %19 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %18, i32 0, i32 2
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %23 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %24 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %23, i32 0, i32 3
  store %struct.cmd_ctrl_node* %22, %struct.cmd_ctrl_node** %24, align 8
  %25 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %26 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %30 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %35 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @lbtf_deb_cmd(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37, i32 %38)
  %40 = load i32, i32* @LBTF_DEB_CMD, align 4
  %41 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %42 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %41, i32 0, i32 0
  %43 = load %struct.cmd_header*, %struct.cmd_header** %42, align 8
  %44 = bitcast %struct.cmd_header* %43 to i8*
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @lbtf_deb_hex(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %48 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %47, i32 0, i32 0
  %49 = load i32 (%struct.lbtf_private*, i32, i32*, i32)*, i32 (%struct.lbtf_private*, i32, i32*, i32)** %48, align 8
  %50 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %51 = load i32, i32* @MVMS_CMD, align 4
  %52 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %53 = bitcast %struct.cmd_header* %52 to i32*
  %54 = load i32, i32* %7, align 4
  %55 = call i32 %49(%struct.lbtf_private* %50, i32 %51, i32* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %57 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %56, i32 0, i32 2
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %2
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @HZ, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %2
  %67 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %68 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %67, i32 0, i32 1
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = call i32 @mod_timer(i32* %68, i64 %72)
  %74 = load i32, i32* @LBTF_DEB_HOST, align 4
  %75 = call i32 @lbtf_deb_leave(i32 %74)
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lbtf_deb_cmd(i8*, i32, i32, i32) #1

declare dso_local i32 @lbtf_deb_hex(i32, i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
