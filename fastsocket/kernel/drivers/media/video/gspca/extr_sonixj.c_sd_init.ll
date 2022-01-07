; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i64, i32 }
%struct.sd = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__const.sd_init.regGpio = private unnamed_addr constant [2 x i32] [i32 41, i32 116], align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Sonix chip id: %02x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SENSOR_OM6802 = common dso_local global i32 0, align 4
@SHARPNESS = common dso_local global i64 0, align 8
@sn_tb = common dso_local global i32** null, align 8
@ctrl_dis = common dso_local global i32* null, align 8
@F_ILLUM = common dso_local global i32 0, align 4
@ILLUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %4, align 8
  %10 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x i32]* @__const.sd_init.regGpio to i8*), i64 8, i1 false)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = call i32 @reg_w1(%struct.gspca_dev* %11, i32 241, i32 1)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = call i32 @reg_r(%struct.gspca_dev* %13, i32 0, i32 1)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = call i32 @reg_w1(%struct.gspca_dev* %15, i32 241, i32 0)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = call i32 @reg_r(%struct.gspca_dev* %17, i32 0, i32 1)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %146

33:                                               ; preds = %1
  %34 = load i32, i32* @D_PROBE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @PDEBUG(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.sd*, %struct.sd** %4, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %47 [
    i32 135, label %40
    i32 134, label %40
  ]

40:                                               ; preds = %33, %33
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 17
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %146

46:                                               ; preds = %40
  br label %54

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 18
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %146

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %46
  %55 = load %struct.sd*, %struct.sd** %4, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %70 [
    i32 131, label %58
    i32 130, label %61
    i32 129, label %64
    i32 128, label %67
  ]

58:                                               ; preds = %54
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %60 = call i32 @mi0360_probe(%struct.gspca_dev* %59)
  br label %70

61:                                               ; preds = %54
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = call i32 @ov7630_probe(%struct.gspca_dev* %62)
  br label %70

64:                                               ; preds = %54
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %66 = call i32 @ov7648_probe(%struct.gspca_dev* %65)
  br label %70

67:                                               ; preds = %54
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %69 = call i32 @po2030n_probe(%struct.gspca_dev* %68)
  br label %70

70:                                               ; preds = %54, %67, %64, %61, %58
  %71 = load %struct.sd*, %struct.sd** %4, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %91 [
    i32 135, label %74
    i32 134, label %79
    i32 133, label %83
    i32 132, label %86
  ]

74:                                               ; preds = %70
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @reg_w1(%struct.gspca_dev* %75, i32 2, i32 %77)
  br label %91

79:                                               ; preds = %70
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %82 = call i32 @reg_w(%struct.gspca_dev* %80, i32 1, i32* %81, i32 2)
  br label %91

83:                                               ; preds = %70
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %85 = call i32 @reg_w1(%struct.gspca_dev* %84, i32 2, i32 98)
  br label %91

86:                                               ; preds = %70
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 112, i32* %87, align 4
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %90 = call i32 @reg_w(%struct.gspca_dev* %88, i32 1, i32* %89, i32 2)
  br label %91

91:                                               ; preds = %70, %86, %83, %79, %74
  %92 = load %struct.sd*, %struct.sd** %4, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SENSOR_OM6802, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.sd*, %struct.sd** %4, align 8
  %99 = getelementptr inbounds %struct.sd, %struct.sd* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* @SHARPNESS, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 16, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %91
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %106 = call i32 @reg_w1(%struct.gspca_dev* %105, i32 241, i32 0)
  %107 = load i32**, i32*** @sn_tb, align 8
  %108 = load %struct.sd*, %struct.sd** %4, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %107, i64 %111
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %5, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 9
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sd*, %struct.sd** %4, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i32*, i32** @ctrl_dis, align 8
  %120 = load %struct.sd*, %struct.sd** %4, align 8
  %121 = getelementptr inbounds %struct.sd, %struct.sd* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %127 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.sd*, %struct.sd** %4, align 8
  %129 = getelementptr inbounds %struct.sd, %struct.sd* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @F_ILLUM, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %104
  %135 = load i32, i32* @ILLUM, align 4
  %136 = shl i32 1, %135
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %138 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %134, %104
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %143 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %141, %50, %43, %28
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #2

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #2

declare dso_local i32 @PDEBUG(i32, i8*, i32) #2

declare dso_local i32 @mi0360_probe(%struct.gspca_dev*) #2

declare dso_local i32 @ov7630_probe(%struct.gspca_dev*) #2

declare dso_local i32 @ov7648_probe(%struct.gspca_dev*) #2

declare dso_local i32 @po2030n_probe(%struct.gspca_dev*) #2

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
