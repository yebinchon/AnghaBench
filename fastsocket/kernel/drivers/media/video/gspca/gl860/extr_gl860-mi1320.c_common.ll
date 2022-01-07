; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-mi1320.c_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-mi1320.c_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@dat_common00 = common dso_local global i32* null, align 8
@dat_common01 = common dso_local global i32* null, align 8
@tbl_common = common dso_local global i32 0, align 4
@dat_common02 = common dso_local global i32* null, align 8
@dat_common03 = common dso_local global i32* null, align 8
@dat_common04 = common dso_local global i32* null, align 8
@dat_common05 = common dso_local global i32* null, align 8
@dat_common06 = common dso_local global i32* null, align 8
@dat_common07 = common dso_local global i32* null, align 8
@dat_common08 = common dso_local global i32* null, align 8
@dat_common09 = common dso_local global i32* null, align 8
@dat_common10 = common dso_local global i32* null, align 8
@dat_common11 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = load i32*, i32** @dat_common00, align 8
  %6 = call i32 @ctrl_out(%struct.gspca_dev* %4, i32 64, i32 3, i32 0, i32 512, i32 22, i32* %5)
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @ctrl_out(%struct.gspca_dev* %7, i32 64, i32 1, i32 65, i32 0, i32 0, i32* null)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = load i32*, i32** @dat_common01, align 8
  %11 = call i32 @ctrl_out(%struct.gspca_dev* %9, i32 64, i32 3, i32 47616, i32 512, i32 32, i32* %10)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load i32, i32* @tbl_common, align 4
  %14 = load i32, i32* @tbl_common, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @fetch_validx(%struct.gspca_dev* %12, i32 %13, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = load i32*, i32** @dat_common02, align 8
  %19 = call i32 @ctrl_out(%struct.gspca_dev* %17, i32 64, i32 3, i32 47616, i32 512, i32 48, i32* %18)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = load i32*, i32** @dat_common03, align 8
  %22 = call i32 @ctrl_out(%struct.gspca_dev* %20, i32 64, i32 3, i32 47616, i32 512, i32 48, i32* %21)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i32*, i32** @dat_common04, align 8
  %25 = call i32 @ctrl_out(%struct.gspca_dev* %23, i32 64, i32 3, i32 47616, i32 512, i32 16, i32* %24)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = load i32*, i32** @dat_common05, align 8
  %28 = call i32 @ctrl_out(%struct.gspca_dev* %26, i32 64, i32 3, i32 47616, i32 512, i32 48, i32* %27)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = load i32*, i32** @dat_common06, align 8
  %31 = call i32 @ctrl_out(%struct.gspca_dev* %29, i32 64, i32 3, i32 47616, i32 512, i32 44, i32* %30)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = load i32, i32* @tbl_common, align 4
  %34 = load i32, i32* @tbl_common, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %32, i32 %33, i32 %35, i32 %36)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = load i32*, i32** @dat_common07, align 8
  %40 = call i32 @ctrl_out(%struct.gspca_dev* %38, i32 64, i32 3, i32 47616, i32 512, i32 52, i32* %39)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = load i32*, i32** @dat_common08, align 8
  %43 = call i32 @ctrl_out(%struct.gspca_dev* %41, i32 64, i32 3, i32 47616, i32 512, i32 48, i32* %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32*, i32** @dat_common09, align 8
  %46 = call i32 @ctrl_out(%struct.gspca_dev* %44, i32 64, i32 3, i32 47616, i32 512, i32 48, i32* %45)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = load i32*, i32** @dat_common10, align 8
  %49 = call i32 @ctrl_out(%struct.gspca_dev* %47, i32 64, i32 3, i32 47616, i32 512, i32 56, i32* %48)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = load i32, i32* @tbl_common, align 4
  %52 = load i32, i32* @tbl_common, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %50, i32 %51, i32 %53, i32 %54)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = load i32*, i32** @dat_common11, align 8
  %58 = call i32 @ctrl_out(%struct.gspca_dev* %56, i32 64, i32 3, i32 47616, i32 512, i32 40, i32* %57)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = load i32, i32* @tbl_common, align 4
  %61 = load i32, i32* @tbl_common, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %59, i32 %60, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fetch_validx(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @keep_on_fetching_validx(%struct.gspca_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
