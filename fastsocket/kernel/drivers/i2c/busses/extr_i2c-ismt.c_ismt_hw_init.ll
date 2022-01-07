; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_priv = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ISMT_MSTR_MDBA = common dso_local global i64 0, align 8
@ISMT_MCTRL_MEIE = common dso_local global i32 0, align 4
@ISMT_MSTR_MCTRL = common dso_local global i64 0, align 8
@ISMT_MSTR_MSTS = common dso_local global i64 0, align 8
@ISMT_MSTR_MDS = common dso_local global i64 0, align 8
@ISMT_MDS_MASK = common dso_local global i32 0, align 4
@ISMT_DESC_ENTRIES = common dso_local global i32 0, align 4
@ISMT_SPGT = common dso_local global i64 0, align 8
@bus_speed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Setting SMBus clock to 80 kHz\0A\00", align 1
@ISMT_SPGT_SPD_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Setting SMBus clock to 100 kHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Setting SMBus clock to 400 kHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Setting SMBus clock to 1000 kHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Invalid SMBus clock speed, only 0, 80, 100, 400, and 1000 are valid\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"SMBus clock is running at %d kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ismt_priv*)* @ismt_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ismt_hw_init(%struct.ismt_priv* %0) #0 {
  %2 = alloca %struct.ismt_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store %struct.ismt_priv* %0, %struct.ismt_priv** %2, align 8
  %5 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ISMT_MSTR_MDBA, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writeq(i32 %11, i64 %16)
  %18 = load i32, i32* @ISMT_MCTRL_MEIE, align 4
  %19 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %20 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ISMT_MSTR_MCTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %26 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ISMT_MSTR_MSTS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 0, i64 %29)
  %31 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %32 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ISMT_MSTR_MDS, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @ISMT_MDS_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @ISMT_DESC_ENTRIES, align 4
  %42 = sub nsw i32 %41, 1
  %43 = or i32 %40, %42
  %44 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ISMT_MSTR_MDS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %51 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ISMT_SPGT, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @bus_speed, align 4
  switch i32 %56, label %114 [
    i32 0, label %57
    i32 80, label %58
    i32 100, label %72
    i32 400, label %86
    i32 1000, label %100
  ]

57:                                               ; preds = %1
  br label %117

58:                                               ; preds = %1
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @ISMT_SPGT_SPD_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = or i32 %64, 128
  %66 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %67 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ISMT_SPGT, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  br label %117

72:                                               ; preds = %1
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @ISMT_SPGT_SPD_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = or i32 %78, 131
  %80 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %81 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ISMT_SPGT, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  br label %117

86:                                               ; preds = %1
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @ISMT_SPGT_SPD_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = or i32 %92, 129
  %94 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %95 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ISMT_SPGT, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  br label %117

100:                                              ; preds = %1
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @ISMT_SPGT_SPD_MASK, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = or i32 %106, 130
  %108 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %109 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ISMT_SPGT, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel(i32 %107, i64 %112)
  br label %117

114:                                              ; preds = %1
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_warn(%struct.device* %115, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %100, %86, %72, %58, %57
  %118 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %119 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ISMT_SPGT, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @readl(i64 %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @ISMT_SPGT_SPD_MASK, align 4
  %126 = and i32 %124, %125
  switch i32 %126, label %131 [
    i32 128, label %127
    i32 131, label %128
    i32 129, label %129
    i32 130, label %130
  ]

127:                                              ; preds = %117
  store i32 80, i32* @bus_speed, align 4
  br label %131

128:                                              ; preds = %117
  store i32 100, i32* @bus_speed, align 4
  br label %131

129:                                              ; preds = %117
  store i32 400, i32* @bus_speed, align 4
  br label %131

130:                                              ; preds = %117
  store i32 1000, i32* @bus_speed, align 4
  br label %131

131:                                              ; preds = %117, %130, %129, %128, %127
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = load i32, i32* @bus_speed, align 4
  %134 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  ret void
}

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
