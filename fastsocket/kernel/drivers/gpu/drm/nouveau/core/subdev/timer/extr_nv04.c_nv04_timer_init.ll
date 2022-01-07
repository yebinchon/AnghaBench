; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_nv04.c_nv04_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_nv04.c_nv04_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_device = type { i32, i32 }
%struct.nv04_timer_priv = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unknown input clock freq\0A\00", align 1
@NV04_PTIMER_NUMERATOR = common dso_local global i32 0, align 4
@NV04_PTIMER_DENOMINATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"input frequency : %dHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"input multiplier: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"numerator       : 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"denominator     : 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"timer frequency : %dHz\0A\00", align 1
@NV04_PTIMER_INTR_0 = common dso_local global i32 0, align 4
@NV04_PTIMER_INTR_EN_0 = common dso_local global i32 0, align 4
@PLL_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv04_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_timer_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_device*, align 8
  %5 = alloca %struct.nv04_timer_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %12 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %4, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %14 = bitcast %struct.nouveau_object* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv04_timer_priv*
  store %struct.nv04_timer_priv* %15, %struct.nv04_timer_priv** %5, align 8
  store i32 1, i32* %6, align 4
  %16 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %17 = getelementptr inbounds %struct.nv04_timer_priv, %struct.nv04_timer_priv* %16, i32 0, i32 0
  %18 = call i32 @nouveau_timer_init(i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %2, align 4
  br label %157

23:                                               ; preds = %1
  store i32 31250, i32* %9, align 4
  %24 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %25 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 64
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %52

29:                                               ; preds = %23
  %30 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %39, %29
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 2
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %34

47:                                               ; preds = %34
  %48 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @nv_wr32(%struct.nv04_timer_priv* %48, i32 37408, i32 %50)
  br label %52

52:                                               ; preds = %47, %28
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %52
  %56 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %57 = call i32 @nv_warn(%struct.nv04_timer_priv* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %59 = load i32, i32* @NV04_PTIMER_NUMERATOR, align 4
  %60 = call i32 @nv_rd32(%struct.nv04_timer_priv* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %64 = load i32, i32* @NV04_PTIMER_DENOMINATOR, align 4
  %65 = call i32 @nv_rd32(%struct.nv04_timer_priv* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %69 = load i32, i32* @NV04_PTIMER_NUMERATOR, align 4
  %70 = call i32 @nv_wr32(%struct.nv04_timer_priv* %68, i32 %69, i32 1)
  %71 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %72 = load i32, i32* @NV04_PTIMER_DENOMINATOR, align 4
  %73 = call i32 @nv_wr32(%struct.nv04_timer_priv* %71, i32 %72, i32 1)
  br label %74

74:                                               ; preds = %67, %62
  store i32 0, i32* %2, align 4
  br label %157

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %86, %75
  %77 = load i32, i32* %8, align 4
  %78 = srem i32 %77, 5
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = srem i32 %81, 5
  %83 = icmp eq i32 %82, 0
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %86, label %91

86:                                               ; preds = %84
  %87 = load i32, i32* %8, align 4
  %88 = sdiv i32 %87, 5
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sdiv i32 %89, 5
  store i32 %90, i32* %9, align 4
  br label %76

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %102, %91
  %93 = load i32, i32* %8, align 4
  %94 = srem i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = srem i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i1 [ false, %92 ], [ %99, %96 ]
  br i1 %101, label %102, label %107

102:                                              ; preds = %100
  %103 = load i32, i32* %8, align 4
  %104 = sdiv i32 %103, 2
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sdiv i32 %105, 2
  store i32 %106, i32* %9, align 4
  br label %92

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %116, %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp sgt i32 %109, 65535
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %112, 65535
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi i1 [ true, %108 ], [ %113, %111 ]
  br i1 %115, label %116, label %121

116:                                              ; preds = %114
  %117 = load i32, i32* %8, align 4
  %118 = ashr i32 %117, 1
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = ashr i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %108

121:                                              ; preds = %114
  %122 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @nv_debug(%struct.nv04_timer_priv* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @nv_debug(%struct.nv04_timer_priv* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @nv_debug(%struct.nv04_timer_priv* %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @nv_debug(%struct.nv04_timer_priv* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %6, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %9, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %8, align 4
  %141 = sdiv i32 %139, %140
  %142 = call i32 @nv_debug(%struct.nv04_timer_priv* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %144 = load i32, i32* @NV04_PTIMER_NUMERATOR, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @nv_wr32(%struct.nv04_timer_priv* %143, i32 %144, i32 %145)
  %147 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %148 = load i32, i32* @NV04_PTIMER_DENOMINATOR, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @nv_wr32(%struct.nv04_timer_priv* %147, i32 %148, i32 %149)
  %151 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %152 = load i32, i32* @NV04_PTIMER_INTR_0, align 4
  %153 = call i32 @nv_wr32(%struct.nv04_timer_priv* %151, i32 %152, i32 -1)
  %154 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %5, align 8
  %155 = load i32, i32* @NV04_PTIMER_INTR_EN_0, align 4
  %156 = call i32 @nv_wr32(%struct.nv04_timer_priv* %154, i32 %155, i32 0)
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %121, %74, %21
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_timer_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv04_timer_priv*, i32, i32) #1

declare dso_local i32 @nv_warn(%struct.nv04_timer_priv*, i8*) #1

declare dso_local i32 @nv_rd32(%struct.nv04_timer_priv*, i32) #1

declare dso_local i32 @nv_debug(%struct.nv04_timer_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
