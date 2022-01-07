; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, i32, i32 }
%struct.sd = type { i32, i32 }

@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"bad header\00", align 1
@UVC_STREAM_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"payload error\00", align 1
@UVC_STREAM_PTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"PTS not present\00", align 1
@UVC_STREAM_FID = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i64 0, align 8
@LAST_PACKET = common dso_local global i64 0, align 8
@FIRST_PACKET = common dso_local global i64 0, align 8
@UVC_STREAM_EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"wrong sized frame\00", align 1
@DISCARD_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %7, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %167, %3
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @min(i32 %15, i32 2048)
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 12
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 12
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %14
  %25 = load i32, i32* @D_PACK, align 4
  %26 = call i32 @PDEBUG(i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %155

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @UVC_STREAM_ERR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @D_PACK, align 4
  %36 = call i32 @PDEBUG(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %155

37:                                               ; preds = %27
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @UVC_STREAM_PTS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @D_PACK, align 4
  %46 = call i32 @PDEBUG(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %155

47:                                               ; preds = %37
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 24
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = or i32 %51, %55
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %56, %60
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @UVC_STREAM_FID, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.sd*, %struct.sd** %7, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %47
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.sd*, %struct.sd** %7, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %79, %47
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %87 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @INTER_PACKET, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %93 = load i64, i64* @LAST_PACKET, align 8
  %94 = call i32 @gspca_frame_add(%struct.gspca_dev* %92, i64 %93, i32* null, i32 0)
  br label %95

95:                                               ; preds = %91, %85
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.sd*, %struct.sd** %7, align 8
  %98 = getelementptr inbounds %struct.sd, %struct.sd* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.sd*, %struct.sd** %7, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %103 = load i64, i64* @FIRST_PACKET, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 12
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %106, 12
  %108 = call i32 @gspca_frame_add(%struct.gspca_dev* %102, i64 %103, i32* %105, i32 %107)
  br label %154

109:                                              ; preds = %79
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @UVC_STREAM_EOF, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %109
  %117 = load %struct.sd*, %struct.sd** %7, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 0
  store i32 0, i32* %118, align 4
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %120 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %121, %122
  %124 = sub nsw i32 %123, 12
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %126 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %129 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %127, %130
  %132 = mul nsw i32 %131, 2
  %133 = icmp ne i32 %124, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %116
  %135 = load i32, i32* @D_PACK, align 4
  %136 = call i32 @PDEBUG(i32 %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %155

137:                                              ; preds = %116
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %139 = load i64, i64* @LAST_PACKET, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 12
  %142 = load i32, i32* %6, align 4
  %143 = sub nsw i32 %142, 12
  %144 = call i32 @gspca_frame_add(%struct.gspca_dev* %138, i64 %139, i32* %141, i32 %143)
  br label %153

145:                                              ; preds = %109
  %146 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %147 = load i64, i64* @INTER_PACKET, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 12
  %150 = load i32, i32* %6, align 4
  %151 = sub nsw i32 %150, 12
  %152 = call i32 @gspca_frame_add(%struct.gspca_dev* %146, i64 %147, i32* %149, i32 %151)
  br label %153

153:                                              ; preds = %145, %137
  br label %154

154:                                              ; preds = %153, %95
  br label %159

155:                                              ; preds = %134, %44, %34, %24
  %156 = load i64, i64* @DISCARD_PACKET, align 8
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %158 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %154
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %10, align 4
  %162 = sub nsw i32 %161, %160
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %5, align 8
  br label %167

167:                                              ; preds = %159
  %168 = load i32, i32* %10, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %14, label %170

170:                                              ; preds = %167
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
