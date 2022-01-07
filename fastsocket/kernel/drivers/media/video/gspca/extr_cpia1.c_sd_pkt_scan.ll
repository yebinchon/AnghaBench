; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32 }
%struct.sd = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MAGIC_0 = common dso_local global i32 0, align 4
@MAGIC_1 = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 64
  br i1 %12, label %13, label %169

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAGIC_0, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %169

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAGIC_1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %169

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 16
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sd*, %struct.sd** %7, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %28, %33
  br i1 %34, label %35, label %169

35:                                               ; preds = %25
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 17
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sd*, %struct.sd** %7, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %38, %43
  br i1 %44, label %45, label %169

45:                                               ; preds = %35
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 18
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sd*, %struct.sd** %7, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %48, %53
  br i1 %54, label %55, label %169

55:                                               ; preds = %45
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 24
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sd*, %struct.sd** %7, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %58, %63
  br i1 %64, label %65, label %169

65:                                               ; preds = %55
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 25
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sd*, %struct.sd** %7, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %68, %73
  br i1 %74, label %75, label %169

75:                                               ; preds = %65
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 26
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sd*, %struct.sd** %7, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %78, %83
  br i1 %84, label %85, label %169

85:                                               ; preds = %75
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 27
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sd*, %struct.sd** %7, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %88, %93
  br i1 %94, label %95, label %169

95:                                               ; preds = %85
  %96 = load %struct.sd*, %struct.sd** %7, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 1
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 39
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 2
  %102 = call i32 @atomic_set(i32* %97, i32 %101)
  %103 = load %struct.sd*, %struct.sd** %7, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 0
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 41
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @atomic_set(i32* %104, i32 %107)
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %110 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %8, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %163

114:                                              ; preds = %95
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %116 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 4
  br i1 %118, label %119, label %163

119:                                              ; preds = %114
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %122 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 255
  br i1 %128, label %129, label %163

129:                                              ; preds = %119
  %130 = load i32*, i32** %8, align 8
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %132 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 255
  br i1 %138, label %139, label %163

139:                                              ; preds = %129
  %140 = load i32*, i32** %8, align 8
  %141 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %142 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %140, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 255
  br i1 %148, label %149, label %163

149:                                              ; preds = %139
  %150 = load i32*, i32** %8, align 8
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %152 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 255
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %161 = load i32, i32* @LAST_PACKET, align 4
  %162 = call i32 @gspca_frame_add(%struct.gspca_dev* %160, i32 %161, i32* null, i32 0)
  br label %163

163:                                              ; preds = %159, %149, %139, %129, %119, %114, %95
  %164 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %165 = load i32, i32* @FIRST_PACKET, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @gspca_frame_add(%struct.gspca_dev* %164, i32 %165, i32* %166, i32 %167)
  br label %175

169:                                              ; preds = %85, %75, %65, %55, %45, %35, %25, %19, %13, %3
  %170 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %171 = load i32, i32* @INTER_PACKET, align 4
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @gspca_frame_add(%struct.gspca_dev* %170, i32 %171, i32* %172, i32 %173)
  br label %175

175:                                              ; preds = %169, %163
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
