; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_read_i2c_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_read_i2c_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 (i32*, %struct.cx231xx_i2c_xfer_data*)*, i32* }
%struct.cx231xx_i2c_xfer_data = type { i32, i32, i32, i32, i32*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_read_i2c_data(%struct.cx231xx* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cx231xx_i2c_xfer_data, align 8
  %15 = alloca [4 x i32], align 16
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 16, i1 false)
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 0, i32* %9, align 4
  br label %27

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 1
  %30 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %14, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @I2C_M_RD, align 4
  %32 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %14, i32 0, i32 5
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %14, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %14, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %14, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %40 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %14, i32 0, i32 4
  store i32* %39, i32** %40, align 8
  %41 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 0
  %43 = load i32 (i32*, %struct.cx231xx_i2c_xfer_data*)*, i32 (i32*, %struct.cx231xx_i2c_xfer_data*)** %42, align 8
  %44 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i32 %43(i32* %47, %struct.cx231xx_i2c_xfer_data* %14)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %27
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  br label %74

58:                                               ; preds = %51
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %60, %63
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 16
  %68 = or i32 %64, %67
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 24
  %72 = or i32 %68, %71
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %58, %54
  br label %75

75:                                               ; preds = %74, %27
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
