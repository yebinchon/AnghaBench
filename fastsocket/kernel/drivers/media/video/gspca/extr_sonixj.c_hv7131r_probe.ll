; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_hv7131r_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_hv7131r_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Sensor HV7131R found\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Erroneous HV7131R ID 0x%02x 0x%02x 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @hv7131r_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv7131r_probe(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = call i32 @i2c_w1(%struct.gspca_dev* %3, i32 2, i32 0)
  %5 = call i32 @msleep(i32 10)
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = call i32 @reg_w1(%struct.gspca_dev* %6, i32 2, i32 102)
  %8 = call i32 @msleep(i32 10)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @i2c_r(%struct.gspca_dev* %9, i32 0, i32 5)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @D_PROBE, align 4
  %33 = call i32 @PDEBUG(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %51

34:                                               ; preds = %24, %17, %1
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @i2c_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @warn(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
