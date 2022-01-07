; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_base_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_base_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_priv = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nv50_disp_base = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"timeout acquiring display\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv50_disp_base_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_base_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_disp_priv*, align 8
  %5 = alloca %struct.nv50_disp_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %13, %struct.nv50_disp_priv** %4, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %15 = bitcast %struct.nouveau_object* %14 to i8*
  %16 = bitcast i8* %15 to %struct.nv50_disp_base*
  store %struct.nv50_disp_base* %16, %struct.nv50_disp_base** %5, align 8
  %17 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %5, align 8
  %18 = getelementptr inbounds %struct.nv50_disp_base, %struct.nv50_disp_base* %17, i32 0, i32 1
  %19 = call i32 @nouveau_parent_init(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %184

24:                                               ; preds = %1
  %25 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %26 = call i32 @nv_rd32(%struct.nv50_disp_priv* %25, i32 6373380)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @nv_wr32(%struct.nv50_disp_priv* %27, i32 6357380, i32 %28)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %82, %24
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %33 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %30
  %38 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 2048
  %41 = add nsw i32 6381824, %40
  %42 = call i32 @nv_rd32(%struct.nv50_disp_priv* %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 16
  %46 = add nsw i32 6357392, %45
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @nv_wr32(%struct.nv50_disp_priv* %43, i32 %46, i32 %47)
  %49 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 2048
  %52 = add nsw i32 6381828, %51
  %53 = call i32 @nv_rd32(%struct.nv50_disp_priv* %49, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 16
  %57 = add nsw i32 6357396, %56
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @nv_wr32(%struct.nv50_disp_priv* %54, i32 %57, i32 %58)
  %60 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %61, 2048
  %63 = add nsw i32 6381832, %62
  %64 = call i32 @nv_rd32(%struct.nv50_disp_priv* %60, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %66, 16
  %68 = add nsw i32 6357400, %67
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @nv_wr32(%struct.nv50_disp_priv* %65, i32 %68, i32 %69)
  %71 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %72, 2048
  %74 = add nsw i32 6381836, %73
  %75 = call i32 @nv_rd32(%struct.nv50_disp_priv* %71, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %77, 16
  %79 = add nsw i32 6357404, %78
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @nv_wr32(%struct.nv50_disp_priv* %76, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %37
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %30

85:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %105, %85
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %89 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %95, 2048
  %97 = add nsw i32 6397952, %96
  %98 = call i32 @nv_rd32(%struct.nv50_disp_priv* %94, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %100, 4
  %102 = add nsw i32 6357456, %101
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @nv_wr32(%struct.nv50_disp_priv* %99, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %93
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %86

108:                                              ; preds = %86
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %128, %108
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %112 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %110, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = mul nsw i32 %118, 2048
  %120 = add nsw i32 6406144, %119
  %121 = call i32 @nv_rd32(%struct.nv50_disp_priv* %117, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 %123, 4
  %125 = add nsw i32 6357472, %124
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @nv_wr32(%struct.nv50_disp_priv* %122, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %109

131:                                              ; preds = %109
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %147, %131
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 3
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %137 = load i32, i32* %7, align 4
  %138 = mul nsw i32 %137, 2048
  %139 = add nsw i32 6414336, %138
  %140 = call i32 @nv_rd32(%struct.nv50_disp_priv* %136, i32 %139)
  store i32 %140, i32* %8, align 4
  %141 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %142 = load i32, i32* %7, align 4
  %143 = mul nsw i32 %142, 4
  %144 = add nsw i32 6357488, %143
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @nv_wr32(%struct.nv50_disp_priv* %141, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %135
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %132

150:                                              ; preds = %132
  %151 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %152 = call i32 @nv_rd32(%struct.nv50_disp_priv* %151, i32 6357028)
  %153 = and i32 %152, 256
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %150
  %156 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %157 = call i32 @nv_wr32(%struct.nv50_disp_priv* %156, i32 6357028, i32 256)
  %158 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %159 = call i32 @nv_mask(%struct.nv50_disp_priv* %158, i32 6395112, i32 1, i32 0)
  %160 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %161 = call i32 @nv_wait(%struct.nv50_disp_priv* %160, i32 6395112, i32 2, i32 0)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %155
  %164 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %165 = call i32 @nv_error(%struct.nv50_disp_priv* %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %166 = load i32, i32* @EBUSY, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %184

168:                                              ; preds = %155
  br label %169

169:                                              ; preds = %168, %150
  %170 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %171 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %5, align 8
  %172 = getelementptr inbounds %struct.nv50_disp_base, %struct.nv50_disp_base* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call %struct.TYPE_8__* @nv_gpuobj(i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 8
  %178 = or i32 %177, 9
  %179 = call i32 @nv_wr32(%struct.nv50_disp_priv* %170, i32 6357008, i32 %178)
  %180 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %181 = call i32 @nv_wr32(%struct.nv50_disp_priv* %180, i32 6357036, i32 880)
  %182 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %183 = call i32 @nv_wr32(%struct.nv50_disp_priv* %182, i32 6357032, i32 0)
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %169, %163, %22
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @nouveau_parent_init(i32*) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_priv*, i8*) #1

declare dso_local %struct.TYPE_8__* @nv_gpuobj(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
