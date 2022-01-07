; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_pegasus.c_enable_net_traffic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_pegasus.c_enable_net_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.net_device = type { i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@MII_LPA = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@mii_mode = common dso_local global i64 0, align 8
@loopback = common dso_local global i32 0, align 4
@EthCtrl0 = common dso_local global i32 0, align 4
@usb_dev_id = common dso_local global %struct.TYPE_8__* null, align 8
@VENDOR_LINKSYS = common dso_local global i64 0, align 8
@VENDOR_LINKSYS2 = common dso_local global i64 0, align 8
@VENDOR_DLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.usb_device*)* @enable_net_traffic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_net_traffic(%struct.net_device* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MII_LPA, align 4
  %17 = call i32 @read_mii_word(%struct.TYPE_7__* %12, i32 %15, i32 %16, i32* %5)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 201, i32* %18, align 16
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ADVERTISE_100FULL, align 4
  %22 = load i32, i32* @ADVERTISE_10FULL, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 32
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ADVERTISE_100FULL, align 4
  %33 = load i32, i32* @ADVERTISE_100HALF, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 16
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i64, i64* @mii_mode, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* @loopback, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 9, i32 1
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %51, i32* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %57 = call i32 @memcpy(i32 %55, i32* %56, i32 16)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = load i32, i32* @EthCtrl0, align 4
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %61 = call i32 @set_registers(%struct.TYPE_7__* %58, i32 %59, i32 3, i32* %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @usb_dev_id, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @VENDOR_LINKSYS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %91, label %71

71:                                               ; preds = %46
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @usb_dev_id, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VENDOR_LINKSYS2, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %71
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @usb_dev_id, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VENDOR_DLINK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %81, %71, %46
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = call i32 @read_mii_word(%struct.TYPE_7__* %92, i32 0, i32 27, i32* %9)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, 4
  %97 = call i32 @write_mii_word(%struct.TYPE_7__* %94, i32 0, i32 27, i32 %96)
  br label %98

98:                                               ; preds = %91, %81
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @read_mii_word(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @set_registers(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @write_mii_word(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
