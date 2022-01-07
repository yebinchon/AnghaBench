; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }
%struct.sd = type { i64, i32, i32, i32 }

@MR97310A_EXPOSURE_DEFAULT = common dso_local global i32 0, align 4
@EXPOSURE_IDX = common dso_local global i32 0, align 4
@CAM_TYPE_CIF = common dso_local global i64 0, align 8
@CAM_TYPE_VGA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setexposure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %3, align 8
  %9 = load i32, i32* @MR97310A_EXPOSURE_DEFAULT, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EXPOSURE_IDX, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %126

18:                                               ; preds = %1
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CAM_TYPE_CIF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 9267
  %34 = sdiv i32 %33, 10000
  %35 = add nsw i32 %34, 300
  store i32 %35, i32* %4, align 4
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 4
  %39 = call i32 @sensor_write1(%struct.gspca_dev* %36, i32 3, i32 %38)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 15
  %43 = call i32 @sensor_write1(%struct.gspca_dev* %40, i32 4, i32 %42)
  br label %126

44:                                               ; preds = %24, %18
  %45 = load %struct.sd*, %struct.sd** %3, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.sd*, %struct.sd** %3, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 3
  store i32 %54, i32* %4, align 4
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 8
  %58 = call i32 @sensor_write1(%struct.gspca_dev* %55, i32 3, i32 %57)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, 255
  %62 = call i32 @sensor_write1(%struct.gspca_dev* %59, i32 4, i32 %61)
  br label %125

63:                                               ; preds = %44
  %64 = load %struct.sd*, %struct.sd** %3, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 60, %66
  %68 = add nsw i32 %67, 7999
  %69 = sdiv i32 %68, 8000
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.sd*, %struct.sd** %3, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %63
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %78, 320
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.sd*, %struct.sd** %3, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %6, align 4
  br label %89

84:                                               ; preds = %75, %63
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 2, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88, %80
  %90 = load %struct.sd*, %struct.sd** %3, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CAM_TYPE_VGA, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 4, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %95, %89
  %100 = load %struct.sd*, %struct.sd** %3, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 30660, %102
  %104 = load i32, i32* %6, align 4
  %105 = mul nsw i32 8000, %104
  %106 = sdiv i32 %103, %105
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp sgt i32 %107, 511
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  store i32 511, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %99
  %111 = load i32, i32* %4, align 4
  %112 = sub nsw i32 511, %111
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = and i32 %113, 255
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %4, align 4
  %117 = ashr i32 %116, 8
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %117, i32* %118, align 4
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %121 = call i32 @sensor_write_reg(%struct.gspca_dev* %119, i32 14, i32 0, i32* %120, i32 2)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @sensor_write1(%struct.gspca_dev* %122, i32 2, i32 %123)
  br label %125

125:                                              ; preds = %110, %49
  br label %126

126:                                              ; preds = %17, %125, %29
  ret void
}

declare dso_local i32 @sensor_write1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @sensor_write_reg(%struct.gspca_dev*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
