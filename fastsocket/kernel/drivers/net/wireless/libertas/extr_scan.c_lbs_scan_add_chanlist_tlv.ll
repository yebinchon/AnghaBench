; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_scan_add_chanlist_tlv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_scan.c_lbs_scan_add_chanlist_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chanscanparamset = type { i32 }
%struct.mrvl_ie_chanlist_param_set = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@TLV_TYPE_CHANLIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.chanscanparamset*, i32)* @lbs_scan_add_chanlist_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_scan_add_chanlist_tlv(i32* %0, %struct.chanscanparamset* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.chanscanparamset*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mrvl_ie_chanlist_param_set*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.chanscanparamset* %1, %struct.chanscanparamset** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  store i64 %11, i64* %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.mrvl_ie_chanlist_param_set*
  store %struct.mrvl_ie_chanlist_param_set* %14, %struct.mrvl_ie_chanlist_param_set** %8, align 8
  %15 = load i64, i64* @TLV_TYPE_CHANLIST, align 8
  %16 = call i8* @cpu_to_le16(i64 %15)
  %17 = load %struct.mrvl_ie_chanlist_param_set*, %struct.mrvl_ie_chanlist_param_set** %8, align 8
  %18 = getelementptr inbounds %struct.mrvl_ie_chanlist_param_set, %struct.mrvl_ie_chanlist_param_set* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  %20 = load %struct.mrvl_ie_chanlist_param_set*, %struct.mrvl_ie_chanlist_param_set** %8, align 8
  %21 = getelementptr inbounds %struct.mrvl_ie_chanlist_param_set, %struct.mrvl_ie_chanlist_param_set* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.chanscanparamset*, %struct.chanscanparamset** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @memcpy(i32 %22, %struct.chanscanparamset* %23, i64 %24)
  %26 = load i64, i64* %7, align 8
  %27 = call i8* @cpu_to_le16(i64 %26)
  %28 = load %struct.mrvl_ie_chanlist_param_set*, %struct.mrvl_ie_chanlist_param_set** %8, align 8
  %29 = getelementptr inbounds %struct.mrvl_ie_chanlist_param_set, %struct.mrvl_ie_chanlist_param_set* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add i64 16, %31
  %33 = trunc i64 %32 to i32
  ret i32 %33
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, %struct.chanscanparamset*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
