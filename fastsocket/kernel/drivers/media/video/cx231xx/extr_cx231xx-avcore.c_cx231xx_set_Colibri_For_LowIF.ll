; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_Colibri_For_LowIF.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_Colibri_For_LowIF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Enter cx231xx_set_Colibri_For_LowIF()\0A\00", align 1
@VRT_SET_REGISTER = common dso_local global i32 0, align 4
@PWR_CTL_EN = common dso_local global i32 0, align 4
@AFE_MODE_LOW_IF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"colibri_carrier_offset=%d, standard=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_set_Colibri_For_LowIF(%struct.cx231xx* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i64], align 16
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = bitcast [4 x i64]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  store i64 111, i64* %16, align 16
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  store i64 111, i64* %17, align 8
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  store i64 111, i64* %18, align 16
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  store i64 111, i64* %19, align 8
  %20 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %21 = load i32, i32* @VRT_SET_REGISTER, align 4
  %22 = load i32, i32* @PWR_CTL_EN, align 4
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %24 = call i64 @cx231xx_write_ctrl_reg(%struct.cx231xx* %20, i32 %21, i32 %22, i64* %23, i32 4)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %26 = load i32, i32* @AFE_MODE_LOW_IF, align 4
  %27 = call i64 @cx231xx_afe_set_mode(%struct.cx231xx* %25, i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %32 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @cx231xx_dif_configure_C2HH_for_low_IF(%struct.cx231xx* %31, i32 %34, i32 %35, i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @cx231xx_Get_Colibri_CarrierOffset(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @cx231xx_set_DIF_bandpass(%struct.cx231xx* %44, i32 %47, i64 %48, i32 %49)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cx231xx_info(i8*, ...) #2

declare dso_local i64 @cx231xx_write_ctrl_reg(%struct.cx231xx*, i32, i32, i64*, i32) #2

declare dso_local i64 @cx231xx_afe_set_mode(%struct.cx231xx*, i32) #2

declare dso_local i64 @cx231xx_dif_configure_C2HH_for_low_IF(%struct.cx231xx*, i32, i32, i32) #2

declare dso_local i32 @cx231xx_Get_Colibri_CarrierOffset(i32, i32) #2

declare dso_local i32 @cx231xx_set_DIF_bandpass(%struct.cx231xx*, i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
