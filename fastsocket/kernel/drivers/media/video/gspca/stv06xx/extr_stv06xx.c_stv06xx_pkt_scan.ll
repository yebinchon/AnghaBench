; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx.c_stv06xx_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx.c_stv06xx_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }
%struct.sd = type { i64, i32 }

@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Packet of length %d arrived\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Packet is smaller than 4 bytes\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Chunk id: %x, length: %d\00", align 1
@D_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"URB packet length is smaller than the specified chunk length\00", align 1
@DISCARD_PACKET = common dso_local global i32 0, align 4
@BRIDGE_ST6422 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Frame data packet detected\00", align 1
@INTER_PACKET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Starting new frame\00", align 1
@FIRST_PACKET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Chunk length is non-zero on a SOF\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"End of frame detected\00", align 1
@LAST_PACKET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Chunk length is non-zero on a EOF\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Chunk 0x005 detected\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Chunk 0x0100 detected\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Chunk 0x42ff detected\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Unknown chunk 0x%04x detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @stv06xx_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv06xx_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
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
  %13 = load i32, i32* @D_PACK, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i32, i8*, ...) @PDEBUG(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %165, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %173

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @D_PACK, align 4
  %24 = call i32 (i32, i8*, ...) @PDEBUG(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %173

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 8
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @D_PACK, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i32, i8*, ...) @PDEBUG(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32* %47, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %25
  %54 = load i32, i32* @D_ERR, align 4
  %55 = call i32 (i32, i8*, ...) @PDEBUG(i32 %54, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @DISCARD_PACKET, align 4
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %58 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %173

59:                                               ; preds = %25
  %60 = load %struct.sd*, %struct.sd** %7, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BRIDGE_ST6422, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 65280
  %68 = icmp eq i32 %67, 512
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %73

70:                                               ; preds = %65, %59
  %71 = load i32, i32* %8, align 4
  switch i32 %71, label %161 [
    i32 512, label %72
    i32 16896, label %72
    i32 32769, label %115
    i32 32773, label %115
    i32 49153, label %115
    i32 49157, label %115
    i32 32770, label %140
    i32 32774, label %140
    i32 49154, label %140
    i32 5, label %152
    i32 256, label %155
    i32 17151, label %158
  ]

72:                                               ; preds = %70, %70
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* @D_PACK, align 4
  %75 = call i32 (i32, i8*, ...) @PDEBUG(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.sd*, %struct.sd** %7, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %73
  %81 = load %struct.sd*, %struct.sd** %7, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.sd*, %struct.sd** %7, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  br label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = phi i32 [ %89, %86 ], [ %91, %90 ]
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.sd*, %struct.sd** %7, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %92, %73
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %111 = load i32, i32* @INTER_PACKET, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @gspca_frame_add(%struct.gspca_dev* %110, i32 %111, i32* %112, i32 %113)
  br label %165

115:                                              ; preds = %70, %70, %70, %70
  %116 = load i32, i32* @D_PACK, align 4
  %117 = call i32 (i32, i8*, ...) @PDEBUG(i32 %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %119 = load i32, i32* @FIRST_PACKET, align 4
  %120 = call i32 @gspca_frame_add(%struct.gspca_dev* %118, i32 %119, i32* null, i32 0)
  %121 = load %struct.sd*, %struct.sd** %7, align 8
  %122 = getelementptr inbounds %struct.sd, %struct.sd* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @BRIDGE_ST6422, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %115
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %128 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 4
  %131 = load %struct.sd*, %struct.sd** %7, align 8
  %132 = getelementptr inbounds %struct.sd, %struct.sd* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %126, %115
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* @D_ERR, align 4
  %138 = call i32 (i32, i8*, ...) @PDEBUG(i32 %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %133
  br label %165

140:                                              ; preds = %70, %70, %70
  %141 = load i32, i32* @D_PACK, align 4
  %142 = call i32 (i32, i8*, ...) @PDEBUG(i32 %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %143 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %144 = load i32, i32* @LAST_PACKET, align 4
  %145 = call i32 @gspca_frame_add(%struct.gspca_dev* %143, i32 %144, i32* null, i32 0)
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load i32, i32* @D_ERR, align 4
  %150 = call i32 (i32, i8*, ...) @PDEBUG(i32 %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %140
  br label %165

152:                                              ; preds = %70
  %153 = load i32, i32* @D_PACK, align 4
  %154 = call i32 (i32, i8*, ...) @PDEBUG(i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %165

155:                                              ; preds = %70
  %156 = load i32, i32* @D_PACK, align 4
  %157 = call i32 (i32, i8*, ...) @PDEBUG(i32 %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %165

158:                                              ; preds = %70
  %159 = load i32, i32* @D_PACK, align 4
  %160 = call i32 (i32, i8*, ...) @PDEBUG(i32 %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %165

161:                                              ; preds = %70
  %162 = load i32, i32* @D_PACK, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (i32, i8*, ...) @PDEBUG(i32 %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %161, %158, %155, %152, %151, %139, %109
  %166 = load i32, i32* %9, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %5, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %6, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %6, align 4
  br label %16

173:                                              ; preds = %22, %53, %16
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
