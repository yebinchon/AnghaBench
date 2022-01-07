; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FREQ = common dso_local global i32 0, align 4
@SENSOR_OV7660 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfreq(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FREQ, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SENSOR_OV7660, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  store i32 223, i32* %4, align 4
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* @FREQ, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %50 [
    i32 0, label %33
    i32 1, label %38
    i32 2, label %44
  ]

33:                                               ; preds = %24
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, 32
  %37 = call i32 @i2c_w1(%struct.gspca_dev* %34, i32 19, i32 %36)
  br label %50

38:                                               ; preds = %24
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @i2c_w1(%struct.gspca_dev* %39, i32 19, i32 %40)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = call i32 @i2c_w1(%struct.gspca_dev* %42, i32 59, i32 10)
  br label %50

44:                                               ; preds = %24
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @i2c_w1(%struct.gspca_dev* %45, i32 19, i32 %46)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = call i32 @i2c_w1(%struct.gspca_dev* %48, i32 59, i32 2)
  br label %50

50:                                               ; preds = %24, %44, %38, %33
  br label %87

51:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %52 = load %struct.sd*, %struct.sd** %3, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %57 [
    i32 129, label %55
    i32 128, label %56
  ]

55:                                               ; preds = %51
  store i32 8, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %57

56:                                               ; preds = %51
  store i32 17, i32* %5, align 4
  store i32 129, i32* %7, align 4
  br label %57

57:                                               ; preds = %51, %56, %55
  %58 = load %struct.sd*, %struct.sd** %3, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* @FREQ, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %77 [
    i32 0, label %66
    i32 1, label %67
    i32 2, label %72
  ]

66:                                               ; preds = %57
  br label %77

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, 128
  store i32 %69, i32* %5, align 4
  store i32 172, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, 4
  store i32 %71, i32* %7, align 4
  br label %77

72:                                               ; preds = %57
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, 128
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %57, %72, %67, %66
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @i2c_w1(%struct.gspca_dev* %78, i32 42, i32 %79)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @i2c_w1(%struct.gspca_dev* %81, i32 43, i32 %82)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @i2c_w1(%struct.gspca_dev* %84, i32 45, i32 %85)
  br label %87

87:                                               ; preds = %17, %77, %50
  ret void
}

declare dso_local i32 @i2c_w1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
