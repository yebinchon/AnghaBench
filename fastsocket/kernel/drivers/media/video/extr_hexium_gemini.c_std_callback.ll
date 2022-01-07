; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_hexium_gemini.c_std_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_hexium_gemini.c_std_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64 }
%struct.saa7146_standard = type { i64 }
%struct.hexium = type { i64 }

@V4L2_STD_PAL = common dso_local global i64 0, align 8
@hexium_pal = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i64 0, align 8
@hexium_ntsc = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i64 0, align 8
@hexium_secam = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_standard*)* @std_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_callback(%struct.saa7146_dev* %0, %struct.saa7146_standard* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_standard*, align 8
  %6 = alloca %struct.hexium*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_standard* %1, %struct.saa7146_standard** %5, align 8
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %8 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hexium*
  store %struct.hexium* %10, %struct.hexium** %6, align 8
  %11 = load i64, i64* @V4L2_STD_PAL, align 8
  %12 = load %struct.saa7146_standard*, %struct.saa7146_standard** %5, align 8
  %13 = getelementptr inbounds %struct.saa7146_standard, %struct.saa7146_standard* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.hexium*, %struct.hexium** %6, align 8
  %18 = load i32, i32* @hexium_pal, align 4
  %19 = call i32 @hexium_set_standard(%struct.hexium* %17, i32 %18)
  %20 = load i64, i64* @V4L2_STD_PAL, align 8
  %21 = load %struct.hexium*, %struct.hexium** %6, align 8
  %22 = getelementptr inbounds %struct.hexium, %struct.hexium* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  store i32 0, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load i64, i64* @V4L2_STD_NTSC, align 8
  %25 = load %struct.saa7146_standard*, %struct.saa7146_standard** %5, align 8
  %26 = getelementptr inbounds %struct.saa7146_standard, %struct.saa7146_standard* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.hexium*, %struct.hexium** %6, align 8
  %31 = load i32, i32* @hexium_ntsc, align 4
  %32 = call i32 @hexium_set_standard(%struct.hexium* %30, i32 %31)
  %33 = load i64, i64* @V4L2_STD_NTSC, align 8
  %34 = load %struct.hexium*, %struct.hexium** %6, align 8
  %35 = getelementptr inbounds %struct.hexium, %struct.hexium* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %52

36:                                               ; preds = %23
  %37 = load i64, i64* @V4L2_STD_SECAM, align 8
  %38 = load %struct.saa7146_standard*, %struct.saa7146_standard** %5, align 8
  %39 = getelementptr inbounds %struct.saa7146_standard, %struct.saa7146_standard* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.hexium*, %struct.hexium** %6, align 8
  %44 = load i32, i32* @hexium_secam, align 4
  %45 = call i32 @hexium_set_standard(%struct.hexium* %43, i32 %44)
  %46 = load i64, i64* @V4L2_STD_SECAM, align 8
  %47 = load %struct.hexium*, %struct.hexium** %6, align 8
  %48 = getelementptr inbounds %struct.hexium, %struct.hexium* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %52

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %42, %29, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @hexium_set_standard(%struct.hexium*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
