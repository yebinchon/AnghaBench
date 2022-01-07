; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stv0680.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stv0680.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %5, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = load %struct.sd*, %struct.sd** %5, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @stv0680_set_video_mode(%struct.gspca_dev* %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @stv_sndctrl(%struct.gspca_dev* %18, i32 0, i32 133, i32 0, i32 16)
  %20 = icmp ne i32 %19, 16
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @stv0680_handle_error(%struct.gspca_dev* %22, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %40

26:                                               ; preds = %17
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = load %struct.sd*, %struct.sd** %5, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = call i32 @stv_sndctrl(%struct.gspca_dev* %27, i32 1, i32 9, i32 %31, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @stv0680_handle_error(%struct.gspca_dev* %35, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %34, %21, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @stv0680_set_video_mode(%struct.gspca_dev*, i32) #1

declare dso_local i32 @stv_sndctrl(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @stv0680_handle_error(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
