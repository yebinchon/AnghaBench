; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c2028.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c2028.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@sn9c2028_sof_marker = common dso_local global i8* null, align 8
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i8*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i8* @sn9c2028_find_sof(%struct.gspca_dev* %9, i8* %10, i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %23, 8
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  br label %31

30:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %33 = load i32, i32* @LAST_PACKET, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @gspca_frame_add(%struct.gspca_dev* %32, i32 %33, i8* %34, i32 %35)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %38 = load i32, i32* @FIRST_PACKET, align 4
  %39 = load i8*, i8** @sn9c2028_sof_marker, align 8
  %40 = call i32 @gspca_frame_add(%struct.gspca_dev* %37, i32 %38, i8* %39, i32 8)
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load i8*, i8** %7, align 8
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %31, %3
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = load i32, i32* @INTER_PACKET, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @gspca_frame_add(%struct.gspca_dev* %52, i32 %53, i8* %54, i32 %55)
  ret void
}

declare dso_local i8* @sn9c2028_find_sof(%struct.gspca_dev*, i8*, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
