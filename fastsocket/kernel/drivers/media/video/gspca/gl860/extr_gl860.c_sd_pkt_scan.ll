; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i32 }

@sd_pkt_scan.nSkipped = internal global i64 0, align 8
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
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %7, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load %struct.sd*, %struct.sd** %7, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %18, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %54 [
    i32 514, label %32
  ]

32:                                               ; preds = %3
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %34 = load i32, i32* @LAST_PACKET, align 4
  %35 = call i32 @gspca_frame_add(%struct.gspca_dev* %33, i32 %34, i32* null, i32 0)
  store i64 0, i64* @sd_pkt_scan.nSkipped, align 8
  %36 = load %struct.sd*, %struct.sd** %7, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.sd*, %struct.sd** %7, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.sd*, %struct.sd** %7, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %40, %32
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %52 = load i32, i32* @FIRST_PACKET, align 4
  %53 = call i32 @gspca_frame_add(%struct.gspca_dev* %51, i32 %52, i32* null, i32 0)
  br label %103

54:                                               ; preds = %3
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %56, i32** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 2
  store i32 %58, i32* %6, align 4
  %59 = load i64, i64* @sd_pkt_scan.nSkipped, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = load i64, i64* %9, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @sd_pkt_scan.nSkipped, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* @sd_pkt_scan.nSkipped, align 8
  br label %102

70:                                               ; preds = %54
  %71 = load i64, i64* @sd_pkt_scan.nSkipped, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load i64, i64* @sd_pkt_scan.nSkipped, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %75, %77
  %79 = load i64, i64* %9, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %74
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @sd_pkt_scan.nSkipped, align 8
  %84 = sub i64 %82, %83
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  store i32* %86, i32** %5, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @sd_pkt_scan.nSkipped, align 8
  %89 = sub i64 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %6, align 4
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* @sd_pkt_scan.nSkipped, align 8
  br label %96

96:                                               ; preds = %81, %74, %70
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %98 = load i32, i32* @INTER_PACKET, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @gspca_frame_add(%struct.gspca_dev* %97, i32 %98, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %65
  br label %103

103:                                              ; preds = %102, %50
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
