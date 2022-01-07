; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c___raid10_find_phys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c___raid10_find_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geom = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.r10bio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.geom*, %struct.r10bio*)* @__raid10_find_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__raid10_find_phys(%struct.geom* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.geom*, align 8
  %4 = alloca %struct.r10bio*, align 8
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.geom* %0, %struct.geom** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.geom*, %struct.geom** %3, align 8
  %18 = getelementptr inbounds %struct.geom, %struct.geom* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.geom*, %struct.geom** %3, align 8
  %21 = getelementptr inbounds %struct.geom, %struct.geom* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %19, %22
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load %struct.geom*, %struct.geom** %3, align 8
  %26 = getelementptr inbounds %struct.geom, %struct.geom* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %12, align 4
  %29 = mul nsw i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load %struct.geom*, %struct.geom** %3, align 8
  %31 = getelementptr inbounds %struct.geom, %struct.geom* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.geom*, %struct.geom** %3, align 8
  %34 = getelementptr inbounds %struct.geom, %struct.geom* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.geom*, %struct.geom** %3, align 8
  %37 = getelementptr inbounds %struct.geom, %struct.geom* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %35, %38
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %13, align 4
  %42 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %43 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.geom*, %struct.geom** %3, align 8
  %46 = getelementptr inbounds %struct.geom, %struct.geom* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = ashr i32 %44, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %50 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.geom*, %struct.geom** %3, align 8
  %53 = getelementptr inbounds %struct.geom, %struct.geom* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %51, %54
  store i32 %55, i32* %7, align 4
  %56 = load %struct.geom*, %struct.geom** %3, align 8
  %57 = getelementptr inbounds %struct.geom, %struct.geom* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.geom*, %struct.geom** %3, align 8
  %64 = getelementptr inbounds %struct.geom, %struct.geom* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sector_div(i32 %62, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.geom*, %struct.geom** %3, align 8
  %68 = getelementptr inbounds %struct.geom, %struct.geom* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %2
  %72 = load %struct.geom*, %struct.geom** %3, align 8
  %73 = getelementptr inbounds %struct.geom, %struct.geom* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %71, %2
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.geom*, %struct.geom** %3, align 8
  %80 = getelementptr inbounds %struct.geom, %struct.geom* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %78, %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %209, %77
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.geom*, %struct.geom** %3, align 8
  %88 = getelementptr inbounds %struct.geom, %struct.geom* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %212

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %96 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %94, i32* %101, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %104 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 %102, i32* %109, align 4
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  store i32 1, i32* %6, align 4
  br label %112

112:                                              ; preds = %190, %91
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.geom*, %struct.geom** %3, align 8
  %115 = getelementptr inbounds %struct.geom, %struct.geom* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %193

118:                                              ; preds = %112
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.geom*, %struct.geom** %3, align 8
  %121 = getelementptr inbounds %struct.geom, %struct.geom* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %119, %122
  store i32 %123, i32* %15, align 4
  %124 = load %struct.geom*, %struct.geom** %3, align 8
  %125 = getelementptr inbounds %struct.geom, %struct.geom* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %14, align 4
  %129 = load %struct.geom*, %struct.geom** %3, align 8
  %130 = getelementptr inbounds %struct.geom, %struct.geom* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.geom*, %struct.geom** %3, align 8
  %133 = getelementptr inbounds %struct.geom, %struct.geom* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = srem i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %118
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %14, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %14, align 4
  %147 = srem i32 %146, %145
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %14, align 4
  br label %164

151:                                              ; preds = %137, %118
  %152 = load %struct.geom*, %struct.geom** %3, align 8
  %153 = getelementptr inbounds %struct.geom, %struct.geom* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %14, align 4
  %156 = srem i32 %155, %154
  store i32 %156, i32* %14, align 4
  %157 = load %struct.geom*, %struct.geom** %3, align 8
  %158 = getelementptr inbounds %struct.geom, %struct.geom* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %15, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %151, %141
  %165 = load %struct.geom*, %struct.geom** %3, align 8
  %166 = getelementptr inbounds %struct.geom, %struct.geom* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %174 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %173, i32 0, i32 1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  store i32 %172, i32* %179, align 4
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %182 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %181, i32 0, i32 1
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  store i32 %180, i32* %187, align 4
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %164
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  br label %112

193:                                              ; preds = %112
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load %struct.geom*, %struct.geom** %3, align 8
  %198 = getelementptr inbounds %struct.geom, %struct.geom* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sge i32 %196, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %193
  store i32 0, i32* %10, align 4
  %202 = load %struct.geom*, %struct.geom** %3, align 8
  %203 = getelementptr inbounds %struct.geom, %struct.geom* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %201, %193
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %5, align 4
  br label %85

212:                                              ; preds = %85
  ret void
}

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
