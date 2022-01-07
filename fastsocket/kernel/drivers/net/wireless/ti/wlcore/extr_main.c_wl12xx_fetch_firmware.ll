; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_fetch_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_fetch_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i8*, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.firmware = type { i32, i32 }

@WL12XX_FW_TYPE_PLT = common dso_local global i32 0, align 4
@WL12XX_FW_TYPE_MULTI = common dso_local global i32 0, align 4
@WL12XX_FW_TYPE_NORMAL = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"booting firmware %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"could not get firmware %s: %d\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"firmware size is not multiple of 32 bits: %zu\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@WL12XX_FW_TYPE_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"could not allocate memory for the firmware\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32)* @wl12xx_fetch_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_fetch_firmware(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @WL12XX_FW_TYPE_PLT, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @WL12XX_FW_TYPE_MULTI, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  br label %37

32:                                               ; preds = %22, %17
  %33 = load i32, i32* @WL12XX_FW_TYPE_NORMAL, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %12
  %39 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %119

45:                                               ; preds = %38
  %46 = load i32, i32* @DEBUG_BOOT, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @wl1271_debug(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %51 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @request_firmware(%struct.firmware** %6, i8* %49, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %119

61:                                               ; preds = %45
  %62 = load %struct.firmware*, %struct.firmware** %6, align 8
  %63 = getelementptr inbounds %struct.firmware, %struct.firmware* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %64, 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.firmware*, %struct.firmware** %6, align 8
  %69 = getelementptr inbounds %struct.firmware, %struct.firmware* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EILSEQ, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %115

74:                                               ; preds = %61
  %75 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %76 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @vfree(i32 %77)
  %79 = load i32, i32* @WL12XX_FW_TYPE_NONE, align 4
  %80 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %81 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.firmware*, %struct.firmware** %6, align 8
  %83 = getelementptr inbounds %struct.firmware, %struct.firmware* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %86 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %88 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @vmalloc(i32 %89)
  %91 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %92 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %94 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %74
  %98 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %9, align 4
  br label %115

101:                                              ; preds = %74
  %102 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %103 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.firmware*, %struct.firmware** %6, align 8
  %106 = getelementptr inbounds %struct.firmware, %struct.firmware* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %109 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @memcpy(i32 %104, i32 %107, i32 %110)
  store i32 0, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %114 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %101, %97, %67
  %116 = load %struct.firmware*, %struct.firmware** %6, align 8
  %117 = call i32 @release_firmware(%struct.firmware* %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %56, %44
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @wl1271_debug(i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
