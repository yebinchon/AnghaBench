; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88178_link_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88178_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }
%struct.ethtool_cmd = type { i64, i64 }
%struct.asix_data = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"ax88178_link_reset()\00", align 1
@AX88178_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@AX_MEDIUM_GM = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@AX_MEDIUM_PS = common dso_local global i32 0, align 4
@AX_MEDIUM_ENCK = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@AX_MEDIUM_FD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"ax88178_link_reset() speed: %d duplex: %d setting mode to 0x%04x\00", align 1
@PHY_MODE_MARVELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88178_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88178_link_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_cmd, align 8
  %5 = alloca %struct.asix_data*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 1
  %8 = bitcast i32* %7 to %struct.asix_data*
  store %struct.asix_data* %8, %struct.asix_data** %5, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %10 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 0
  %13 = call i32 @mii_check_media(i32* %12, i32 1, i32 1)
  %14 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = call i32 @mii_ethtool_gset(i32* %15, %struct.ethtool_cmd* %4)
  %17 = load i32, i32* @AX88178_MEDIUM_DEFAULT, align 4
  store i32 %17, i32* %3, align 4
  %18 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPEED_1000, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @AX_MEDIUM_GM, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SPEED_100, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @AX_MEDIUM_PS, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %26
  %36 = load i32, i32* @AX_MEDIUM_PS, align 4
  %37 = load i32, i32* @AX_MEDIUM_GM, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %31
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i32, i32* @AX_MEDIUM_ENCK, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DUPLEX_FULL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* @AX_MEDIUM_FD, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %43
  %56 = load i32, i32* @AX_MEDIUM_FD, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %62 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %61, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %63, i64 %65, i32 %66)
  %68 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @asix_write_medium_mode(%struct.usbnet* %68, i32 %69)
  %71 = load %struct.asix_data*, %struct.asix_data** %5, align 8
  %72 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PHY_MODE_MARVELL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %60
  %77 = load %struct.asix_data*, %struct.asix_data** %5, align 8
  %78 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %83 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @marvell_led_status(%struct.usbnet* %82, i64 %84)
  br label %86

86:                                               ; preds = %81, %76, %60
  ret i32 0
}

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, ...) #1

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32) #1

declare dso_local i32 @marvell_led_status(%struct.usbnet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
