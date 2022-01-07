; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_cmx.c_dsp_cmx_hw_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_cmx.c_dsp_cmx_hw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, %struct.mISDN_ctrl_req*)* }
%struct.mISDN_ctrl_req = type { i32, i32, i32 }

@CONTROL_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsp*, i32, i32, i32, i32, i32)* @dsp_cmx_hw_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsp_cmx_hw_message(%struct.dsp* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mISDN_ctrl_req, align 4
  store %struct.dsp* %0, %struct.dsp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = call i32 @memset(%struct.mISDN_ctrl_req* %13, i32 0, i32 12)
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %13, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %17, %19
  %21 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %13, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %22, %24
  %26 = getelementptr inbounds %struct.mISDN_ctrl_req, %struct.mISDN_ctrl_req* %13, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.dsp*, %struct.dsp** %7, align 8
  %28 = getelementptr inbounds %struct.dsp, %struct.dsp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %6
  %33 = load %struct.dsp*, %struct.dsp** %7, align 8
  %34 = getelementptr inbounds %struct.dsp, %struct.dsp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_4__*, i32, %struct.mISDN_ctrl_req*)*, i32 (%struct.TYPE_4__*, i32, %struct.mISDN_ctrl_req*)** %37, align 8
  %39 = load %struct.dsp*, %struct.dsp** %7, align 8
  %40 = getelementptr inbounds %struct.dsp, %struct.dsp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* @CONTROL_CHANNEL, align 4
  %44 = call i32 %38(%struct.TYPE_4__* %42, i32 %43, %struct.mISDN_ctrl_req* %13)
  br label %45

45:                                               ; preds = %32, %6
  ret void
}

declare dso_local i32 @memset(%struct.mISDN_ctrl_req*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
