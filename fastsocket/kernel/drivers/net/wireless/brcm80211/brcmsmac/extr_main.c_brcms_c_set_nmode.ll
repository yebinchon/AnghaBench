; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_set_nmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_set_nmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_11__*, %struct.TYPE_10__**, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }

@AUTO = common dso_local global i64 0, align 8
@WL_11N_3x3 = common dso_local global i64 0, align 8
@WL_11N_2x2 = common dso_local global i64 0, align 8
@GMODE_AUTO = common dso_local global i32 0, align 4
@SUPPORT_HT = common dso_local global i32 0, align 4
@SUPPORT_11N = common dso_local global i32 0, align 4
@BRCMS_BSS_HT = common dso_local global i32 0, align 4
@MCSSET_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_set_nmode(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %5 = load i64, i64* @AUTO, align 8
  store i64 %5, i64* %4, align 8
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 3
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WL_11N_3x3, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @WL_11N_3x3, align 8
  store i64 %14, i64* %4, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @WL_11N_2x2, align 8
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %19 = load i32, i32* @GMODE_AUTO, align 4
  %20 = call i32 @brcms_c_set_gmode(%struct.brcms_c_info* %18, i32 %19, i32 1)
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @WL_11N_3x3, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @SUPPORT_HT, align 4
  %26 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 8
  br label %36

30:                                               ; preds = %17
  %31 = load i32, i32* @SUPPORT_11N, align 4
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* @BRCMS_BSS_HT, align 4
  %38 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %39 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %45 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %49 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %48, i32 0, i32 3
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @brcms_c_rateset_mcs_build(%struct.TYPE_12__* %47, i64 %52)
  store i64 0, i64* %3, align 8
  br label %54

54:                                               ; preds = %80, %36
  %55 = load i64, i64* %3, align 8
  %56 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %57 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %55, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %54
  %63 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %64 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %64, align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %65, i64 %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %73 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MCSSET_LEN, align 4
  %79 = call i32 @memcpy(i32 %71, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %62
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %3, align 8
  br label %54

83:                                               ; preds = %54
  ret i32 0
}

declare dso_local i32 @brcms_c_set_gmode(%struct.brcms_c_info*, i32, i32) #1

declare dso_local i32 @brcms_c_rateset_mcs_build(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
