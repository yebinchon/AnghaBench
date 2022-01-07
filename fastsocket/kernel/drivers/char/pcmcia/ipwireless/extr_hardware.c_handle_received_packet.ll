; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_handle_received_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_handle_received_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32 }
%union.nl_packet = type { i8*, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NL_LAST_PACKET = common dso_local global i32 0, align 4
@NL_FIRST_PACKET = common dso_local global i32 0, align 4
@NL_FIRST_PACKET_HEADER_SIZE = common dso_local global i32 0, align 4
@NL_FOLLOWING_PACKET_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_hardware*, %union.nl_packet*, i16)* @handle_received_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_received_packet(%struct.ipw_hardware* %0, %union.nl_packet* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.ipw_hardware*, align 8
  %5 = alloca %union.nl_packet*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %4, align 8
  store %union.nl_packet* %1, %union.nl_packet** %5, align 8
  store i16 %2, i16* %6, align 2
  %13 = load %union.nl_packet*, %union.nl_packet** %5, align 8
  %14 = bitcast %union.nl_packet* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %union.nl_packet*, %union.nl_packet** %5, align 8
  %18 = bitcast %union.nl_packet* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %union.nl_packet*, %union.nl_packet** %5, align 8
  %22 = bitcast %union.nl_packet* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NL_LAST_PACKET, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %union.nl_packet*, %union.nl_packet** %5, align 8
  %28 = bitcast %union.nl_packet* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NL_FIRST_PACKET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @NL_FIRST_PACKET_HEADER_SIZE, align 4
  store i32 %35, i32* %9, align 4
  br label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @NL_FOLLOWING_PACKET_HEADER_SIZE, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %union.nl_packet*, %union.nl_packet** %5, align 8
  %40 = bitcast %union.nl_packet* %39 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8* %44, i8** %10, align 8
  %45 = load i16, i16* %6, align 2
  %46 = zext i16 %45 to i32
  %47 = load i32, i32* %9, align 4
  %48 = sub i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %65 [
    i32 129, label %50
    i32 130, label %50
    i32 128, label %58
  ]

50:                                               ; preds = %38, %38
  %51 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @queue_received_packet(%struct.ipw_hardware* %51, i32 %52, i32 %53, i8* %54, i32 %55, i32 %56)
  br label %65

58:                                               ; preds = %38
  %59 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @handle_received_SETUP_packet(%struct.ipw_hardware* %59, i32 %60, i8* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %38, %58, %50
  ret void
}

declare dso_local i32 @queue_received_packet(%struct.ipw_hardware*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @handle_received_SETUP_packet(%struct.ipw_hardware*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
