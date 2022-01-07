; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv50_disp_priv = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"chid %d mthd 0x%04x data 0x%08x 0x%08x 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unknown intr24 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvd0_disp_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nv50_disp_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %15 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %16 = bitcast %struct.nouveau_subdev* %15 to i8*
  %17 = bitcast i8* %16 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %17, %struct.nv50_disp_priv** %3, align 8
  %18 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %19 = call i32 @nv_rd32(%struct.nv50_disp_priv* %18, i32 6357128)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %25 = call i32 @nv_rd32(%struct.nv50_disp_priv* %24, i32 6357132)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @nv_wr32(%struct.nv50_disp_priv* %26, i32 6357132, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, -2
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %23, %1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %79

35:                                               ; preds = %31
  %36 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %37 = call i32 @nv_rd32(%struct.nv50_disp_priv* %36, i32 6357148)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ffs(i32 %38)
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %35
  %44 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %45, 12
  %47 = add nsw i32 6357488, %46
  %48 = call i32 @nv_rd32(%struct.nv50_disp_priv* %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 12
  %52 = add nsw i32 6357492, %51
  %53 = call i32 @nv_rd32(%struct.nv50_disp_priv* %49, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %55, 12
  %57 = add nsw i32 6357496, %56
  %58 = call i32 @nv_rd32(%struct.nv50_disp_priv* %54, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 4092
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @nv_error(%struct.nv50_disp_priv* %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 1, %68
  %70 = call i32 @nv_wr32(%struct.nv50_disp_priv* %67, i32 6357148, i32 %69)
  %71 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %72, 12
  %74 = add nsw i32 6357488, %73
  %75 = call i32 @nv_wr32(%struct.nv50_disp_priv* %71, i32 %74, i32 -1879048192)
  br label %76

76:                                               ; preds = %43, %35
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, -3
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %31
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 1048576
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %79
  %84 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %85 = call i32 @nv_rd32(%struct.nv50_disp_priv* %84, i32 6357164)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = and i32 %86, 7
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load i32, i32* %12, align 4
  %91 = and i32 %90, 7
  %92 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %93 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %95 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %94, i32 0, i32 3
  %96 = call i32 @schedule_work(i32* %95)
  %97 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %98 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %99 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @nv_wr32(%struct.nv50_disp_priv* %97, i32 6357164, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %102, -8
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %89, %83
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @nv_info(%struct.nv50_disp_priv* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @nv_wr32(%struct.nv50_disp_priv* %111, i32 6357164, i32 %112)
  br label %114

114:                                              ; preds = %107, %104
  %115 = load i32, i32* %4, align 4
  %116 = and i32 %115, -1048577
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %79
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %160, %117
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %121 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %119, %123
  br i1 %124, label %125, label %163

125:                                              ; preds = %118
  %126 = load i32, i32* %5, align 4
  %127 = shl i32 16777216, %126
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %4, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %159

132:                                              ; preds = %125
  %133 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %134 = load i32, i32* %5, align 4
  %135 = mul nsw i32 %134, 2048
  %136 = add nsw i32 6357180, %135
  %137 = call i32 @nv_rd32(%struct.nv50_disp_priv* %133, i32 %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %132
  %142 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %143 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @nouveau_event_trigger(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %141, %132
  %149 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %150 = load i32, i32* %5, align 4
  %151 = mul nsw i32 %150, 2048
  %152 = add nsw i32 6357180, %151
  %153 = call i32 @nv_mask(%struct.nv50_disp_priv* %149, i32 %152, i32 0, i32 0)
  %154 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %3, align 8
  %155 = load i32, i32* %5, align 4
  %156 = mul nsw i32 %155, 2048
  %157 = add nsw i32 6357184, %156
  %158 = call i32 @nv_rd32(%struct.nv50_disp_priv* %154, i32 %157)
  br label %159

159:                                              ; preds = %148, %125
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %118

163:                                              ; preds = %118
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_priv*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @nv_info(%struct.nv50_disp_priv*, i8*, i32) #1

declare dso_local i32 @nouveau_event_trigger(i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
