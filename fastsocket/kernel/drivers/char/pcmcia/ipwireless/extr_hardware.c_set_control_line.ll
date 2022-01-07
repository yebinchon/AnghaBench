; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_set_control_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_set_control_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32 }
%struct.ipw_control_packet = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TL_PROTOCOLID_COM_CTRL = common dso_local global i32 0, align 4
@PRIO_SETUP = common dso_local global i32 0, align 4
@TL_PROTOCOLID_SETUP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_hardware*, i32, i32, i32, i32)* @set_control_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_control_line(%struct.ipw_hardware* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipw_hardware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipw_control_packet*, align 8
  %13 = alloca i32, align 4
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @TL_PROTOCOLID_COM_CTRL, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PRIO_SETUP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @TL_PROTOCOLID_SETUP, align 4
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i32, i32* %9, align 4
  %22 = add i32 %21, 1
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.ipw_control_packet* @alloc_ctrl_packet(i32 8, i32 %22, i32 %23, i32 %24)
  store %struct.ipw_control_packet* %25, %struct.ipw_control_packet** %12, align 8
  %26 = load %struct.ipw_control_packet*, %struct.ipw_control_packet** %12, align 8
  %27 = icmp ne %struct.ipw_control_packet* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %47

31:                                               ; preds = %20
  %32 = load %struct.ipw_control_packet*, %struct.ipw_control_packet** %12, align 8
  %33 = getelementptr inbounds %struct.ipw_control_packet, %struct.ipw_control_packet* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 4, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 1
  %39 = load %struct.ipw_control_packet*, %struct.ipw_control_packet** %12, align 8
  %40 = getelementptr inbounds %struct.ipw_control_packet, %struct.ipw_control_packet* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.ipw_hardware*, %struct.ipw_hardware** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.ipw_control_packet*, %struct.ipw_control_packet** %12, align 8
  %45 = getelementptr inbounds %struct.ipw_control_packet, %struct.ipw_control_packet* %44, i32 0, i32 0
  %46 = call i32 @send_packet(%struct.ipw_hardware* %42, i32 %43, %struct.TYPE_4__* %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %31, %28
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.ipw_control_packet* @alloc_ctrl_packet(i32, i32, i32, i32) #1

declare dso_local i32 @send_packet(%struct.ipw_hardware*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
