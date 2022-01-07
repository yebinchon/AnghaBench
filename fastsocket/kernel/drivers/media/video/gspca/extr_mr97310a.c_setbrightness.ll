; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_setbrightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_setbrightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i64, i64 }

@setbrightness.quick_clix_table = internal constant [16 x i32] [i32 0, i32 4, i32 8, i32 12, i32 1, i32 2, i32 3, i32 5, i32 6, i32 9, i32 7, i32 10, i32 13, i32 11, i32 14, i32 15], align 16
@NORM_BRIGHTNESS_IDX = common dso_local global i32 0, align 4
@ARGUS_QC_BRIGHTNESS_IDX = common dso_local global i32 0, align 4
@CAM_TYPE_VGA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setbrightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbrightness(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %3, align 8
  store i32 7, i32* %5, align 4
  store i32 8, i32* %6, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NORM_BRIGHTNESS_IDX, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ARGUS_QC_BRIGHTNESS_IDX, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %73

25:                                               ; preds = %16, %1
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CAM_TYPE_VGA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @sensor_write1(%struct.gspca_dev* %42, i32 %43, i32 0)
  %45 = load %struct.sd*, %struct.sd** %3, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %58

49:                                               ; preds = %36
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @sensor_write1(%struct.gspca_dev* %50, i32 %51, i32 1)
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 257, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %49, %41
  %59 = load %struct.sd*, %struct.sd** %3, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* @setbrightness.quick_clix_table, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @sensor_write1(%struct.gspca_dev* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %24
  ret void
}

declare dso_local i32 @sensor_write1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
