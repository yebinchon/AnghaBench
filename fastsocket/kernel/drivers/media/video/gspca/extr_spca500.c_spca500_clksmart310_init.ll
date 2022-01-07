; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca500.c_spca500_clksmart310_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca500.c_spca500_clksmart310_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ClickSmart310 init 0x0d05 0x%02x 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @spca500_clksmart310_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spca500_clksmart310_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = call i32 @reg_r(%struct.gspca_dev* %3, i32 3333, i32 2)
  %5 = load i32, i32* @D_STREAM, align 4
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PDEBUG(i32 %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %15)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @reg_w(%struct.gspca_dev* %17, i32 0, i32 33127, i32 90)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = call i32 @spca500_ping310(%struct.gspca_dev* %19)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i32 @reg_w(%struct.gspca_dev* %21, i32 0, i32 33128, i32 34)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = call i32 @reg_w(%struct.gspca_dev* %23, i32 0, i32 33130, i32 192)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i32 @reg_w(%struct.gspca_dev* %25, i32 0, i32 33131, i32 11)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = call i32 @reg_w(%struct.gspca_dev* %27, i32 0, i32 33129, i32 37)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = call i32 @reg_w(%struct.gspca_dev* %29, i32 0, i32 33111, i32 91)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = call i32 @reg_w(%struct.gspca_dev* %31, i32 0, i32 33112, i32 91)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = call i32 @reg_w(%struct.gspca_dev* %33, i32 0, i32 33087, i32 3)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = call i32 @reg_w(%struct.gspca_dev* %35, i32 0, i32 33105, i32 74)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = call i32 @reg_w(%struct.gspca_dev* %37, i32 0, i32 33107, i32 120)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = call i32 @reg_w(%struct.gspca_dev* %39, i32 0, i32 3329, i32 4)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = call i32 @reg_w(%struct.gspca_dev* %41, i32 0, i32 3330, i32 1)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = call i32 @reg_w(%struct.gspca_dev* %43, i32 0, i32 33129, i32 37)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @reg_w(%struct.gspca_dev* %45, i32 0, i32 3329, i32 2)
  ret void
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca500_ping310(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
