; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_channel_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_channel_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipac_hw = type { i32 (%struct.ipac_hw*, i32, i32)*, i32 }
%struct.mISDN_ctrl_req = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HW_TESTLOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: unknown CTRL OP %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipac_hw*, %struct.mISDN_ctrl_req*)* @channel_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_ctrl(%struct.ipac_hw* %0, %struct.mISDN_ctrl_req* %1) #0 {
  %3 = alloca %struct.ipac_hw*, align 8
  %4 = alloca %struct.mISDN_ctrl_req*, align 8
  %5 = alloca i32, align 4
  store %struct.ipac_hw* %0, %struct.ipac_hw** %3, align 8
  store %struct.mISDN_ctrl_req* %1, %struct.mISDN_ctrl_req** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %7 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %35 [
    i32 129, label %9
    i32 128, label %12
  ]

9:                                                ; preds = %2
  %10 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %11 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %10, i32 0, i32 0
  store i32 128, i32* %11, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %14 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %19 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load %struct.ipac_hw*, %struct.ipac_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %26, i32 0, i32 0
  %28 = load i32 (%struct.ipac_hw*, i32, i32)*, i32 (%struct.ipac_hw*, i32, i32)** %27, align 8
  %29 = load %struct.ipac_hw*, %struct.ipac_hw** %3, align 8
  %30 = load i32, i32* @HW_TESTLOOP, align 4
  %31 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %32 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %28(%struct.ipac_hw* %29, i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.ipac_hw*, %struct.ipac_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %40 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %35, %25, %22, %9
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
