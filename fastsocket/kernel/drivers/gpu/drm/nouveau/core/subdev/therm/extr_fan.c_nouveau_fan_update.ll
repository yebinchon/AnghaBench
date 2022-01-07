; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_fan_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_fan_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fan = type { i32, i32 (%struct.nouveau_therm*)*, i32 (%struct.nouveau_therm*, i32)*, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.nouveau_therm* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { i32 }
%struct.nouveau_timer = type { i32 (%struct.nouveau_timer*, i32, %struct.TYPE_4__*)* }

@u8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"FAN target: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"FAN update: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fan*, i32, i32)* @nouveau_fan_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fan_update(%struct.nouveau_fan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_fan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_therm*, align 8
  %8 = alloca %struct.nouveau_therm_priv*, align 8
  %9 = alloca %struct.nouveau_timer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_fan* %0, %struct.nouveau_fan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %16, i32 0, i32 6
  %18 = load %struct.nouveau_therm*, %struct.nouveau_therm** %17, align 8
  store %struct.nouveau_therm* %18, %struct.nouveau_therm** %7, align 8
  %19 = load %struct.nouveau_therm*, %struct.nouveau_therm** %7, align 8
  %20 = bitcast %struct.nouveau_therm* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %21, %struct.nouveau_therm_priv** %8, align 8
  %22 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %23 = call %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_therm_priv* %22)
  store %struct.nouveau_timer* %23, %struct.nouveau_timer** %9, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %25 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %24, i32 0, i32 3
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %32 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %3
  %35 = load i32, i32* @u8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %38 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @max_t(i32 %35, i32 %36, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @u8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %45 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @min_t(i32 %42, i32 %43, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %50 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %34
  %55 = load %struct.nouveau_therm*, %struct.nouveau_therm** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @nv_debug(%struct.nouveau_therm* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %60 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %54, %34
  %62 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %63 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %62, i32 0, i32 1
  %64 = load i32 (%struct.nouveau_therm*)*, i32 (%struct.nouveau_therm*)** %63, align 8
  %65 = load %struct.nouveau_therm*, %struct.nouveau_therm** %7, align 8
  %66 = call i32 %64(%struct.nouveau_therm* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %159

71:                                               ; preds = %61
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %97, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 3
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @min(i32 %83, i32 %84)
  store i32 %85, i32* %12, align 4
  br label %96

86:                                               ; preds = %77
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %91, 3
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @max(i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %90, %86
  br label %96

96:                                               ; preds = %95, %81
  br label %99

97:                                               ; preds = %74, %71
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %97, %96
  %100 = load %struct.nouveau_therm*, %struct.nouveau_therm** %7, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @nv_debug(%struct.nouveau_therm* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %104 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %103, i32 0, i32 2
  %105 = load i32 (%struct.nouveau_therm*, i32)*, i32 (%struct.nouveau_therm*, i32)** %104, align 8
  %106 = load %struct.nouveau_therm*, %struct.nouveau_therm** %7, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 %105(%struct.nouveau_therm* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %159

112:                                              ; preds = %99
  %113 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %114 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = call i64 @list_empty(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %158

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %158

122:                                              ; preds = %118
  %123 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %124 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %13, align 4
  %127 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %128 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %15, align 4
  br label %147

136:                                              ; preds = %122
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @min(i32 %141, i32 %142)
  store i32 %143, i32* %15, align 4
  br label %146

144:                                              ; preds = %136
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %144, %140
  br label %147

147:                                              ; preds = %146, %134
  %148 = load %struct.nouveau_timer*, %struct.nouveau_timer** %9, align 8
  %149 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %148, i32 0, i32 0
  %150 = load i32 (%struct.nouveau_timer*, i32, %struct.TYPE_4__*)*, i32 (%struct.nouveau_timer*, i32, %struct.TYPE_4__*)** %149, align 8
  %151 = load %struct.nouveau_timer*, %struct.nouveau_timer** %9, align 8
  %152 = load i32, i32* %15, align 4
  %153 = mul nsw i32 %152, 1000
  %154 = mul nsw i32 %153, 1000
  %155 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %156 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %155, i32 0, i32 4
  %157 = call i32 %150(%struct.nouveau_timer* %151, i32 %154, %struct.TYPE_4__* %156)
  br label %158

158:                                              ; preds = %147, %118, %112
  br label %159

159:                                              ; preds = %158, %111, %70
  %160 = load %struct.nouveau_fan*, %struct.nouveau_fan** %4, align 8
  %161 = getelementptr inbounds %struct.nouveau_fan, %struct.nouveau_fan* %160, i32 0, i32 3
  %162 = load i64, i64* %10, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  %164 = load i32, i32* %11, align 4
  ret i32 %164
}

declare dso_local %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_therm_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @nv_debug(%struct.nouveau_therm*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
