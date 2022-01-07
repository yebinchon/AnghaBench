; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_speedfax.c_channel_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_speedfax.c_channel_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfax_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32)* }
%struct.mISDN_ctrl_req = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HW_TESTLOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: unknown Op %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfax_hw*, %struct.mISDN_ctrl_req*)* @channel_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_ctrl(%struct.sfax_hw* %0, %struct.mISDN_ctrl_req* %1) #0 {
  %3 = alloca %struct.sfax_hw*, align 8
  %4 = alloca %struct.mISDN_ctrl_req*, align 8
  %5 = alloca i32, align 4
  store %struct.sfax_hw* %0, %struct.sfax_hw** %3, align 8
  store %struct.mISDN_ctrl_req* %1, %struct.mISDN_ctrl_req** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %7 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %37 [
    i32 129, label %9
    i32 128, label %12
  ]

9:                                                ; preds = %2
  %10 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %11 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %10, i32 0, i32 0
  store i32 128, i32* %11, align 4
  br label %47

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
  br label %47

25:                                               ; preds = %17
  %26 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %27 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_2__*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32)** %28, align 8
  %30 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %31 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %30, i32 0, i32 1
  %32 = load i32, i32* @HW_TESTLOOP, align 4
  %33 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %34 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %29(%struct.TYPE_2__* %31, i32 %32, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %47

37:                                               ; preds = %2
  %38 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %39 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mISDN_ctrl_req*, %struct.mISDN_ctrl_req** %4, align 8
  %42 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %37, %25, %22, %9
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
