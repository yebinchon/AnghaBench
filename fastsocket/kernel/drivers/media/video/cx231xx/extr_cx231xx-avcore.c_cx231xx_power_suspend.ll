; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_power_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_power_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@VRT_GET_REGISTER = common dso_local global i32 0, align 4
@PWR_CTL_EN = common dso_local global i32 0, align 4
@PWR_MODE_MASK = common dso_local global i32 0, align 4
@VRT_SET_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_power_suspend(%struct.cx231xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  %7 = bitcast [4 x i64]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %9 = load i32, i32* @VRT_GET_REGISTER, align 4
  %10 = load i32, i32* @PWR_CTL_EN, align 4
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %12 = call i32 @cx231xx_read_ctrl_reg(%struct.cx231xx* %8, i32 %9, i32 %10, i64* %11, i32 4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %19 = bitcast i64* %18 to i32*
  %20 = load i32, i32* %19, align 16
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @PWR_MODE_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 %26, i64* %27, align 16
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 16
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 %34, i64* %35, align 16
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 24
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  store i64 %38, i64* %39, align 8
  %40 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %41 = load i32, i32* @VRT_SET_REGISTER, align 4
  %42 = load i32, i32* @PWR_CTL_EN, align 4
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %44 = call i32 @cx231xx_write_ctrl_reg(%struct.cx231xx* %40, i32 %41, i32 %42, i64* %43, i32 4)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %17, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cx231xx_read_ctrl_reg(%struct.cx231xx*, i32, i32, i64*, i32) #2

declare dso_local i32 @cx231xx_write_ctrl_reg(%struct.cx231xx*, i32, i32, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
