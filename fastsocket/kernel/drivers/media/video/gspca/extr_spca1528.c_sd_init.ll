; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca1528.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca1528.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32* }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = call i32 @reg_w(%struct.gspca_dev* %3, i32 0, i32 1, i32 8295)
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = call i32 @reg_w(%struct.gspca_dev* %5, i32 0, i32 208, i32 8299)
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @reg_w(%struct.gspca_dev* %7, i32 0, i32 0, i32 8300)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @reg_w(%struct.gspca_dev* %9, i32 0, i32 1, i32 8297)
  %11 = call i32 @msleep(i32 8)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @reg_w(%struct.gspca_dev* %12, i32 0, i32 192, i32 8299)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @reg_w(%struct.gspca_dev* %14, i32 0, i32 0, i32 8300)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = call i32 @reg_w(%struct.gspca_dev* %16, i32 0, i32 1, i32 8297)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = call i32 @reg_r(%struct.gspca_dev* %18, i32 32, i32 0, i32 1)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @reg_r(%struct.gspca_dev* %20, i32 32, i32 0, i32 5)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @reg_r(%struct.gspca_dev* %22, i32 35, i32 0, i32 64)
  %24 = load i32, i32* @D_PROBE, align 4
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 28
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 48
  %33 = call i32 @PDEBUG(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %28, i32* %32)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @reg_r(%struct.gspca_dev* %34, i32 35, i32 1, i32 64)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  ret i32 %38
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
