; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_sensor_mapwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_sensor_mapwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, [2 x i32]*)* @sensor_mapwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sensor_mapwrite(%struct.gspca_dev* %0, [2 x i32]* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca [2 x i32]*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store [2 x i32]* %1, [2 x i32]** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load [2 x i32]*, [2 x i32]** %4, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %5
  %11 = load [2 x i32]*, [2 x i32]** %4, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load [2 x i32]*, [2 x i32]** %4, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = load [2 x i32]*, [2 x i32]** %4, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @reg_w_buf(%struct.gspca_dev* %26, i32 %29, i32 2)
  %31 = load [2 x i32]*, [2 x i32]** %4, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i32 1
  store [2 x i32]* %32, [2 x i32]** %4, align 8
  br label %5

33:                                               ; preds = %5
  ret void
}

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
