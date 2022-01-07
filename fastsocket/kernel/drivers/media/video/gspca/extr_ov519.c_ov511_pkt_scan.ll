; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov511_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov511_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32 }
%struct.sd = type { i64 }

@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Invalid frame size, got: %dx%d, requested: %dx%d\0A\00", align 1
@DISCARD_PACKET = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @ov511_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov511_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 7
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %116, label %42

42:                                               ; preds = %3
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %116

48:                                               ; preds = %42
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 2
  %54 = and i32 %53, 1
  %55 = call i32 @ov51x_handle_button(%struct.gspca_dev* %49, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 128
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %108

61:                                               ; preds = %48
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 9
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = mul nsw i32 %65, 8
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %61
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 10
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = mul nsw i32 %75, 8
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %78 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %71, %61
  %82 = load i32, i32* @D_ERR, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 9
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = mul nsw i32 %86, 8
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 10
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = mul nsw i32 %91, 8
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %94 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %97 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @PDEBUG(i32 %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %92, i32 %95, i32 %98)
  %100 = load i32, i32* @DISCARD_PACKET, align 4
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %102 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %124

103:                                              ; preds = %71
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %105 = load i32, i32* @LAST_PACKET, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @gspca_frame_add(%struct.gspca_dev* %104, i32 %105, i32* %106, i32 11)
  br label %124

108:                                              ; preds = %48
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %110 = load i32, i32* @FIRST_PACKET, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @gspca_frame_add(%struct.gspca_dev* %109, i32 %110, i32* %111, i32 0)
  %113 = load %struct.sd*, %struct.sd** %7, align 8
  %114 = getelementptr inbounds %struct.sd, %struct.sd* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %42, %3
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %6, align 4
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %120 = load i32, i32* @INTER_PACKET, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @gspca_frame_add(%struct.gspca_dev* %119, i32 %120, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %116, %103, %81
  ret void
}

declare dso_local i32 @ov51x_handle_button(%struct.gspca_dev*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
