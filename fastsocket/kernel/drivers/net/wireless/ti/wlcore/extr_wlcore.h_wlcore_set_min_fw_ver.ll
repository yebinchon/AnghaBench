; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_wlcore.h_wlcore_set_min_fw_ver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_wlcore.h_wlcore_set_min_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32*, i32* }

@FW_VER_CHIP = common dso_local global i64 0, align 8
@FW_VER_IF_TYPE = common dso_local global i64 0, align 8
@FW_VER_MAJOR = common dso_local global i64 0, align 8
@FW_VER_SUBTYPE = common dso_local global i64 0, align 8
@FW_VER_MINOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @wlcore_set_min_fw_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_set_min_fw_ver(%struct.wl1271* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.wl1271*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @FW_VER_CHIP, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %29 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @FW_VER_IF_TYPE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @FW_VER_MAJOR, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @FW_VER_SUBTYPE, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @FW_VER_MINOR, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @FW_VER_CHIP, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @FW_VER_IF_TYPE, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @FW_VER_MAJOR, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %71 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @FW_VER_SUBTYPE, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %77 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @FW_VER_MINOR, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %75, i32* %80, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
