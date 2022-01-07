; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_sethvflip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_sethvflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, i32 }

@FL_HFLIP = common dso_local global i32 0, align 4
@FL_VFLIP = common dso_local global i32 0, align 4
@OV7660_MVFP_MIRROR = common dso_local global i32 0, align 4
@OV7660_MVFP_VFLIP = common dso_local global i32 0, align 4
@OV7660_REG_MVFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sethvflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sethvflip(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %3, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FL_HFLIP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FL_VFLIP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.sd*, %struct.sd** %3, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %101 [
    i32 133, label %42
    i32 132, label %42
    i32 131, label %42
    i32 130, label %64
    i32 129, label %64
    i32 128, label %86
  ]

42:                                               ; preds = %38, %38, %38
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %47 = call i32 @i2c_write(%struct.gspca_dev* %45, i32 240, i32* %46, i32 2)
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 133
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 3, i32 1
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 2, %55
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 1, %57
  %59 = or i32 %56, %58
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %63 = call i32 @i2c_write(%struct.gspca_dev* %61, i32 32, i32* %62, i32 2)
  br label %101

64:                                               ; preds = %38, %38
  %65 = load %struct.sd*, %struct.sd** %3, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 130
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 7
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @OV7660_MVFP_MIRROR, align 4
  %73 = load i32, i32* %5, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* @OV7660_MVFP_VFLIP, align 4
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %75, %76
  %78 = or i32 %74, %77
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = load i32, i32* @OV7660_REG_MVFP, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %85 = call i32 @i2c_write(%struct.gspca_dev* %82, i32 %83, i32* %84, i32 1)
  br label %101

86:                                               ; preds = %38
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %87, align 4
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %90 = call i32 @i2c_write(%struct.gspca_dev* %88, i32 3, i32* %89, i32 1)
  %91 = load i32, i32* %5, align 4
  %92 = mul nsw i32 128, %91
  %93 = load i32, i32* %6, align 4
  %94 = mul nsw i32 64, %93
  %95 = or i32 %92, %94
  %96 = or i32 %95, 6
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %96, i32* %97, align 4
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %100 = call i32 @i2c_write(%struct.gspca_dev* %98, i32 30, i32* %99, i32 1)
  br label %101

101:                                              ; preds = %38, %86, %64, %42
  ret void
}

declare dso_local i32 @i2c_write(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
