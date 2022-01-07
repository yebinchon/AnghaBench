; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_rtl8150_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_rtl8150_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32, i32 }
%struct.sockaddr = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Setting MAC address to \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X\0A\00", align 1
@IDR = common dso_local global i64 0, align 8
@CR = common dso_local global i64 0, align 8
@IDR_EEPROM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @rtl8150_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8150_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sockaddr*
  store %struct.sockaddr* %10, %struct.sockaddr** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32* @netdev_priv(%struct.net_device* %11)
  store i32* %12, i32** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i64 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memcpy(i32* %22, i32 %25, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %46, %19
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 5
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dbg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %34

49:                                               ; preds = %34
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dbg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* @IDR, align 8
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @set_registers(i32* %58, i64 %59, i32 %62, i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %49, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @set_registers(i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
