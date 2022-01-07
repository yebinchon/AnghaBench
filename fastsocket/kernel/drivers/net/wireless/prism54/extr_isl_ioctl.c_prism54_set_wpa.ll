; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_set_wpa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_set_wpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@PRV_STATE_INIT = common dso_local global i64 0, align 8
@DOT11_MLME_EXTENDED = common dso_local global i32 0, align 4
@DOT11_AUTH_OS = common dso_local global i32 0, align 4
@DOT11_MLME_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: Disabling WPA\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: Enabling WPA\0A\00", align 1
@DOT11_OID_AUTHENABLE = common dso_local global i32 0, align 4
@DOT11_OID_PRIVACYINVOKED = common dso_local global i32 0, align 4
@DOT11_OID_EXUNENCRYPTED = common dso_local global i32 0, align 4
@DOT11_OID_DOT1XENABLE = common dso_local global i32 0, align 4
@DOT11_OID_MLMEAUTOLEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, i32*, i8*)* @prism54_set_wpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_set_wpa(%struct.net_device* %0, %struct.iw_request_info* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = call i64 @islpci_get_state(%struct.TYPE_5__* %18)
  %20 = load i64, i64* @PRV_STATE_INIT, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %67

23:                                               ; preds = %4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  %24 = load i32, i32* @DOT11_MLME_EXTENDED, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @DOT11_AUTH_OS, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @down_write(i32* %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %36 [
    i32 0, label %37
    i32 2, label %43
    i32 1, label %43
  ]

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %23, %36
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %38 = load i32, i32* @DOT11_MLME_AUTO, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %48

43:                                               ; preds = %23, %23
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = call i32 @up_write(i32* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = load i32, i32* @DOT11_OID_AUTHENABLE, align 4
  %54 = call i32 @mgt_set_request(%struct.TYPE_5__* %52, i32 %53, i32 0, i32* %12)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = load i32, i32* @DOT11_OID_PRIVACYINVOKED, align 4
  %57 = call i32 @mgt_set_request(%struct.TYPE_5__* %55, i32 %56, i32 0, i32* %15)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %59 = load i32, i32* @DOT11_OID_EXUNENCRYPTED, align 4
  %60 = call i32 @mgt_set_request(%struct.TYPE_5__* %58, i32 %59, i32 0, i32* %14)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = load i32, i32* @DOT11_OID_DOT1XENABLE, align 4
  %63 = call i32 @mgt_set_request(%struct.TYPE_5__* %61, i32 %62, i32 0, i32* %13)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = load i32, i32* @DOT11_OID_MLMEAUTOLEVEL, align 4
  %66 = call i32 @mgt_set_request(%struct.TYPE_5__* %64, i32 %65, i32 0, i32* %11)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %48, %22
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @islpci_get_state(%struct.TYPE_5__*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mgt_set_request(%struct.TYPE_5__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
