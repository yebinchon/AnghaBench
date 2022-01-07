; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_check_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_check_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.rtl_fw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid firwmare\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, %struct.rtl_fw*)* @rtl_check_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_check_firmware(%struct.rtl8169_private* %0, %struct.rtl_fw* %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.rtl_fw*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store %struct.rtl_fw* %1, %struct.rtl_fw** %4, align 8
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %13 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %14 = call i32 @rtl_fw_format_ok(%struct.rtl8169_private* %12, %struct.rtl_fw* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %18 = load i32, i32* @ifup, align 4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @netif_err(%struct.rtl8169_private* %17, i32 %18, %struct.net_device* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %24, i32 0, i32 0
  %26 = call i64 @rtl_fw_data_ok(%struct.rtl8169_private* %22, %struct.net_device* %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %21
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @rtl_fw_format_ok(%struct.rtl8169_private*, %struct.rtl_fw*) #1

declare dso_local i32 @netif_err(%struct.rtl8169_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i64 @rtl_fw_data_ok(%struct.rtl8169_private*, %struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
