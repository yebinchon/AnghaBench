; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_calc_geo_old.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_calc_geo_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, i64, i64 }
%struct.bttv_geometry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bttv_tvnorm = type { i32, i32, i32, i32, i32, i32, i32 }

@BT848_VSCALE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, %struct.bttv_geometry*, i32, i32, i32, %struct.bttv_tvnorm*)* @bttv_calc_geo_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_calc_geo_old(%struct.bttv* %0, %struct.bttv_geometry* %1, i32 %2, i32 %3, i32 %4, %struct.bttv_tvnorm* %5) #0 {
  %7 = alloca %struct.bttv*, align 8
  %8 = alloca %struct.bttv_geometry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bttv_tvnorm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %7, align 8
  store %struct.bttv_geometry* %1, %struct.bttv_geometry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.bttv_tvnorm* %5, %struct.bttv_tvnorm** %12, align 8
  %19 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %12, align 8
  %20 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %12, align 8
  %23 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %17, align 4
  %25 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %12, align 8
  %26 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %18, align 4
  %28 = load %struct.bttv*, %struct.bttv** %7, align 8
  %29 = getelementptr inbounds %struct.bttv, %struct.bttv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bttv*, %struct.bttv** %7, align 8
  %32 = getelementptr inbounds %struct.bttv, %struct.bttv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store i32 720, i32* %16, align 4
  store i32 858, i32* %17, align 4
  store i32 858, i32* %18, align 4
  br label %36

36:                                               ; preds = %35, %6
  %37 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %12, align 8
  %38 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %18, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %16, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4096
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %47, %49
  %51 = sub i64 %50, 4096
  %52 = trunc i64 %51 to i32
  %53 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %54 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %12, align 8
  %56 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %59 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %61 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %16, align 4
  %66 = sdiv i32 %64, %65
  %67 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %68 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %70 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 1022
  store i32 %72, i32* %70, align 4
  %73 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %12, align 8
  %74 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 1
  %80 = ashr i32 %75, %79
  %81 = mul nsw i32 %80, 512
  %82 = load i32, i32* %10, align 4
  %83 = sdiv i32 %81, %82
  %84 = sub nsw i32 %83, 512
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 65536, %86
  %88 = and i64 %87, 8191
  %89 = trunc i64 %88 to i32
  %90 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %91 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 3
  %95 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %96 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 6
  %99 = and i32 %98, 12
  %100 = or i32 %94, %99
  %101 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %12, align 8
  %102 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 4
  %105 = and i32 %104, 48
  %106 = or i32 %100, %105
  %107 = load i32, i32* %15, align 4
  %108 = ashr i32 %107, 2
  %109 = and i32 %108, 192
  %110 = or i32 %106, %109
  %111 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %112 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %36
  %116 = load i32, i32* @BT848_VSCALE_INT, align 4
  %117 = shl i32 %116, 8
  br label %119

118:                                              ; preds = %36
  br label %119

119:                                              ; preds = %118, %115
  %120 = phi i32 [ %117, %115 ], [ 0, %118 ]
  %121 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %122 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %127 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %130 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %12, align 8
  %132 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %135 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 4
  %136 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %12, align 8
  %137 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %140 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %139, i32 0, i32 9
  store i32 %138, i32* %140, align 4
  %141 = load %struct.bttv*, %struct.bttv** %7, align 8
  %142 = getelementptr inbounds %struct.bttv, %struct.bttv* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %119
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 193
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %154

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %150, 385
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  br label %154

154:                                              ; preds = %149, %148
  %155 = phi i32 [ 2, %148 ], [ %153, %149 ]
  %156 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %157 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %158, 769
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 1, i32 0
  %162 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %163 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %162, i32 0, i32 8
  store i32 %161, i32* %163, align 4
  br label %169

164:                                              ; preds = %119
  %165 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %166 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %165, i32 0, i32 7
  store i32 0, i32* %166, align 4
  %167 = load %struct.bttv_geometry*, %struct.bttv_geometry** %8, align 8
  %168 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %167, i32 0, i32 8
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %164, %154
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
