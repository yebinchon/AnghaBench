; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_ph_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_ph_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_adapter = type { i32, %struct.st5481_in, %struct.st5481_d_out }
%struct.st5481_in = type { i32 }
%struct.st5481_d_out = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ST_DOUT_NONE = common dso_local global i32 0, align 4
@FFMSK_D = common dso_local global i32 0, align 4
@L1_MODE_HDLC = common dso_local global i32 0, align 4
@EP_D_OUT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@GREEN_LED = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@LBB = common dso_local global i32 0, align 4
@cs = common dso_local global %struct.st5481_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st5481_adapter*)* @ph_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ph_connect(%struct.st5481_adapter* %0) #0 {
  %2 = alloca %struct.st5481_adapter*, align 8
  %3 = alloca %struct.st5481_d_out*, align 8
  %4 = alloca %struct.st5481_in*, align 8
  store %struct.st5481_adapter* %0, %struct.st5481_adapter** %2, align 8
  %5 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %5, i32 0, i32 2
  store %struct.st5481_d_out* %6, %struct.st5481_d_out** %3, align 8
  %7 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %7, i32 0, i32 1
  store %struct.st5481_in* %8, %struct.st5481_in** %4, align 8
  %9 = call i32 @DBG(i32 8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.st5481_d_out*, %struct.st5481_d_out** %3, align 8
  %11 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %10, i32 0, i32 0
  %12 = load i32, i32* @ST_DOUT_NONE, align 4
  %13 = call i32 @FsmChangeState(i32* %11, i32 %12)
  %14 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %15 = load i32, i32* @FFMSK_D, align 4
  %16 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %14, i32 %15, i32 252, i32* null, i32* null)
  %17 = load %struct.st5481_in*, %struct.st5481_in** %4, align 8
  %18 = load i32, i32* @L1_MODE_HDLC, align 4
  %19 = call i32 @st5481_in_mode(%struct.st5481_in* %17, i32 %18)
  %20 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %21 = load i32, i32* @EP_D_OUT, align 4
  %22 = load i32, i32* @USB_DIR_OUT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @st5481_usb_pipe_reset(%struct.st5481_adapter* %20, i32 %23, i32* null, i32* null)
  %25 = load i32, i32* @GREEN_LED, align 4
  %26 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %31 = load i32, i32* @GPIO_OUT, align 4
  %32 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %30, i32 %31, i32 %34, i32* null, i32* null)
  ret void
}

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @FsmChangeState(i32*, i32) #1

declare dso_local i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter*, i32, i32, i32*, i32*) #1

declare dso_local i32 @st5481_in_mode(%struct.st5481_in*, i32) #1

declare dso_local i32 @st5481_usb_pipe_reset(%struct.st5481_adapter*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
