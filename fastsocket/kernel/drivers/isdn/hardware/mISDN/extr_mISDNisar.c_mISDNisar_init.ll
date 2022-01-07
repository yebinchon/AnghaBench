; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_mISDNisar_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_mISDNisar_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_hw = type { i32*, i32*, i32*, i32*, %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { %struct.isar_hw*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32* }

@MAX_DATA_MEM = common dso_local global i32 0, align 4
@isar_l2l1 = common dso_local global i32 0, align 4
@isar_bctrl = common dso_local global i32 0, align 4
@init_isar = common dso_local global i32 0, align 4
@free_isar = common dso_local global i32 0, align 4
@load_firmware = common dso_local global i32 0, align 4
@isar_open = common dso_local global i32 0, align 4
@ISDN_P_B_RAW = common dso_local global i32 0, align 4
@ISDN_P_B_MASK = common dso_local global i32 0, align 4
@ISDN_P_B_HDLC = common dso_local global i32 0, align 4
@ISDN_P_B_L2DTMF = common dso_local global i32 0, align 4
@ISDN_P_B_MODEM_ASYNC = common dso_local global i32 0, align 4
@ISDN_P_B_T30_FAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mISDNisar_init(%struct.isar_hw* %0, i8* %1) #0 {
  %3 = alloca %struct.isar_hw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isar_hw* %0, %struct.isar_hw** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %9 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %8, i32 0, i32 5
  store i8* %7, i8** %9, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %80, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %83

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %17 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %15, i32* %23, align 8
  %24 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %25 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %24, i32 0, i32 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* @MAX_DATA_MEM, align 4
  %32 = call i32 @mISDN_initbchannel(%struct.TYPE_6__* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %36 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %35, i32 0, i32 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %34, i32* %43, align 8
  %44 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %45 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %44, i32 0, i32 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32* @isar_l2l1, i32** %52, align 8
  %53 = load i32, i32* @isar_bctrl, align 4
  %54 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %55 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %54, i32 0, i32 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %53, i32* %62, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %65 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %64, i32 0, i32 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i8* %63, i8** %71, align 8
  %72 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %73 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %74 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store %struct.isar_hw* %72, %struct.isar_hw** %79, align 8
  br label %80

80:                                               ; preds = %13
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %10

83:                                               ; preds = %10
  %84 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %85 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %84, i32 0, i32 3
  store i32* @init_isar, i32** %85, align 8
  %86 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %87 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %86, i32 0, i32 2
  store i32* @free_isar, i32** %87, align 8
  %88 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %89 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %88, i32 0, i32 1
  store i32* @load_firmware, i32** %89, align 8
  %90 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %91 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %90, i32 0, i32 0
  store i32* @isar_open, i32** %91, align 8
  %92 = load i32, i32* @ISDN_P_B_RAW, align 4
  %93 = load i32, i32* @ISDN_P_B_MASK, align 4
  %94 = and i32 %92, %93
  %95 = shl i32 1, %94
  %96 = load i32, i32* @ISDN_P_B_HDLC, align 4
  %97 = load i32, i32* @ISDN_P_B_MASK, align 4
  %98 = and i32 %96, %97
  %99 = shl i32 1, %98
  %100 = or i32 %95, %99
  %101 = load i32, i32* @ISDN_P_B_L2DTMF, align 4
  %102 = load i32, i32* @ISDN_P_B_MASK, align 4
  %103 = and i32 %101, %102
  %104 = shl i32 1, %103
  %105 = or i32 %100, %104
  %106 = load i32, i32* @ISDN_P_B_MODEM_ASYNC, align 4
  %107 = load i32, i32* @ISDN_P_B_MASK, align 4
  %108 = and i32 %106, %107
  %109 = shl i32 1, %108
  %110 = or i32 %105, %109
  %111 = load i32, i32* @ISDN_P_B_T30_FAX, align 4
  %112 = load i32, i32* @ISDN_P_B_MASK, align 4
  %113 = and i32 %111, %112
  %114 = shl i32 1, %113
  %115 = or i32 %110, %114
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @mISDN_initbchannel(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
