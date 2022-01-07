; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_init_band_reference.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_init_band_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.il_eeprom_channel = type { i32 }

@il_eeprom_band_1 = common dso_local global i32* null, align 8
@il_eeprom_band_2 = common dso_local global i32* null, align 8
@il_eeprom_band_3 = common dso_local global i32* null, align 8
@il_eeprom_band_4 = common dso_local global i32* null, align 8
@il_eeprom_band_5 = common dso_local global i32* null, align 8
@il_eeprom_band_6 = common dso_local global i32* null, align 8
@il_eeprom_band_7 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i32, i32*, %struct.il_eeprom_channel**, i32**)* @il_init_band_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_init_band_reference(%struct.il_priv* %0, i32 %1, i32* %2, %struct.il_eeprom_channel** %3, i32** %4) #0 {
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.il_eeprom_channel**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.il_eeprom_channel** %3, %struct.il_eeprom_channel*** %9, align 8
  store i32** %4, i32*** %10, align 8
  %12 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %100 [
    i32 1, label %23
    i32 2, label %34
    i32 3, label %45
    i32 4, label %56
    i32 5, label %67
    i32 6, label %78
    i32 7, label %89
  ]

23:                                               ; preds = %5
  %24 = load i32*, i32** @il_eeprom_band_1, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @il_eeprom_query_addr(%struct.il_priv* %27, i32 %28)
  %30 = inttoptr i64 %29 to %struct.il_eeprom_channel*
  %31 = load %struct.il_eeprom_channel**, %struct.il_eeprom_channel*** %9, align 8
  store %struct.il_eeprom_channel* %30, %struct.il_eeprom_channel** %31, align 8
  %32 = load i32*, i32** @il_eeprom_band_1, align 8
  %33 = load i32**, i32*** %10, align 8
  store i32* %32, i32** %33, align 8
  br label %102

34:                                               ; preds = %5
  %35 = load i32*, i32** @il_eeprom_band_2, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @il_eeprom_query_addr(%struct.il_priv* %38, i32 %39)
  %41 = inttoptr i64 %40 to %struct.il_eeprom_channel*
  %42 = load %struct.il_eeprom_channel**, %struct.il_eeprom_channel*** %9, align 8
  store %struct.il_eeprom_channel* %41, %struct.il_eeprom_channel** %42, align 8
  %43 = load i32*, i32** @il_eeprom_band_2, align 8
  %44 = load i32**, i32*** %10, align 8
  store i32* %43, i32** %44, align 8
  br label %102

45:                                               ; preds = %5
  %46 = load i32*, i32** @il_eeprom_band_3, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @il_eeprom_query_addr(%struct.il_priv* %49, i32 %50)
  %52 = inttoptr i64 %51 to %struct.il_eeprom_channel*
  %53 = load %struct.il_eeprom_channel**, %struct.il_eeprom_channel*** %9, align 8
  store %struct.il_eeprom_channel* %52, %struct.il_eeprom_channel** %53, align 8
  %54 = load i32*, i32** @il_eeprom_band_3, align 8
  %55 = load i32**, i32*** %10, align 8
  store i32* %54, i32** %55, align 8
  br label %102

56:                                               ; preds = %5
  %57 = load i32*, i32** @il_eeprom_band_4, align 8
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @il_eeprom_query_addr(%struct.il_priv* %60, i32 %61)
  %63 = inttoptr i64 %62 to %struct.il_eeprom_channel*
  %64 = load %struct.il_eeprom_channel**, %struct.il_eeprom_channel*** %9, align 8
  store %struct.il_eeprom_channel* %63, %struct.il_eeprom_channel** %64, align 8
  %65 = load i32*, i32** @il_eeprom_band_4, align 8
  %66 = load i32**, i32*** %10, align 8
  store i32* %65, i32** %66, align 8
  br label %102

67:                                               ; preds = %5
  %68 = load i32*, i32** @il_eeprom_band_5, align 8
  %69 = call i32 @ARRAY_SIZE(i32* %68)
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @il_eeprom_query_addr(%struct.il_priv* %71, i32 %72)
  %74 = inttoptr i64 %73 to %struct.il_eeprom_channel*
  %75 = load %struct.il_eeprom_channel**, %struct.il_eeprom_channel*** %9, align 8
  store %struct.il_eeprom_channel* %74, %struct.il_eeprom_channel** %75, align 8
  %76 = load i32*, i32** @il_eeprom_band_5, align 8
  %77 = load i32**, i32*** %10, align 8
  store i32* %76, i32** %77, align 8
  br label %102

78:                                               ; preds = %5
  %79 = load i32*, i32** @il_eeprom_band_6, align 8
  %80 = call i32 @ARRAY_SIZE(i32* %79)
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @il_eeprom_query_addr(%struct.il_priv* %82, i32 %83)
  %85 = inttoptr i64 %84 to %struct.il_eeprom_channel*
  %86 = load %struct.il_eeprom_channel**, %struct.il_eeprom_channel*** %9, align 8
  store %struct.il_eeprom_channel* %85, %struct.il_eeprom_channel** %86, align 8
  %87 = load i32*, i32** @il_eeprom_band_6, align 8
  %88 = load i32**, i32*** %10, align 8
  store i32* %87, i32** %88, align 8
  br label %102

89:                                               ; preds = %5
  %90 = load i32*, i32** @il_eeprom_band_7, align 8
  %91 = call i32 @ARRAY_SIZE(i32* %90)
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @il_eeprom_query_addr(%struct.il_priv* %93, i32 %94)
  %96 = inttoptr i64 %95 to %struct.il_eeprom_channel*
  %97 = load %struct.il_eeprom_channel**, %struct.il_eeprom_channel*** %9, align 8
  store %struct.il_eeprom_channel* %96, %struct.il_eeprom_channel** %97, align 8
  %98 = load i32*, i32** @il_eeprom_band_7, align 8
  %99 = load i32**, i32*** %10, align 8
  store i32* %98, i32** %99, align 8
  br label %102

100:                                              ; preds = %5
  %101 = call i32 (...) @BUG()
  br label %102

102:                                              ; preds = %100, %89, %78, %67, %56, %45, %34, %23
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @il_eeprom_query_addr(%struct.il_priv*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
