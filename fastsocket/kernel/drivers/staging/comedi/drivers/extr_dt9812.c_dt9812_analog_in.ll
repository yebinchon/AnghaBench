; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_analog_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_analog_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot_dt9812 = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dt9812_rmw_byte = type { i32, i32, i32 }

@F020_SFR_ADC0CN = common dso_local global i32 0, align 4
@F020_SFR_ADC0H = common dso_local global i32 0, align 4
@F020_SFR_ADC0L = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@F020_MASK_ADC0CN_AD0EN = common dso_local global i32 0, align 4
@F020_MASK_ADC0CN_AD0BUSY = common dso_local global i32 0, align 4
@F020_MASK_ADC0CN_AD0INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot_dt9812*, i32, i32*, i32)* @dt9812_analog_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_analog_in(%struct.slot_dt9812* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.slot_dt9812*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x %struct.dt9812_rmw_byte], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.slot_dt9812* %0, %struct.slot_dt9812** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %14 = load i32, i32* @F020_SFR_ADC0CN, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @F020_SFR_ADC0H, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @F020_SFR_ADC0L, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.slot_dt9812*, %struct.slot_dt9812** %5, align 8
  %22 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %21, i32 0, i32 0
  %23 = call i32 @down(i32* %22)
  %24 = load %struct.slot_dt9812*, %struct.slot_dt9812** %5, align 8
  %25 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %104

29:                                               ; preds = %4
  %30 = load %struct.slot_dt9812*, %struct.slot_dt9812** %5, align 8
  %31 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %9, i64 0, i64 0
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dt9812_configure_gain(%struct.TYPE_5__* %32, %struct.dt9812_rmw_byte* %33, i32 %34)
  %36 = load %struct.slot_dt9812*, %struct.slot_dt9812** %5, align 8
  %37 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %9, i64 0, i64 1
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dt9812_configure_mux(%struct.TYPE_5__* %38, %struct.dt9812_rmw_byte* %39, i32 %40)
  %42 = load i32, i32* @F020_SFR_ADC0CN, align 4
  %43 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %9, i64 0, i64 2
  %44 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %9, i64 0, i64 2
  %46 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %45, i32 0, i32 1
  store i32 255, i32* %46, align 4
  %47 = load i32, i32* @F020_MASK_ADC0CN_AD0EN, align 4
  %48 = load i32, i32* @F020_MASK_ADC0CN_AD0BUSY, align 4
  %49 = or i32 %47, %48
  %50 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %9, i64 0, i64 2
  %51 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.slot_dt9812*, %struct.slot_dt9812** %5, align 8
  %53 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %9, i64 0, i64 0
  %56 = call i32 @dt9812_rmw_multiple_registers(%struct.TYPE_5__* %54, i32 3, %struct.dt9812_rmw_byte* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %29
  br label %104

60:                                               ; preds = %29
  %61 = load %struct.slot_dt9812*, %struct.slot_dt9812** %5, align 8
  %62 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %66 = call i32 @dt9812_read_multiple_registers(%struct.TYPE_5__* %63, i32 3, i32* %64, i32* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %104

70:                                               ; preds = %60
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @F020_MASK_ADC0CN_AD0INT, align 4
  %74 = load i32, i32* @F020_MASK_ADC0CN_AD0BUSY, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = load i32, i32* @F020_MASK_ADC0CN_AD0INT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %70
  %80 = load %struct.slot_dt9812*, %struct.slot_dt9812** %5, align 8
  %81 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %102 [
    i32 129, label %85
    i32 128, label %94
  ]

85:                                               ; preds = %79
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %88, %90
  %92 = add nsw i32 %91, 2048
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  br label %102

94:                                               ; preds = %79
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %97, %99
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %79, %94, %85
  br label %103

103:                                              ; preds = %102, %70
  br label %104

104:                                              ; preds = %103, %69, %59, %28
  %105 = load %struct.slot_dt9812*, %struct.slot_dt9812** %5, align 8
  %106 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %105, i32 0, i32 0
  %107 = call i32 @up(i32* %106)
  %108 = load i32, i32* %12, align 4
  ret i32 %108
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @dt9812_configure_gain(%struct.TYPE_5__*, %struct.dt9812_rmw_byte*, i32) #1

declare dso_local i32 @dt9812_configure_mux(%struct.TYPE_5__*, %struct.dt9812_rmw_byte*, i32) #1

declare dso_local i32 @dt9812_rmw_multiple_registers(%struct.TYPE_5__*, i32, %struct.dt9812_rmw_byte*) #1

declare dso_local i32 @dt9812_read_multiple_registers(%struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
