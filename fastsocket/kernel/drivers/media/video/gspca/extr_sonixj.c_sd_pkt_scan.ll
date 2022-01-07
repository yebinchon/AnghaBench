; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32*, i32 }
%struct.sd = type { i32*, i64, i32 }

@FIRST_PACKET = common dso_local global i32 0, align 4
@JPEG_HDR_SZ = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %7, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %47 [
    i32 129, label %15
    i32 128, label %39
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 64
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 217
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %37 = call i32 @gspca_frame_add(%struct.gspca_dev* %36, i32 128, i32* null, i32 0)
  br label %38

38:                                               ; preds = %35, %27, %20, %15
  br label %181

39:                                               ; preds = %3
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %41 = load i32, i32* @FIRST_PACKET, align 4
  %42 = load %struct.sd*, %struct.sd** %7, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @JPEG_HDR_SZ, align 4
  %46 = call i32 @gspca_frame_add(%struct.gspca_dev* %40, i32 %41, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %3, %39
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = load i32, i32* @INTER_PACKET, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @gspca_frame_add(%struct.gspca_dev* %48, i32 %49, i32* %50, i32 %51)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %54 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %181

59:                                               ; preds = %47
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 64
  store i32 %63, i32* %8, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 255
  br i1 %69, label %78, label %70

70:                                               ; preds = %59
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 217
  br i1 %77, label %78, label %79

78:                                               ; preds = %70, %59
  br label %181

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 2
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %83 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %85 = call i32 @gspca_frame_add(%struct.gspca_dev* %84, i32 128, i32* null, i32 0)
  %86 = load %struct.sd*, %struct.sd** %7, align 8
  %87 = getelementptr inbounds %struct.sd, %struct.sd* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %181

91:                                               ; preds = %79
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 29
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 30
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %98, %104
  %106 = ashr i32 %105, 6
  store i32 %106, i32* %9, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 33
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 34
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %113, %119
  %121 = ashr i32 %120, 6
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %9, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 25
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 8
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 26
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %130, %136
  %138 = ashr i32 %137, 6
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %9, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 37
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 8
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 38
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %147, %153
  %155 = ashr i32 %154, 6
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %9, align 4
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 31
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 8
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 32
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %164, %170
  %172 = ashr i32 %171, 4
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = ashr i32 %175, 4
  store i32 %176, i32* %9, align 4
  %177 = load %struct.sd*, %struct.sd** %7, align 8
  %178 = getelementptr inbounds %struct.sd, %struct.sd* %177, i32 0, i32 2
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @atomic_set(i32* %178, i32 %179)
  br label %181

181:                                              ; preds = %91, %90, %78, %58, %38
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
