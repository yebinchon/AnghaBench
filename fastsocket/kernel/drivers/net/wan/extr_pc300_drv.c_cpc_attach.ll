; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_pc300_drv.c_cpc_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_pc300_drv.c_cpc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i16, i16 }
%struct.TYPE_14__ = type { i64 }

@PC300_TE = common dso_local global i64 0, align 8
@ENCODING_NRZ = common dso_local global i16 0, align 2
@ENCODING_NRZI = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@ENCODING_FM_MARK = common dso_local global i16 0, align 2
@ENCODING_FM_SPACE = common dso_local global i16 0, align 2
@PARITY_NONE = common dso_local global i16 0, align 2
@PARITY_CRC16_PR0 = common dso_local global i16 0, align 2
@PARITY_CRC16_PR1 = common dso_local global i16 0, align 2
@PARITY_CRC32_PR1_CCITT = common dso_local global i16 0, align 2
@PARITY_CRC16_PR1_CCITT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i16, i16)* @cpc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpc_attach(%struct.net_device* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.TYPE_14__* @dev_to_hdlc(%struct.net_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %9, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %10, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %11, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PC300_TE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %3
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* @ENCODING_NRZ, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i16, i16* %6, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* @ENCODING_NRZI, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %120

49:                                               ; preds = %40, %34
  br label %78

50:                                               ; preds = %3
  %51 = load i16, i16* %6, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @ENCODING_NRZ, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load i16, i16* %6, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, i16* @ENCODING_NRZI, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load i16, i16* %6, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* @ENCODING_FM_MARK, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i16, i16* %6, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* @ENCODING_FM_SPACE, align 2
  %72 = zext i16 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %120

77:                                               ; preds = %68, %62, %56, %50
  br label %78

78:                                               ; preds = %77, %49
  %79 = load i16, i16* %7, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* @PARITY_NONE, align 2
  %82 = zext i16 %81 to i32
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %78
  %85 = load i16, i16* %7, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16, i16* @PARITY_CRC16_PR0, align 2
  %88 = zext i16 %87 to i32
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = load i16, i16* %7, align 2
  %92 = zext i16 %91 to i32
  %93 = load i16, i16* @PARITY_CRC16_PR1, align 2
  %94 = zext i16 %93 to i32
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load i16, i16* %7, align 2
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* @PARITY_CRC32_PR1_CCITT, align 2
  %100 = zext i16 %99 to i32
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load i16, i16* %7, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* @PARITY_CRC16_PR1_CCITT, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %120

111:                                              ; preds = %102, %96, %90, %84, %78
  %112 = load i16, i16* %6, align 2
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  store i16 %112, i16* %115, align 2
  %116 = load i16, i16* %7, align 2
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  store i16 %116, i16* %119, align 2
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %111, %108, %74, %46
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_14__* @dev_to_hdlc(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
