; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stv0680.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stv0680.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DISCARD_PACKET = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
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
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.sd*, %struct.sd** %7, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %10, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @DISCARD_PACKET, align 4
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = load i32, i32* @LAST_PACKET, align 4
  %23 = call i32 @gspca_frame_add(%struct.gspca_dev* %21, i32 %22, i32* null, i32 0)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %25 = load i32, i32* @FIRST_PACKET, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @gspca_frame_add(%struct.gspca_dev* %24, i32 %25, i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
