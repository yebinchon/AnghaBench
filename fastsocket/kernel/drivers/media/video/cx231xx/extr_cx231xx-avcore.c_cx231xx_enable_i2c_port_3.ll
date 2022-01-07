; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_enable_i2c_port_3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_enable_i2c_port_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@VRT_GET_REGISTER = common dso_local global i32 0, align 4
@PWR_CTL_EN = common dso_local global i32 0, align 4
@I2C_DEMOD_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Changing the i2c master port to %d\0A\00", align 1
@VRT_SET_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_enable_i2c_port_3(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  %10 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %11 = load i32, i32* @VRT_GET_REGISTER, align 4
  %12 = load i32, i32* @PWR_CTL_EN, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %14 = call i32 @cx231xx_read_ctrl_reg(%struct.cx231xx* %10, i32 %11, i32 %12, i32* %13, i32 4)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %21 = load i32, i32* %20, align 16
  %22 = load i32, i32* @I2C_DEMOD_EN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %57

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @I2C_DEMOD_EN, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 16
  br label %45

39:                                               ; preds = %31
  %40 = load i32, i32* @I2C_DEMOD_EN, align 4
  %41 = xor i32 %40, -1
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = and i32 %43, %41
  store i32 %44, i32* %42, align 16
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 3, i32 1
  %50 = call i32 @cx231xx_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %52 = load i32, i32* @VRT_SET_REGISTER, align 4
  %53 = load i32, i32* @PWR_CTL_EN, align 4
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %55 = call i32 @cx231xx_write_ctrl_reg(%struct.cx231xx* %51, i32 %52, i32 %53, i32* %54, i32 4)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %45, %30, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cx231xx_read_ctrl_reg(%struct.cx231xx*, i32, i32, i32*, i32) #2

declare dso_local i32 @cx231xx_info(i8*, i32) #2

declare dso_local i32 @cx231xx_write_ctrl_reg(%struct.cx231xx*, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
