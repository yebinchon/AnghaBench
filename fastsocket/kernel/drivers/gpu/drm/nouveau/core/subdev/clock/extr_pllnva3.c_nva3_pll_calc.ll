; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_pllnva3.c_nva3_pll_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_pllnva3.c_nva3_pll_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_clock = type { i32 }
%struct.nvbios_pll = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"unable to find matching pll values\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nva3_pll_calc(%struct.nouveau_clock* %0, %struct.nvbios_pll* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_clock*, align 8
  %10 = alloca %struct.nvbios_pll*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nouveau_clock* %0, %struct.nouveau_clock** %9, align 8
  store %struct.nvbios_pll* %1, %struct.nvbios_pll** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 -1, i32* %16, align 4
  %24 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %25 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sdiv i32 %27, %28
  %30 = load i32*, i32** %15, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %15, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %34 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %7
  %38 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %39 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %15, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %7
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %46 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %51 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %15, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %56 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %59 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %57, %61
  %63 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %64 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %62, %66
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %70 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @max(i32 %68, i32 %73)
  store i32 %74, i32* %19, align 4
  %75 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %76 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %79 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %77, %81
  %83 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %84 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sdiv i32 %82, %86
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %90 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @min(i32 %88, i32 %93)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %19, align 4
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %183, %54
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %186

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %101, %103
  %105 = load i32, i32* %18, align 4
  %106 = mul nsw i32 %104, %105
  store i32 %106, i32* %23, align 4
  %107 = load i32, i32* %23, align 4
  %108 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %109 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sdiv i32 %107, %110
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %23, align 4
  %113 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %114 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = srem i32 %112, %115
  store i32 %116, i32* %22, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %129, label %119

119:                                              ; preds = %100
  %120 = load i32, i32* %22, align 4
  %121 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %122 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %123, 2
  %125 = icmp sge i32 %120, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* %21, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %21, align 4
  br label %129

129:                                              ; preds = %126, %119, %100
  %130 = load i32, i32* %21, align 4
  %131 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %132 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %183

137:                                              ; preds = %129
  %138 = load i32, i32* %21, align 4
  %139 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %140 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = icmp sgt i32 %138, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %186

145:                                              ; preds = %137
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %148 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %21, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* %18, align 4
  %153 = sdiv i32 %151, %152
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %154, align 4
  %156 = sdiv i32 %153, %155
  %157 = sub nsw i32 %146, %156
  %158 = call i32 @abs(i32 %157) #3
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %145
  %163 = load i32, i32* %17, align 4
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %21, align 4
  %165 = load i32*, i32** %12, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %18, align 4
  %167 = load i32*, i32** %14, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %162, %145
  %169 = load i32*, i32** %13, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = load i32, i32* %22, align 4
  %173 = shl i32 %172, 13
  %174 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %175 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = sdiv i32 %173, %176
  %178 = sub nsw i32 %177, 4096
  %179 = and i32 %178, 65535
  %180 = load i32*, i32** %13, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %8, align 4
  br label %210

182:                                              ; preds = %168
  br label %183

183:                                              ; preds = %182, %136
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %18, align 4
  br label %96

186:                                              ; preds = %144, %96
  %187 = load i32, i32* %16, align 4
  %188 = icmp eq i32 %187, -1
  %189 = zext i1 %188 to i32
  %190 = call i64 @unlikely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %186
  %193 = load %struct.nouveau_clock*, %struct.nouveau_clock** %9, align 8
  %194 = call i32 @nv_error(%struct.nouveau_clock* %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %8, align 4
  br label %210

197:                                              ; preds = %186
  %198 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %199 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32*, i32** %12, align 8
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %200, %202
  %204 = load i32*, i32** %14, align 8
  %205 = load i32, i32* %204, align 4
  %206 = sdiv i32 %203, %205
  %207 = load i32*, i32** %15, align 8
  %208 = load i32, i32* %207, align 4
  %209 = sdiv i32 %206, %208
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %197, %192, %171
  %211 = load i32, i32* %8, align 4
  ret i32 %211
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_clock*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
