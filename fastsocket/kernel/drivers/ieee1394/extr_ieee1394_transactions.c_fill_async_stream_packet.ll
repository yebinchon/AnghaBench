; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_fill_async_stream_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_fill_async_stream_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32*, i32, i32, i32, i32 }

@TCODE_STREAM_DATA = common dso_local global i32 0, align 4
@hpsb_async = common dso_local global i32 0, align 4
@TCODE_ISO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_packet*, i32, i32, i32, i32)* @fill_async_stream_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_async_stream_packet(%struct.hpsb_packet* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hpsb_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = shl i32 %11, 16
  %13 = load i32, i32* %9, align 4
  %14 = shl i32 %13, 14
  %15 = or i32 %12, %14
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %16, 8
  %18 = or i32 %15, %17
  %19 = load i32, i32* @TCODE_STREAM_DATA, align 4
  %20 = shl i32 %19, 4
  %21 = or i32 %18, %20
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %25 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %29 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %28, i32 0, i32 1
  store i32 4, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %32 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @hpsb_async, align 4
  %34 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %35 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @TCODE_ISO_DATA, align 4
  %37 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %38 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
