; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-ov2640.c_ov2640_init_at_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-ov2640.c_ov2640_init_at_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@tbl_init_at_startup = common dso_local global i32 0, align 4
@dat_init1 = common dso_local global i32* null, align 8
@c61 = common dso_local global i32 0, align 4
@c51 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @ov2640_init_at_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2640_init_at_startup(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = load i32, i32* @tbl_init_at_startup, align 4
  %5 = load i32, i32* @tbl_init_at_startup, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = call i32 @fetch_validx(%struct.gspca_dev* %3, i32 %4, i32 %6)
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = load i32*, i32** @dat_init1, align 8
  %10 = call i32 @ctrl_out(%struct.gspca_dev* %8, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %9)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = call i32 @common(%struct.gspca_dev* %11)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = load i32, i32* @c61, align 4
  %15 = call i32 @ctrl_in(%struct.gspca_dev* %13, i32 192, i32 2, i32 0, i32 6, i32 1, i32 %14)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = call i32 @ctrl_out(%struct.gspca_dev* %16, i32 64, i32 1, i32 239, i32 6, i32 0, i32* null)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = load i32, i32* @c51, align 4
  %20 = call i32 @ctrl_in(%struct.gspca_dev* %18, i32 192, i32 2, i32 0, i32 0, i32 1, i32 %19)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i32 @ctrl_out(%struct.gspca_dev* %21, i32 64, i32 1, i32 81, i32 0, i32 0, i32* null)
  ret i32 0
}

declare dso_local i32 @fetch_validx(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @common(%struct.gspca_dev*) #1

declare dso_local i32 @ctrl_in(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
