; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_shm_ssid_upd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_shm_ssid_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32 }
%struct.brcms_bss_cfg = type { i64, i32* }

@M_SSID = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@M_SSIDLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, %struct.brcms_bss_cfg*)* @brcms_c_shm_ssid_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_shm_ssid_upd(%struct.brcms_c_info* %0, %struct.brcms_bss_cfg* %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca %struct.brcms_bss_cfg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store %struct.brcms_bss_cfg* %1, %struct.brcms_bss_cfg** %4, align 8
  %9 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @M_SSID, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %18 = call i32 @memset(i32* %16, i32 0, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @memcpy(i32* %16, i32* %19, i64 %22)
  %24 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %27 = call i32 @brcms_c_copyto_shm(%struct.brcms_c_info* %24, i32 %25, i32* %16, i32 %26)
  %28 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %29 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @M_SSIDLEN, align 4
  %32 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %4, align 8
  %33 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @brcms_b_write_shm(i32 %30, i32 %31, i32 %35)
  %37 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %37)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @brcms_c_copyto_shm(%struct.brcms_c_info*, i32, i32*, i32) #2

declare dso_local i32 @brcms_b_write_shm(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
