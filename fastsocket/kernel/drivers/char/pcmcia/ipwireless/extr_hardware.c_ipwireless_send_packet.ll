; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_ipwireless_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_ipwireless_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32 }
%struct.ipw_tx_packet = type { void (i8*, i32)*, i8* }

@TL_PROTOCOLID_COM_DATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PRIO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipwireless_send_packet(%struct.ipw_hardware* %0, i32 %1, i8* %2, i32 %3, void (i8*, i32)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipw_hardware*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (i8*, i32)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ipw_tx_packet*, align 8
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store void (i8*, i32)* %4, void (i8*, i32)** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add i32 %16, 1
  %18 = load i32, i32* @TL_PROTOCOLID_COM_DATA, align 4
  %19 = call %struct.ipw_tx_packet* @alloc_data_packet(i32 %15, i32 %17, i32 %18)
  store %struct.ipw_tx_packet* %19, %struct.ipw_tx_packet** %14, align 8
  %20 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %14, align 8
  %21 = icmp ne %struct.ipw_tx_packet* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %42

25:                                               ; preds = %6
  %26 = load void (i8*, i32)*, void (i8*, i32)** %12, align 8
  %27 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %14, align 8
  %28 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %27, i32 0, i32 0
  store void (i8*, i32)* %26, void (i8*, i32)** %28, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %14, align 8
  %31 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %14, align 8
  %33 = bitcast %struct.ipw_tx_packet* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 16
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @memcpy(i8* %34, i8* %35, i32 %36)
  %38 = load %struct.ipw_hardware*, %struct.ipw_hardware** %8, align 8
  %39 = load i32, i32* @PRIO_DATA, align 4
  %40 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %14, align 8
  %41 = call i32 @send_packet(%struct.ipw_hardware* %38, i32 %39, %struct.ipw_tx_packet* %40)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %25, %22
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.ipw_tx_packet* @alloc_data_packet(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @send_packet(%struct.ipw_hardware*, i32, %struct.ipw_tx_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
