; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }
%struct.sd = type { i64, i64 }

@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"vc032x header packet found len %d\00", align 1
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@BRIDGE_VC0321 = common dso_local global i64 0, align 8
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
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %45

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 216
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load i32, i32* @D_PACK, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @PDEBUG(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %26 = load i32, i32* @LAST_PACKET, align 4
  %27 = call i32 @gspca_frame_add(%struct.gspca_dev* %25, i32 %26, i32* null, i32 0)
  %28 = load %struct.sd*, %struct.sd** %7, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  store i32* %32, i32** %5, align 8
  %33 = load %struct.sd*, %struct.sd** %7, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %41 = load i32, i32* @FIRST_PACKET, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @gspca_frame_add(%struct.gspca_dev* %40, i32 %41, i32* %42, i32 %43)
  br label %74

45:                                               ; preds = %16, %3
  %46 = load %struct.sd*, %struct.sd** %7, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BRIDGE_VC0321, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %56 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %51
  br label %68

68:                                               ; preds = %67, %45
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %70 = load i32, i32* @INTER_PACKET, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @gspca_frame_add(%struct.gspca_dev* %69, i32 %70, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %21
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
