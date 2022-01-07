; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_ixp4xx_hss.c_hss_hdlc_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_ixp4xx_hss.c_hss_hdlc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port = type { i32 }

@ENCODING_NRZ = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@PKT_HDLC_CRC_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i16, i16)* @hss_hdlc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hss_hdlc_attach(%struct.net_device* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.port*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.port* @dev_to_port(%struct.net_device* %9)
  store %struct.port* %10, %struct.port** %8, align 8
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i32
  %13 = load i16, i16* @ENCODING_NRZ, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load i16, i16* %7, align 2
  %21 = zext i16 %20 to i32
  switch i32 %21, label %29 [
    i32 129, label %22
    i32 128, label %25
  ]

22:                                               ; preds = %19
  %23 = load %struct.port*, %struct.port** %8, align 8
  %24 = getelementptr inbounds %struct.port, %struct.port* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %32

25:                                               ; preds = %19
  %26 = load i32, i32* @PKT_HDLC_CRC_32, align 4
  %27 = load %struct.port*, %struct.port** %8, align 8
  %28 = getelementptr inbounds %struct.port, %struct.port* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %25, %22, %16
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.port* @dev_to_port(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
