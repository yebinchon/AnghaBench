; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mars.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mars.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32* }

@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"sof offset: %d len: %d\00", align 1
@LAST_PACKET = common dso_local global i32 0, align 4
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
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %129

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %120, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 6
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %123

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 0, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %28, label %119

28:                                               ; preds = %20
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %119

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %119

44:                                               ; preds = %36
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 3, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %52, label %119

52:                                               ; preds = %44
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 4, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 150
  br i1 %59, label %60, label %119

60:                                               ; preds = %52
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 5, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 100
  br i1 %67, label %92, label %68

68:                                               ; preds = %60
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 5, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 101
  br i1 %75, label %92, label %76

76:                                               ; preds = %68
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 5, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 102
  br i1 %83, label %92, label %84

84:                                               ; preds = %76
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 5, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 103
  br i1 %91, label %92, label %118

92:                                               ; preds = %84, %76, %68, %60
  %93 = load i32, i32* @D_PACK, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @PDEBUG(i32 %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %98 = load i32, i32* @LAST_PACKET, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @gspca_frame_add(%struct.gspca_dev* %97, i32 %98, i32* %99, i32 %100)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %103 = load i32, i32* @FIRST_PACKET, align 4
  %104 = load %struct.sd*, %struct.sd** %7, align 8
  %105 = getelementptr inbounds %struct.sd, %struct.sd* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @JPEG_HDR_SZ, align 4
  %108 = call i32 @gspca_frame_add(%struct.gspca_dev* %102, i32 %103, i32* %106, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 16
  %111 = load i32*, i32** %5, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 16
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %123

118:                                              ; preds = %84
  br label %119

119:                                              ; preds = %118, %52, %44, %36, %28, %20
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %15

123:                                              ; preds = %92, %15
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %125 = load i32, i32* @INTER_PACKET, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @gspca_frame_add(%struct.gspca_dev* %124, i32 %125, i32* %126, i32 %127)
  br label %129

129:                                              ; preds = %123, %13
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
