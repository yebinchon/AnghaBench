; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca506.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca506.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@LAST_PACKET = common dso_local global i32 0, align 4
@SPCA50X_OFFSET_DATA = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %27 [
    i32 0, label %10
    i32 255, label %26
  ]

10:                                               ; preds = %3
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = load i32, i32* @LAST_PACKET, align 4
  %13 = call i32 @gspca_frame_add(%struct.gspca_dev* %11, i32 %12, i32* null, i32 0)
  %14 = load i32, i32* @SPCA50X_OFFSET_DATA, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* @SPCA50X_OFFSET_DATA, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = load i32, i32* @FIRST_PACKET, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @gspca_frame_add(%struct.gspca_dev* %21, i32 %22, i32* %23, i32 %24)
  br label %37

26:                                               ; preds = %3
  br label %37

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32* %29, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %33 = load i32, i32* @INTER_PACKET, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @gspca_frame_add(%struct.gspca_dev* %32, i32 %33, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %27, %26, %10
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
