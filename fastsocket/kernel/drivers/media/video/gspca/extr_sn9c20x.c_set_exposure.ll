; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_set_exposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_exposure(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 129, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 30, i32* %18, align 4
  %19 = load %struct.sd*, %struct.sd** %4, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %70 [
    i32 131, label %22
    i32 130, label %22
    i32 128, label %22
    i32 129, label %22
    i32 134, label %37
    i32 132, label %37
    i32 133, label %37
    i32 135, label %52
  ]

22:                                               ; preds = %1, %1, %1, %1
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = or i32 %24, 48
  store i32 %25, i32* %23, align 16
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 45, i32* %26, align 8
  %27 = load %struct.sd*, %struct.sd** %4, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.sd*, %struct.sd** %4, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 8
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %35, i32* %36, align 16
  br label %71

37:                                               ; preds = %1, %1, %1
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = or i32 %39, 48
  store i32 %40, i32* %38, align 16
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 9, i32* %41, align 8
  %42 = load %struct.sd*, %struct.sd** %4, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %45, i32* %46, align 4
  %47 = load %struct.sd*, %struct.sd** %4, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %50, i32* %51, align 16
  br label %71

52:                                               ; preds = %1
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = or i32 %54, 64
  store i32 %55, i32* %53, align 16
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 37, i32* %56, align 8
  %57 = load %struct.sd*, %struct.sd** %4, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 5
  %61 = and i32 %60, 255
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %61, i32* %62, align 4
  %63 = load %struct.sd*, %struct.sd** %4, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 3
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %67, i32* %68, align 16
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 0, i32* %69, align 4
  br label %71

70:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

71:                                               ; preds = %52, %37, %22
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %74 = call i32 @i2c_w(%struct.gspca_dev* %72, i32* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %70
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
