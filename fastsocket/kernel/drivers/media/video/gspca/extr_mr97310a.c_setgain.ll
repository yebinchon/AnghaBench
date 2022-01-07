; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_setgain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_setgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i32, i32 }

@GAIN_IDX = common dso_local global i32 0, align 4
@SAKAR_CS_GAIN_IDX = common dso_local global i32 0, align 4
@CAM_TYPE_CIF = common dso_local global i64 0, align 8
@CAM_TYPE_VGA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setgain(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GAIN_IDX, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SAKAR_CS_GAIN_IDX, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %82

23:                                               ; preds = %14, %1
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CAM_TYPE_CIF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sensor_write1(%struct.gspca_dev* %35, i32 14, i32 %38)
  br label %82

40:                                               ; preds = %29, %23
  %41 = load %struct.sd*, %struct.sd** %3, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CAM_TYPE_VGA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load %struct.sd*, %struct.sd** %3, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  store i32 10, i32* %4, align 4
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 17
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.sd*, %struct.sd** %3, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 8
  %62 = call i32 @sensor_write1(%struct.gspca_dev* %56, i32 %57, i32 %61)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.sd*, %struct.sd** %3, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 255
  %70 = call i32 @sensor_write1(%struct.gspca_dev* %63, i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %4, align 4
  br label %52

74:                                               ; preds = %52
  br label %81

75:                                               ; preds = %46, %40
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = load %struct.sd*, %struct.sd** %3, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sensor_write1(%struct.gspca_dev* %76, i32 16, i32 %79)
  br label %81

81:                                               ; preds = %75, %74
  br label %82

82:                                               ; preds = %22, %81, %34
  ret void
}

declare dso_local i32 @sensor_write1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
