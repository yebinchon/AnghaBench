; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88172_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_ax88172_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.usb_interface = type { i32 }
%struct.asix_data = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@AX88172_EEPROM_LEN = common dso_local global i32 0, align 4
@AX_CMD_WRITE_GPIOS = common dso_local global i32 0, align 4
@AX88172_CMD_READ_NODE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"read AX_CMD_READ_NODE_ID failed: %d\00", align 1
@asix_mdio_read = common dso_local global i32 0, align 4
@ax88172_netdev_ops = common dso_local global i32 0, align 4
@ax88172_ethtool_ops = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @ax88172_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88172_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.asix_data*, align 8
  %12 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 3
  %24 = bitcast i32* %23 to %struct.asix_data*
  store %struct.asix_data* %24, %struct.asix_data** %11, align 8
  %25 = load i32, i32* @AX88172_EEPROM_LEN, align 4
  %26 = load %struct.asix_data*, %struct.asix_data** %11, align 8
  %27 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %29 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %30 = call i32 @usbnet_get_endpoints(%struct.usbnet* %28, %struct.usb_interface* %29)
  store i32 2, i32* %9, align 4
  br label %31

31:                                               ; preds = %48, %2
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %36 = load i32, i32* @AX_CMD_WRITE_GPIOS, align 4
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %38, 8
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %37, %40
  %42 = and i64 %41, 255
  %43 = call i32 @asix_write_cmd(%struct.usbnet* %35, i32 %36, i64 %42, i32 0, i32 0, i32* null)
  store i32 %43, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %144

46:                                               ; preds = %34
  %47 = call i32 @msleep(i32 5)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %9, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %53 = call i32 @asix_write_rx_ctl(%struct.usbnet* %52, i32 128)
  store i32 %53, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %144

56:                                               ; preds = %51
  %57 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %58 = load i32, i32* @AX88172_CMD_READ_NODE_ID, align 4
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @asix_read_cmd(%struct.usbnet* %57, i32 %58, i32 0, i32 0, i32 %59, i32* %16)
  store i32 %60, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %144

65:                                               ; preds = %56
  %66 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = call i32 @memcpy(i32 %70, i32* %16, i32 %71)
  %73 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %74 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %77 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %78, align 8
  %79 = load i32, i32* @asix_mdio_read, align 4
  %80 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %81 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  store i32 %79, i32* %82, align 8
  %83 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %84 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  store i32 (%struct.TYPE_6__*, i32, i32, i32)* @asix_mdio_write, i32 (%struct.TYPE_6__*, i32, i32, i32)** %85, align 8
  %86 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %87 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 63, i32* %88, align 8
  %89 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %90 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 31, i32* %91, align 4
  %92 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %93 = call i32 @asix_get_phy_addr(%struct.usbnet* %92)
  %94 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %95 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %98 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32* @ax88172_netdev_ops, i32** %100, align 8
  %101 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %102 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %101, i32 0, i32 2
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32* @ax88172_ethtool_ops, i32** %104, align 8
  %105 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %106 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %105, i32 0, i32 2
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %109 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MII_BMCR, align 4
  %113 = load i32, i32* @BMCR_RESET, align 4
  %114 = call i32 @asix_mdio_write(%struct.TYPE_6__* %107, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %116 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %115, i32 0, i32 2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %119 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @MII_ADVERTISE, align 4
  %123 = load i32, i32* @ADVERTISE_ALL, align 4
  %124 = load i32, i32* @ADVERTISE_CSMA, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @asix_mdio_write(%struct.TYPE_6__* %117, i32 %121, i32 %122, i32 %127)
  %129 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %130 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %129, i32 0, i32 1
  %131 = call i32 @mii_nway_restart(%struct.TYPE_5__* %130)
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i32 @kzalloc(i32 4, i32 %132)
  %134 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %135 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %137 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %65
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %146

143:                                              ; preds = %65
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %146

144:                                              ; preds = %62, %55, %45
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %146

146:                                              ; preds = %144, %143, %140
  %147 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #2

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i64, i32, i32, i32*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @asix_write_rx_ctl(%struct.usbnet*, i32) #2

declare dso_local i32 @asix_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @dbg(i8*, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @asix_mdio_write(%struct.TYPE_6__*, i32, i32, i32) #2

declare dso_local i32 @asix_get_phy_addr(%struct.usbnet*) #2

declare dso_local i32 @mii_nway_restart(%struct.TYPE_5__*) #2

declare dso_local i32 @kzalloc(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
