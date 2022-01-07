; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_scan_add_ssid_tlv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_scan_add_ssid_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32 }
%struct.mrvl_ie_ssid_param_set = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@TLV_TYPE_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32*)* @lbs_scan_add_ssid_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_scan_add_ssid_tlv(%struct.lbs_private* %0, i32* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mrvl_ie_ssid_param_set*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.mrvl_ie_ssid_param_set*
  store %struct.mrvl_ie_ssid_param_set* %8, %struct.mrvl_ie_ssid_param_set** %5, align 8
  %9 = load i32, i32* @TLV_TYPE_SSID, align 4
  %10 = call i8* @cpu_to_le16(i32 %9)
  %11 = load %struct.mrvl_ie_ssid_param_set*, %struct.mrvl_ie_ssid_param_set** %5, align 8
  %12 = getelementptr inbounds %struct.mrvl_ie_ssid_param_set, %struct.mrvl_ie_ssid_param_set* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i8* %10, i8** %13, align 8
  %14 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.mrvl_ie_ssid_param_set*, %struct.mrvl_ie_ssid_param_set** %5, align 8
  %19 = getelementptr inbounds %struct.mrvl_ie_ssid_param_set, %struct.mrvl_ie_ssid_param_set* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load %struct.mrvl_ie_ssid_param_set*, %struct.mrvl_ie_ssid_param_set** %5, align 8
  %22 = getelementptr inbounds %struct.mrvl_ie_ssid_param_set, %struct.mrvl_ie_ssid_param_set* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %23, i32 %26, i32 %29)
  %31 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 16, %34
  %36 = trunc i64 %35 to i32
  ret i32 %36
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
