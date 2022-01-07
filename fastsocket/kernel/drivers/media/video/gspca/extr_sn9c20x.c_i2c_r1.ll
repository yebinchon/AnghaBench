; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_i2c_r1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_i2c_r1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }
%struct.sd = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32*)* @i2c_r1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_r1(%struct.gspca_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sd*, align 8
  %9 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %8, align 8
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 145, i32* %12, align 16
  %13 = load %struct.sd*, %struct.sd** %8, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  store i32 0, i32* %20, align 16
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  store i32 16, i32* %23, align 4
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %26 = call i64 @i2c_w(%struct.gspca_dev* %24, i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %55

31:                                               ; preds = %3
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 147, i32* %32, align 16
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %36 = call i64 @i2c_w(%struct.gspca_dev* %34, i32* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %55

41:                                               ; preds = %31
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %43 = call i64 @reg_r(%struct.gspca_dev* %42, i32 4290, i32 5)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %55

48:                                               ; preds = %41
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %48, %45, %38, %28
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @i2c_w(%struct.gspca_dev*, i32*) #1

declare dso_local i64 @reg_r(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
