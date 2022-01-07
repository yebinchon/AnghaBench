; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_cmd.c_lbtf_beacon_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_cmd.c_lbtf_beacon_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.cmd_ds_802_11_beacon_set = type { %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { i8* }

@LBTF_DEB_CMD = common dso_local global i32 0, align 4
@MRVL_MAX_BCN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@CMD_802_11_BEACON_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbtf_beacon_set(%struct.lbtf_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lbtf_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cmd_ds_802_11_beacon_set, align 8
  %7 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load i32, i32* @LBTF_DEB_CMD, align 4
  %9 = call i32 @lbtf_deb_enter(i32 %8)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MRVL_MAX_BCN_SIZE, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @LBTF_DEB_CMD, align 4
  %17 = call i32 @lbtf_deb_leave_args(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 -1, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add i64 20, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_set, %struct.cmd_ds_802_11_beacon_set* %6, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_set, %struct.cmd_ds_802_11_beacon_set* %6, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_set, %struct.cmd_ds_802_11_beacon_set* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memcpy(i32 %35, i32* %39, i32 %42)
  %44 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %45 = load i32, i32* @CMD_802_11_BEACON_SET, align 4
  %46 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_set, %struct.cmd_ds_802_11_beacon_set* %6, i32 0, i32 0
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @lbtf_cmd_async(%struct.lbtf_private* %44, i32 %45, %struct.TYPE_2__* %46, i32 %47)
  %49 = load i32, i32* @LBTF_DEB_CMD, align 4
  %50 = call i32 @lbtf_deb_leave_args(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %18, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_deb_leave_args(i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lbtf_cmd_async(%struct.lbtf_private*, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
