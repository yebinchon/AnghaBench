; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_setbrightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_setbrightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@__const.setbrightness.i2cOV = private unnamed_addr constant [8 x i32] [i32 160, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@sensor_data = common dso_local global %struct.TYPE_2__* null, align 8
@__const.setbrightness.i2cpbright = private unnamed_addr constant [8 x i32] [i32 176, i32 64, i32 11, i32 0, i32 0, i32 0, i32 0, i32 22], align 16
@__const.setbrightness.i2cpdoit = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 17, i32 1, i32 0, i32 0, i32 0, i32 22], align 16
@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"i2c error brightness\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setbrightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbrightness(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca [8 x i32], align 16
  %6 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %3, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %74 [
    i32 131, label %12
    i32 130, label %12
    i32 129, label %33
    i32 128, label %33
  ]

12:                                               ; preds = %1, %1
  %13 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([8 x i32]* @__const.setbrightness.i2cOV to i8*), i64 32, i1 false)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 %25, i32* %26, align 4
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %29 = call i32 @i2c_w(%struct.gspca_dev* %27, i32* %28)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %12
  br label %75

32:                                               ; preds = %12
  br label %74

33:                                               ; preds = %1, %1
  %34 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([8 x i32]* @__const.setbrightness.i2cpbright to i8*), i64 32, i1 false)
  %35 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %35, i8* align 16 bitcast ([8 x i32]* @__const.setbrightness.i2cpdoit to i8*), i64 32, i1 false)
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 129
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 7, i32* %41, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 19, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %struct.sd*, %struct.sd** %3, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 127
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 1, i32* %49, align 4
  %50 = load %struct.sd*, %struct.sd** %3, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 127, %52
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %53, i32* %54, align 16
  br label %61

55:                                               ; preds = %43
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 127
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %59, i32* %60, align 16
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %64 = call i32 @i2c_w(%struct.gspca_dev* %62, i32* %63)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %75

67:                                               ; preds = %61
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %70 = call i32 @i2c_w(%struct.gspca_dev* %68, i32* %69)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %75

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %1, %73, %32
  br label %78

75:                                               ; preds = %72, %66, %31
  %76 = load i32, i32* @D_ERR, align 4
  %77 = call i32 @PDEBUG(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %74
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #2

declare dso_local i32 @PDEBUG(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
