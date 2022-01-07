; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_lbs_assoc_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_lbs_assoc_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, %struct.TYPE_7__, i32, i64, i64, i32, i32, i64**, i64**, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32*, i32, i32 }
%struct.TYPE_5__ = type { %struct.bss_descriptor }
%struct.bss_descriptor = type { i32*, i32, i32 }
%struct.cmd_ds_802_11_associate_response = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%union.iwreq_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }

@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ASSOC_RESP: no in-progress assoc request\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ASSOC_RESP: invalid parameters\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"ASSOC_RESP: internal timer expired while waiting for the AP\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"ASSOC_RESP: association refused by AP\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"ASSOC_RESP: authentication refused by AP\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"ASSOC_RESP: failure reason 0x%02x  unknown\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"ASSOC_RESP: failure reason 0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ASSOC_RESP\00", align 1
@LBS_CONNECTED = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@TYPE_RXPD = common dso_local global i64 0, align 8
@TYPE_AVG = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.cmd_ds_802_11_associate_response*)* @lbs_assoc_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_assoc_post(%struct.lbs_private* %0, %struct.cmd_ds_802_11_associate_response* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.cmd_ds_802_11_associate_response*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.iwreq_data, align 8
  %7 = alloca %struct.bss_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.cmd_ds_802_11_associate_response* %1, %struct.cmd_ds_802_11_associate_response** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %10 = call i32 @lbs_deb_enter(i32 %9)
  %11 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 11
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %152

17:                                               ; preds = %2
  %18 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.bss_descriptor* %21, %struct.bss_descriptor** %7, align 8
  %22 = load %struct.cmd_ds_802_11_associate_response*, %struct.cmd_ds_802_11_associate_response** %4, align 8
  %23 = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, %struct.cmd_ds_802_11_associate_response* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 150994944
  br i1 %29, label %30, label %45

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %41 [
    i32 0, label %32
    i32 1, label %33
    i32 2, label %35
    i32 3, label %37
    i32 4, label %39
  ]

32:                                               ; preds = %30
  br label %44

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %44

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %44

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %44

39:                                               ; preds = %30
  %40 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %44

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %39, %37, %35, %33, %32
  br label %48

45:                                               ; preds = %17
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %44
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %53 = call i32 @lbs_mac_event_disconnected(%struct.lbs_private* %52)
  store i32 -1, i32* %5, align 4
  br label %152

54:                                               ; preds = %48
  %55 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %56 = load %struct.cmd_ds_802_11_associate_response*, %struct.cmd_ds_802_11_associate_response** %4, align 8
  %57 = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, %struct.cmd_ds_802_11_associate_response* %56, i64 4
  %58 = bitcast %struct.cmd_ds_802_11_associate_response* %57 to i8*
  %59 = load %struct.cmd_ds_802_11_associate_response*, %struct.cmd_ds_802_11_associate_response** %4, align 8
  %60 = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, %struct.cmd_ds_802_11_associate_response* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32 @lbs_deb_hex(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %58, i32 %66)
  %68 = load i32, i32* @LBS_CONNECTED, align 4
  %69 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %70 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  %71 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %72 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load %struct.bss_descriptor*, %struct.bss_descriptor** %7, align 8
  %75 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %74, i32 0, i32 2
  %76 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %77 = call i32 @memcpy(i32* %73, i32* %75, i32 %76)
  %78 = load %struct.bss_descriptor*, %struct.bss_descriptor** %7, align 8
  %79 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %82 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.bss_descriptor*, %struct.bss_descriptor** %7, align 8
  %89 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = call i32 @memcpy(i32* %87, i32* %90, i32 %91)
  %93 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %94 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %93, i32 0, i32 9
  %95 = load i64**, i64*** %94, align 8
  %96 = load i64, i64* @TYPE_RXPD, align 8
  %97 = getelementptr inbounds i64*, i64** %95, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @TYPE_AVG, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 0, i64* %100, align 8
  %101 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %102 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %101, i32 0, i32 8
  %103 = load i64**, i64*** %102, align 8
  %104 = load i64, i64* @TYPE_RXPD, align 8
  %105 = getelementptr inbounds i64*, i64** %103, i64 %104
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @TYPE_AVG, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 0, i64* %108, align 8
  %109 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %110 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memset(i32 %111, i32 0, i32 4)
  %113 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %114 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memset(i32 %115, i32 0, i32 4)
  %117 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %118 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %117, i32 0, i32 5
  store i64 0, i64* %118, align 8
  %119 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %120 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %119, i32 0, i32 4
  store i64 0, i64* %120, align 8
  %121 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %122 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @netif_carrier_on(i32 %123)
  %125 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %126 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %54
  %130 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %131 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @netif_wake_queue(i32 %132)
  br label %134

134:                                              ; preds = %129, %54
  %135 = bitcast %union.iwreq_data* %6 to %struct.TYPE_8__*
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %139 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @ETH_ALEN, align 4
  %143 = call i32 @memcpy(i32* %137, i32* %141, i32 %142)
  %144 = load i32, i32* @ARPHRD_ETHER, align 4
  %145 = bitcast %union.iwreq_data* %6 to %struct.TYPE_8__*
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %148 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SIOCGIWAP, align 4
  %151 = call i32 @wireless_send_event(i32 %149, i32 %150, %union.iwreq_data* %6, i32* null)
  br label %152

152:                                              ; preds = %134, %51, %15
  %153 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @lbs_deb_leave_args(i32 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_assoc(i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lbs_mac_event_disconnected(%struct.lbs_private*) #1

declare dso_local i32 @lbs_deb_hex(i32, i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
