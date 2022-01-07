; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov519_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov519_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8* }

@FIRST_PACKET = common dso_local global i32 0, align 4
@DISCARD_PACKET = common dso_local global i8* null, align 8
@LAST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@HDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @ov519_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov519_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 255
  br i1 %10, label %11, label %70

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %70

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %70

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %69 [
    i32 80, label %25
    i32 81, label %50
  ]

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 16
  store i32* %27, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 16
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 216
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %25
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %41 = load i32, i32* @FIRST_PACKET, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @gspca_frame_add(%struct.gspca_dev* %40, i32 %41, i32* %42, i32 %43)
  br label %49

45:                                               ; preds = %34
  %46 = load i8*, i8** @DISCARD_PACKET, align 8
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  br label %76

50:                                               ; preds = %21
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 11
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 1
  %56 = call i32 @ov51x_handle_button(%struct.gspca_dev* %51, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 9
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i8*, i8** @DISCARD_PACKET, align 8
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %64 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %50
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %67 = load i32, i32* @LAST_PACKET, align 4
  %68 = call i32 @gspca_frame_add(%struct.gspca_dev* %66, i32 %67, i32* null, i32 0)
  br label %76

69:                                               ; preds = %21
  br label %70

70:                                               ; preds = %69, %16, %11, %3
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %72 = load i32, i32* @INTER_PACKET, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @gspca_frame_add(%struct.gspca_dev* %71, i32 %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %65, %49
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @ov51x_handle_button(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
