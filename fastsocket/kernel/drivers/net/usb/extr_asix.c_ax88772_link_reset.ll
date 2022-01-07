; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88772_link_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88772_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.ethtool_cmd = type { i64, i64 }

@AX88772_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@AX_MEDIUM_PS = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@AX_MEDIUM_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"ax88772_link_reset() speed: %d duplex: %d setting mode to 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88772_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88772_link_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_cmd, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %5 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %6 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %5, i32 0, i32 0
  %7 = call i32 @mii_check_media(i32* %6, i32 1, i32 1)
  %8 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 0
  %10 = call i32 @mii_ethtool_gset(i32* %9, %struct.ethtool_cmd* %4)
  %11 = load i32, i32* @AX88772_MEDIUM_DEFAULT, align 4
  store i32 %11, i32* %3, align 4
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPEED_100, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @AX_MEDIUM_PS, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DUPLEX_FULL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @AX_MEDIUM_FD, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @devdbg(%struct.usbnet* %32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %36, i32 %37)
  %39 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @asix_write_medium_mode(%struct.usbnet* %39, i32 %40)
  ret i32 0
}

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i64, i64, i32) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
