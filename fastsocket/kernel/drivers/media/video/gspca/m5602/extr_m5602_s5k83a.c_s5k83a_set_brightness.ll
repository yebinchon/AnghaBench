; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_set_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.s5k83a_priv* }
%struct.s5k83a_priv = type { i8** }

@BRIGHTNESS_IDX = common dso_local global i64 0, align 8
@S5K83A_BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i8*)* @s5k83a_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k83a_set_brightness(%struct.gspca_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i8*], align 8
  %7 = alloca %struct.sd*, align 8
  %8 = alloca %struct.s5k83a_priv*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load %struct.sd*, %struct.sd** %7, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %12, align 8
  store %struct.s5k83a_priv* %13, %struct.s5k83a_priv** %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %8, align 8
  %16 = getelementptr inbounds %struct.s5k83a_priv, %struct.s5k83a_priv* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = load i64, i64* @BRIGHTNESS_IDX, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  store i8* %14, i8** %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.sd*, %struct.sd** %7, align 8
  %23 = load i32, i32* @S5K83A_BRIGHTNESS, align 4
  %24 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %25 = call i32 @m5602_write_sensor(%struct.sd* %22, i32 %23, i8** %24, i32 1)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
