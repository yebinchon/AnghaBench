; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i64* }

@.str = private unnamed_addr constant [18 x i8] c"i2c_write timeout\00", align 1
@D_USBO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32*, i32)* @i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_write(%struct.gspca_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %11 = call i32 @reg_r_i(%struct.gspca_dev* %10, i32 161, i32 45887, i32 1)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @reg_w_i(%struct.gspca_dev* %12, i32 160, i32 %13, i32 45876)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @reg_w_i(%struct.gspca_dev* %15, i32 160, i32 %16, i32 45882)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @reg_w_i(%struct.gspca_dev* %18, i32 160, i32 %21, i32 45878)
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @reg_w_i(%struct.gspca_dev* %26, i32 160, i32 %29, i32 45879)
  br label %31

31:                                               ; preds = %25, %4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %33 = call i32 @reg_w_i(%struct.gspca_dev* %32, i32 160, i32 1, i32 45881)
  store i32 4, i32* %9, align 4
  br label %34

34:                                               ; preds = %46, %31
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %36 = call i32 @reg_r_i(%struct.gspca_dev* %35, i32 161, i32 45883, i32 1)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %50

44:                                               ; preds = %34
  %45 = call i32 @msleep(i32 20)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %34, label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %9, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  ret void
}

declare dso_local i32 @reg_r_i(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @reg_w_i(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
