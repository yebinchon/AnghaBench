; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_btcx-risc.c_btcx_screen_clips.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_btcx-risc.c_btcx_screen_clips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btcx_screen_clips(i32 %0, i32 %1, %struct.v4l2_rect* %2, %struct.v4l2_clip* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_rect*, align 8
  %9 = alloca %struct.v4l2_clip*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %8, align 8
  store %struct.v4l2_clip* %3, %struct.v4l2_clip** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %12 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %5
  %16 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %16, i64 %18
  %20 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %22, i64 %24
  %26 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %32, i64 %34
  %36 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %31, i32* %37, align 4
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %41, i64 %43
  %45 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %40, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %15, %5
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %105

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %65, i64 %67
  %69 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 4
  %71 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %71, i64 %73
  %75 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %78 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %80, i64 %82
  %84 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %79, %86
  %88 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %88, i64 %90
  %92 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 %87, i32* %93, align 4
  %94 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %95 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %97, i64 %99
  %101 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  store i32 %96, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %59, %49
  %106 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %107 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %105
  %111 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %111, i64 %113
  %115 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 4
  %117 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %117, i64 %119
  %121 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %124 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %127 = load i32, i32* %10, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %126, i64 %128
  %130 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i32 %125, i32* %131, align 4
  %132 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %133 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 0, %134
  %136 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %136, i64 %138
  %140 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  store i32 %135, i32* %141, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %110, %105
  %145 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %146 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %149 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %147, %150
  %152 = load i32, i32* %7, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %200

154:                                              ; preds = %144
  %155 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %155, i64 %157
  %159 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  store i32 0, i32* %160, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %163 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %161, %164
  %166 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %167 = load i32, i32* %10, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %166, i64 %168
  %170 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  store i32 %165, i32* %171, align 4
  %172 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %173 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %176 = load i32, i32* %10, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %175, i64 %177
  %179 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  store i32 %174, i32* %180, align 4
  %181 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %182 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %185 = load i32, i32* %10, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %184, i64 %186
  %188 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %183, %190
  %192 = load %struct.v4l2_clip*, %struct.v4l2_clip** %9, align 8
  %193 = load i32, i32* %10, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %192, i64 %194
  %196 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 3
  store i32 %191, i32* %197, align 4
  %198 = load i32, i32* %10, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %200

200:                                              ; preds = %154, %144
  %201 = load i32, i32* %10, align 4
  ret i32 %201
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
