; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_set_tpc_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_set_tpc_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_802_11_tpc_cfg = type { i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CMD_ACT_SET = common dso_local global i32 0, align 4
@CMD_802_11_TPC_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_tpc_cfg(%struct.lbs_private* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cmd_ds_802_11_tpc_cfg, align 8
  %14 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = call i32 @memset(%struct.cmd_ds_802_11_tpc_cfg* %13, i32 0, i32 48)
  %16 = call i8* @cpu_to_le16(i32 48)
  %17 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, %struct.cmd_ds_802_11_tpc_cfg* %13, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @CMD_ACT_SET, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, %struct.cmd_ds_802_11_tpc_cfg* %13, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, %struct.cmd_ds_802_11_tpc_cfg* %13, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, %struct.cmd_ds_802_11_tpc_cfg* %13, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, %struct.cmd_ds_802_11_tpc_cfg* %13, i32 0, i32 4
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, %struct.cmd_ds_802_11_tpc_cfg* %13, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, %struct.cmd_ds_802_11_tpc_cfg* %13, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %41 = load i32, i32* @CMD_802_11_TPC_CFG, align 4
  %42 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %40, i32 %41, %struct.cmd_ds_802_11_tpc_cfg* %13)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.cmd_ds_802_11_tpc_cfg*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_tpc_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
