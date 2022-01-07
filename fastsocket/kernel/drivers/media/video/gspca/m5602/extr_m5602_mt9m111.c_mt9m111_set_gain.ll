; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_set_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32* }

@GAIN_IDX = common dso_local global i64 0, align 8
@MT9M111_PAGE_MAP = common dso_local global i32 0, align 4
@INITIAL_MAX_GAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tmp=%d, data[1]=%d, data[0]=%d\00", align 1
@MT9M111_SC_GLOBAL_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @mt9m111_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_gain(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.sd*, align 8
  %10 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %9, align 8
  %14 = load %struct.sd*, %struct.sd** %9, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load i64, i64* @GAIN_IDX, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load %struct.sd*, %struct.sd** %9, align 8
  %22 = load i32, i32* @MT9M111_PAGE_MAP, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %24 = call i32 @m5602_write_sensor(%struct.sd* %21, i32 %22, i32* %23, i32 2)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %115

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %32 = mul nsw i32 %31, 2
  %33 = mul nsw i32 %32, 2
  %34 = mul nsw i32 %33, 2
  %35 = icmp sge i32 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %115

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %42 = mul nsw i32 %41, 2
  %43 = mul nsw i32 %42, 2
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %48 = sub nsw i32 %47, 1
  %49 = mul nsw i32 %48, 2
  %50 = mul nsw i32 %49, 2
  %51 = mul nsw i32 %50, 2
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = shl i32 %54, 9
  %56 = or i32 1024, %55
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %56, %58
  %60 = load i32, i32* %5, align 4
  %61 = sdiv i32 %60, 8
  %62 = or i32 %59, %61
  store i32 %62, i32* %7, align 4
  br label %95

63:                                               ; preds = %45, %39
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %66 = mul nsw i32 %65, 2
  %67 = icmp sge i32 %64, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %71 = mul nsw i32 %70, 2
  %72 = mul nsw i32 %71, 2
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = sdiv i32 %75, 4
  %77 = or i32 768, %76
  store i32 %77, i32* %7, align 4
  br label %94

78:                                               ; preds = %68, %63
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %85 = mul nsw i32 %84, 2
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4
  %89 = sdiv i32 %88, 2
  %90 = or i32 256, %89
  store i32 %90, i32* %7, align 4
  br label %93

91:                                               ; preds = %82, %78
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93, %74
  br label %95

95:                                               ; preds = %94, %53
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 255
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 65280
  %101 = ashr i32 %100, 8
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @D_V4L2, align 4
  %104 = load i32, i32* %7, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PDEBUG(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %106, i32 %108)
  %110 = load %struct.sd*, %struct.sd** %9, align 8
  %111 = load i32, i32* @MT9M111_SC_GLOBAL_GAIN, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %113 = call i32 @m5602_write_sensor(%struct.sd* %110, i32 %111, i32* %112, i32 2)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %95, %36, %27
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #2

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
