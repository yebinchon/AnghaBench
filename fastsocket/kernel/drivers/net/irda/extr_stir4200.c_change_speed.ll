; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.stir_cb = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@stir_modes = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"invalid speed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"speed change from %d to %d\0A\00", align 1
@REG_CTRL1 = common dso_local global i32 0, align 4
@CTRL1_SRESET = common dso_local global i32 0, align 4
@REG_DPLL = common dso_local global i32 0, align 4
@REG_PDCLK = common dso_local global i32 0, align 4
@MODE_NRESET = common dso_local global i32 0, align 4
@MODE_FASTRX = common dso_local global i32 0, align 4
@MODE_FIR = common dso_local global i32 0, align 4
@MODE_FFRSTEN = common dso_local global i32 0, align 4
@MODE_SIR = common dso_local global i32 0, align 4
@MODE_2400 = common dso_local global i32 0, align 4
@REG_MODE = common dso_local global i32 0, align 4
@CTRL1_SDMODE = common dso_local global i32 0, align 4
@tx_power = common dso_local global i32 0, align 4
@REG_CTRL2 = common dso_local global i32 0, align 4
@rx_sensitivity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stir_cb*, i32)* @change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_speed(%struct.stir_cb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stir_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stir_cb* %0, %struct.stir_cb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stir_modes, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stir_modes, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %37

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %30 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %136

37:                                               ; preds = %23
  %38 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %39 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %44 = load i32, i32* @REG_CTRL1, align 4
  %45 = load i32, i32* @CTRL1_SRESET, align 4
  %46 = call i32 @write_reg(%struct.stir_cb* %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %131

50:                                               ; preds = %37
  %51 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %52 = load i32, i32* @REG_DPLL, align 4
  %53 = call i32 @write_reg(%struct.stir_cb* %51, i32 %52, i32 21)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %131

57:                                               ; preds = %50
  %58 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %59 = load i32, i32* @REG_PDCLK, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stir_modes, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @write_reg(%struct.stir_cb* %58, i32 %59, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %131

70:                                               ; preds = %57
  %71 = load i32, i32* @MODE_NRESET, align 4
  %72 = load i32, i32* @MODE_FASTRX, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @isfir(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @MODE_FIR, align 4
  %79 = load i32, i32* @MODE_FFRSTEN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %87

83:                                               ; preds = %70
  %84 = load i32, i32* @MODE_SIR, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 2400
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @MODE_2400, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %96 = load i32, i32* @REG_MODE, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @write_reg(%struct.stir_cb* %95, i32 %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %131

102:                                              ; preds = %94
  %103 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %104 = load i32, i32* @REG_CTRL1, align 4
  %105 = load i32, i32* @CTRL1_SDMODE, align 4
  %106 = load i32, i32* @tx_power, align 4
  %107 = and i32 %106, 3
  %108 = shl i32 %107, 1
  %109 = or i32 %105, %108
  %110 = call i32 @write_reg(%struct.stir_cb* %103, i32 %104, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %131

114:                                              ; preds = %102
  %115 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %116 = load i32, i32* @REG_CTRL1, align 4
  %117 = load i32, i32* @tx_power, align 4
  %118 = and i32 %117, 3
  %119 = shl i32 %118, 1
  %120 = call i32 @write_reg(%struct.stir_cb* %115, i32 %116, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %131

124:                                              ; preds = %114
  %125 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %126 = load i32, i32* @REG_CTRL2, align 4
  %127 = load i32, i32* @rx_sensitivity, align 4
  %128 = and i32 %127, 7
  %129 = shl i32 %128, 5
  %130 = call i32 @write_reg(%struct.stir_cb* %125, i32 %126, i32 %129)
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %124, %123, %113, %101, %69, %56, %49
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %134 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %131, %28
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @write_reg(%struct.stir_cb*, i32, i32) #1

declare dso_local i64 @isfir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
