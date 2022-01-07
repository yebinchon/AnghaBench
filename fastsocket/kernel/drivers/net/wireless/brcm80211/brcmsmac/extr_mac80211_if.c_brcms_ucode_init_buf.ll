; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_ucode_init_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_ucode_init_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__**, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64 }
%struct.firmware_hdr = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ERROR: ucode buf tag:%d can not be found!\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_ucode_init_buf(%struct.brcms_info* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.firmware_hdr*, align 8
  %12 = alloca i64, align 8
  store %struct.brcms_info* %0, %struct.brcms_info** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %90, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %16 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %93

20:                                               ; preds = %13
  %21 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %22 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.firmware_hdr*
  store %struct.firmware_hdr* %31, %struct.firmware_hdr** %11, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %84, %20
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %35 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %33, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %32
  %44 = load %struct.firmware_hdr*, %struct.firmware_hdr** %11, align 8
  %45 = getelementptr inbounds %struct.firmware_hdr, %struct.firmware_hdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %12, align 8
  %49 = load %struct.firmware_hdr*, %struct.firmware_hdr** %11, align 8
  %50 = getelementptr inbounds %struct.firmware_hdr, %struct.firmware_hdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %43
  %57 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %58 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.firmware_hdr*, %struct.firmware_hdr** %11, align 8
  %68 = getelementptr inbounds %struct.firmware_hdr, %struct.firmware_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call i8* @kmemdup(i32* %73, i64 %74, i32 %75)
  %77 = load i8**, i8*** %6, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i8**, i8*** %6, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %56
  br label %104

82:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %107

83:                                               ; preds = %43
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = load %struct.firmware_hdr*, %struct.firmware_hdr** %11, align 8
  %88 = getelementptr inbounds %struct.firmware_hdr, %struct.firmware_hdr* %87, i32 1
  store %struct.firmware_hdr* %88, %struct.firmware_hdr** %11, align 8
  br label %32

89:                                               ; preds = %32
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %13

93:                                               ; preds = %13
  %94 = load %struct.brcms_info*, %struct.brcms_info** %5, align 8
  %95 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @brcms_err(i32 %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %101)
  %103 = load i8**, i8*** %6, align 8
  store i8* null, i8** %103, align 8
  br label %104

104:                                              ; preds = %93, %81
  %105 = load i32, i32* @ENODATA, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %82
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @kmemdup(i32*, i64, i32) #1

declare dso_local i32 @brcms_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
