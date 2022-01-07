; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_set_internal_rateset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_set_internal_rateset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_8__**, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.brcms_c_rateset, i32 }
%struct.brcms_c_rateset = type { i64 }
%struct.TYPE_7__ = type { %struct.brcms_c_rateset }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@BRCMS_NUMRATES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, %struct.brcms_c_rateset*)* @brcms_c_set_internal_rateset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_set_internal_rateset(%struct.brcms_c_info* %0, %struct.brcms_c_rateset* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca %struct.brcms_c_rateset*, align 8
  %6 = alloca %struct.brcms_c_rateset, align 8
  %7 = alloca %struct.brcms_c_rateset, align 8
  %8 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store %struct.brcms_c_rateset* %1, %struct.brcms_c_rateset** %5, align 8
  %9 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %5, align 8
  %10 = call i32 @memcpy(%struct.brcms_c_rateset* %6, %struct.brcms_c_rateset* %9, i32 8)
  %11 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %6, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BRCMS_NUMRATES, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %85

22:                                               ; preds = %14
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %24 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = call i32 @memcpy(%struct.brcms_c_rateset* %7, %struct.brcms_c_rateset* %6, i32 8)
  %29 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %30 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %31, i64 %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %37 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @brcms_c_rate_hwrs_filter_sort_validate(%struct.brcms_c_rateset* %7, i32* %35, i32 1, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  br label %71

44:                                               ; preds = %22
  %45 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %46 = call i64 @brcms_is_mband_unlocked(%struct.brcms_c_info* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %50 = call i64 @OTHERBANDUNIT(%struct.brcms_c_info* %49)
  store i64 %50, i64* %8, align 8
  %51 = call i32 @memcpy(%struct.brcms_c_rateset* %7, %struct.brcms_c_rateset* %6, i32 8)
  %52 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %53 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %60 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @brcms_c_rate_hwrs_filter_sort_validate(%struct.brcms_c_rateset* %7, i32* %58, i32 1, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %48
  br label %71

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* @EBADE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %85

71:                                               ; preds = %66, %43
  %72 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %73 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i32 @memcpy(%struct.brcms_c_rateset* %75, %struct.brcms_c_rateset* %7, i32 8)
  %77 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %78 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %79, i64 %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @memcpy(%struct.brcms_c_rateset* %83, %struct.brcms_c_rateset* %7, i32 8)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %71, %68, %19
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memcpy(%struct.brcms_c_rateset*, %struct.brcms_c_rateset*, i32) #1

declare dso_local i64 @brcms_c_rate_hwrs_filter_sort_validate(%struct.brcms_c_rateset*, i32*, i32, i32) #1

declare dso_local i64 @brcms_is_mband_unlocked(%struct.brcms_c_info*) #1

declare dso_local i64 @OTHERBANDUNIT(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
