; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534_9.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534_9.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
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

14:                                               ; preds = %145, %3
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @min(i32 %15, i32 2040)
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
  br label %133

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
  br label %133

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
  br label %133

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
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.sd*, %struct.sd** %7, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %47
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.sd*, %struct.sd** %7, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %76, %47
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %84 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @INTER_PACKET, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %90 = load i64, i64* @LAST_PACKET, align 8
  %91 = call i32 @gspca_frame_add(%struct.gspca_dev* %89, i64 %90, i32* null, i32 0)
  br label %92

92:                                               ; preds = %88, %82
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.sd*, %struct.sd** %7, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.sd*, %struct.sd** %7, align 8
  %98 = getelementptr inbounds %struct.sd, %struct.sd* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %100 = load i64, i64* @FIRST_PACKET, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 12
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, 12
  %105 = call i32 @gspca_frame_add(%struct.gspca_dev* %99, i64 %100, i32* %102, i32 %104)
  br label %132

106:                                              ; preds = %76
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @UVC_STREAM_EOF, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %106
  %114 = load %struct.sd*, %struct.sd** %7, align 8
  %115 = getelementptr inbounds %struct.sd, %struct.sd* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %117 = load i64, i64* @LAST_PACKET, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 12
  %120 = load i32, i32* %6, align 4
  %121 = sub nsw i32 %120, 12
  %122 = call i32 @gspca_frame_add(%struct.gspca_dev* %116, i64 %117, i32* %119, i32 %121)
  br label %131

123:                                              ; preds = %106
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %125 = load i64, i64* @INTER_PACKET, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 12
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %128, 12
  %130 = call i32 @gspca_frame_add(%struct.gspca_dev* %124, i64 %125, i32* %127, i32 %129)
  br label %131

131:                                              ; preds = %123, %113
  br label %132

132:                                              ; preds = %131, %92
  br label %137

133:                                              ; preds = %44, %34, %24
  %134 = load i64, i64* @DISCARD_PACKET, align 8
  %135 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %136 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %132
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %10, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %5, align 8
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %10, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %14, label %148

148:                                              ; preds = %145
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
