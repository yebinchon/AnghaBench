; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_diva_get_extended_adapter_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_diva_get_extended_adapter_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_13__*)*, i64 }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { i32, i8* }

@diva_xdi_extended_features = common dso_local global i32 0, align 4
@IDI_SYNC_REQ_XDI_GET_EXTENDED_FEATURES = common dso_local global i32 0, align 4
@DIVA_XDI_EXTENDED_FEATURES_VALID = common dso_local global i8 0, align 1
@DIVA_XDI_EXTENDED_FEATURE_CMA = common dso_local global i8 0, align 1
@DIVA_CAPI_USE_CMA = common dso_local global i32 0, align 4
@DIVA_XDI_EXTENDED_FEATURE_RX_DMA = common dso_local global i8 0, align 1
@DIVA_CAPI_XDI_PROVIDES_RX_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"XDI provides RxDMA\00", align 1
@DIVA_XDI_EXTENDED_FEATURE_SDRAM_BAR = common dso_local global i8 0, align 1
@DIVA_CAPI_XDI_PROVIDES_SDRAM_BAR = common dso_local global i32 0, align 4
@DIVA_XDI_EXTENDED_FEATURE_NO_CANCEL_RC = common dso_local global i8 0, align 1
@DIVA_CAPI_XDI_PROVIDES_NO_CANCEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"XDI provides NO_CANCEL_RC feature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @diva_get_extended_adapter_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diva_get_extended_adapter_features(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca [36 x i8], align 16
  %5 = alloca [4 x i8], align 1
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds [36 x i8], [36 x i8]* %4, i64 0, i64 0
  %8 = bitcast i8* %7 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %3, align 8
  %9 = load i32, i32* @diva_xdi_extended_features, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %106, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = bitcast %struct.TYPE_12__* %12 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %6, align 8
  %14 = load i32, i32* @diva_xdi_extended_features, align 4
  %15 = or i32 %14, -2147483648
  store i32 %15, i32* @diva_xdi_extended_features, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %19, i64* %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @IDI_SYNC_REQ_XDI_GET_EXTENDED_FEATURES, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i8* %35, i8** %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = call i32 %42(%struct.TYPE_13__* %43)
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @DIVA_XDI_EXTENDED_FEATURES_VALID, align 1
  %49 = sext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %105

52:                                               ; preds = %11
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @DIVA_XDI_EXTENDED_FEATURE_CMA, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @DIVA_CAPI_USE_CMA, align 4
  %62 = load i32, i32* @diva_xdi_extended_features, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* @diva_xdi_extended_features, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* @DIVA_XDI_EXTENDED_FEATURE_RX_DMA, align 1
  %69 = sext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32, i32* @DIVA_CAPI_XDI_PROVIDES_RX_DMA, align 4
  %74 = load i32, i32* @diva_xdi_extended_features, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* @diva_xdi_extended_features, align 4
  %76 = call i32 @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @dbug(i32 1, i32 %76)
  br label %78

78:                                               ; preds = %72, %64
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* @DIVA_XDI_EXTENDED_FEATURE_SDRAM_BAR, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* @DIVA_CAPI_XDI_PROVIDES_SDRAM_BAR, align 4
  %88 = load i32, i32* @diva_xdi_extended_features, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* @diva_xdi_extended_features, align 4
  br label %90

90:                                               ; preds = %86, %78
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* @DIVA_XDI_EXTENDED_FEATURE_NO_CANCEL_RC, align 1
  %95 = sext i8 %94 to i32
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i32, i32* @DIVA_CAPI_XDI_PROVIDES_NO_CANCEL, align 4
  %100 = load i32, i32* @diva_xdi_extended_features, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* @diva_xdi_extended_features, align 4
  %102 = call i32 @dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %103 = call i32 @dbug(i32 3, i32 %102)
  br label %104

104:                                              ; preds = %98, %90
  br label %105

105:                                              ; preds = %104, %11
  br label %106

106:                                              ; preds = %105, %1
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = call i32 @diva_ask_for_xdi_sdram_bar(%struct.TYPE_14__* %107, %struct.TYPE_12__* %108)
  ret void
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @diva_ask_for_xdi_sdram_bar(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
