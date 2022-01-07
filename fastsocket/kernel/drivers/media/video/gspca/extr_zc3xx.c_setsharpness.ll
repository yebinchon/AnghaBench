; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_zc3xx.c_setsharpness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_zc3xx.c_setsharpness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@setsharpness.sharpness_tb = internal constant [4 x [2 x %struct.TYPE_5__]] [[2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 2, i32 3 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 4, i32 7 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 8, i32 15 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 16, i32 30 }, %struct.TYPE_5__ zeroinitializer]], align 16
@SHARPNESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setsharpness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setsharpness(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load i64, i64* @SHARPNESS, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x [2 x %struct.TYPE_5__]], [4 x [2 x %struct.TYPE_5__]]* @setsharpness.sharpness_tb, i64 0, i64 %16
  %18 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %17, i64 0, i64 0
  %19 = bitcast %struct.TYPE_5__* %18 to i64*
  %20 = load i64, i64* %19, align 16
  %21 = call i32 @reg_w(%struct.gspca_dev* %14, i64 %20, i32 454)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @reg_r(%struct.gspca_dev* %22, i32 456)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = call i32 @reg_r(%struct.gspca_dev* %24, i32 457)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = call i32 @reg_r(%struct.gspca_dev* %26, i32 458)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x [2 x %struct.TYPE_5__]], [4 x [2 x %struct.TYPE_5__]]* @setsharpness.sharpness_tb, i64 0, i64 %30
  %32 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %31, i64 0, i64 1
  %33 = bitcast %struct.TYPE_5__* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @reg_w(%struct.gspca_dev* %28, i64 %34, i32 459)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i64, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
