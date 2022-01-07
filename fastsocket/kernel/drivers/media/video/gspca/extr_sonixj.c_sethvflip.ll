; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sethvflip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sethvflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, %struct.gspca_dev, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VFLIP = common dso_local global i64 0, align 8
@HFLIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sethvflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sethvflip(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %87 [
    i32 131, label %10
    i32 130, label %26
    i32 129, label %42
    i32 128, label %58
  ]

10:                                               ; preds = %1
  store i32 24, i32* %4, align 4
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* @VFLIP, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %10
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @i2c_w1(%struct.gspca_dev* %23, i32 1, i32 %24)
  br label %87

26:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* @VFLIP, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, 128
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @i2c_w1(%struct.gspca_dev* %39, i32 117, i32 %40)
  br label %87

42:                                               ; preds = %1
  store i32 6, i32* %4, align 4
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* @VFLIP, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, 128
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @i2c_w1(%struct.gspca_dev* %55, i32 117, i32 %56)
  br label %87

58:                                               ; preds = %1
  store i32 10, i32* %4, align 4
  %59 = load %struct.sd*, %struct.sd** %3, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @HFLIP, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, 128
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.sd*, %struct.sd** %3, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* @VFLIP, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, 64
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %70
  %83 = load %struct.sd*, %struct.sd** %3, align 8
  %84 = getelementptr inbounds %struct.sd, %struct.sd* %83, i32 0, i32 1
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @i2c_w1(%struct.gspca_dev* %84, i32 30, i32 %85)
  br label %87

87:                                               ; preds = %1, %82, %54, %38, %22
  ret void
}

declare dso_local i32 @i2c_w1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
