; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_analog_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_analog_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot_dt9812 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.dt9812_rmw_byte = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@F020_SFR_DAC0CN = common dso_local global i32 0, align 4
@F020_MASK_DACxCN_DACxEN = common dso_local global i8* null, align 8
@F020_SFR_DAC0L = common dso_local global i32 0, align 4
@F020_SFR_DAC0H = common dso_local global i32 0, align 4
@F020_SFR_DAC1CN = common dso_local global i32 0, align 4
@F020_SFR_DAC1L = common dso_local global i32 0, align 4
@F020_SFR_DAC1H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot_dt9812*, i32, i32)* @dt9812_analog_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_analog_out(%struct.slot_dt9812* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.slot_dt9812*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x %struct.dt9812_rmw_byte], align 16
  store %struct.slot_dt9812* %0, %struct.slot_dt9812** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.slot_dt9812*, %struct.slot_dt9812** %4, align 8
  %12 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %11, i32 0, i32 0
  %13 = call i32 @down(i32* %12)
  %14 = load %struct.slot_dt9812*, %struct.slot_dt9812** %4, align 8
  %15 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %93

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %78 [
    i32 0, label %20
    i32 1, label %49
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @F020_SFR_DAC0CN, align 4
  %22 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %23 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %25 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %24, i32 0, i32 0
  store i32 255, i32* %25, align 16
  %26 = load i8*, i8** @F020_MASK_DACxCN_DACxEN, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %29 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @F020_SFR_DAC0L, align 4
  %31 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %32 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %34 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %33, i32 0, i32 0
  store i32 255, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %38 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @F020_SFR_DAC0H, align 4
  %40 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %41 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %43 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %42, i32 0, i32 0
  store i32 255, i32* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 15
  %47 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %48 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %78

49:                                               ; preds = %18
  %50 = load i32, i32* @F020_SFR_DAC1CN, align 4
  %51 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %52 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %54 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %53, i32 0, i32 0
  store i32 255, i32* %54, align 16
  %55 = load i8*, i8** @F020_MASK_DACxCN_DACxEN, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %58 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @F020_SFR_DAC1L, align 4
  %60 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %61 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %63 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %62, i32 0, i32 0
  store i32 255, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 255
  %66 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 1
  %67 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @F020_SFR_DAC1H, align 4
  %69 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %70 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %72 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %71, i32 0, i32 0
  store i32 255, i32* %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 15
  %76 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 2
  %77 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %18, %49, %20
  %79 = load %struct.slot_dt9812*, %struct.slot_dt9812** %4, align 8
  %80 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %8, i64 0, i64 0
  %83 = call i32 @dt9812_rmw_multiple_registers(%struct.TYPE_2__* %81, i32 3, %struct.dt9812_rmw_byte* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.slot_dt9812*, %struct.slot_dt9812** %4, align 8
  %86 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %84, i32* %92, align 4
  br label %93

93:                                               ; preds = %78, %3
  %94 = load %struct.slot_dt9812*, %struct.slot_dt9812** %4, align 8
  %95 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %94, i32 0, i32 0
  %96 = call i32 @up(i32* %95)
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @dt9812_rmw_multiple_registers(%struct.TYPE_2__*, i32, %struct.dt9812_rmw_byte*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
