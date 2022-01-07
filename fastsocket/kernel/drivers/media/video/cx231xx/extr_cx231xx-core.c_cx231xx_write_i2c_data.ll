; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_write_i2c_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_write_i2c_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 (i32*, %struct.cx231xx_i2c_xfer_data*)*, i32* }
%struct.cx231xx_i2c_xfer_data = type { i32, i32, i32, i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_write_i2c_data(%struct.cx231xx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca %struct.cx231xx_i2c_xfer_data, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 16, i1 false)
  %17 = load i32, i32* %11, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* %11, align 4
  %20 = ashr i32 %19, 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %11, align 4
  %23 = ashr i32 %22, 16
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = ashr i32 %25, 24
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 0, i32* %9, align 4
  br label %38

31:                                               ; preds = %6
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 1
  %41 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %15, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %15, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %15, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %15, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %15, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %50 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %15, i32 0, i32 4
  store i32* %49, i32** %50, align 8
  %51 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 0
  %53 = load i32 (i32*, %struct.cx231xx_i2c_xfer_data*)*, i32 (i32*, %struct.cx231xx_i2c_xfer_data*)** %52, align 8
  %54 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %55 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = call i32 %53(i32* %57, %struct.cx231xx_i2c_xfer_data* %15)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
