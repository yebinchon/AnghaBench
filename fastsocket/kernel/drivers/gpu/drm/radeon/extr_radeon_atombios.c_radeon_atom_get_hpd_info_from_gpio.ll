; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_hpd_info_from_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_hpd_info_from_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_hpd = type { i8*, %struct.radeon_gpio_rec }
%struct.radeon_gpio_rec = type { i64, i32 }
%struct.radeon_device = type { i32 }

@SI_DC_GPIO_HPD_A = common dso_local global i64 0, align 8
@EVERGREEN_DC_GPIO_HPD_A = common dso_local global i64 0, align 8
@AVIVO_DC_GPIO_HPD_A = common dso_local global i64 0, align 8
@RADEON_HPD_1 = common dso_local global i8* null, align 8
@RADEON_HPD_2 = common dso_local global i8* null, align 8
@RADEON_HPD_3 = common dso_local global i8* null, align 8
@RADEON_HPD_4 = common dso_local global i8* null, align 8
@RADEON_HPD_5 = common dso_local global i8* null, align 8
@RADEON_HPD_6 = common dso_local global i8* null, align 8
@RADEON_HPD_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_hpd*, %struct.radeon_device*, %struct.radeon_gpio_rec*)* @radeon_atom_get_hpd_info_from_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_get_hpd_info_from_gpio(%struct.radeon_hpd* noalias sret %0, %struct.radeon_device* %1, %struct.radeon_gpio_rec* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_gpio_rec*, align 8
  %6 = alloca i64, align 8
  store %struct.radeon_device* %1, %struct.radeon_device** %4, align 8
  store %struct.radeon_gpio_rec* %2, %struct.radeon_gpio_rec** %5, align 8
  %7 = call i32 @memset(%struct.radeon_hpd* %0, i32 0, i32 24)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @SI_DC_GPIO_HPD_A, align 8
  store i64 %12, i64* %6, align 8
  br label %22

13:                                               ; preds = %3
  %14 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %15 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i64, i64* @EVERGREEN_DC_GPIO_HPD_A, align 8
  store i64 %18, i64* %6, align 8
  br label %21

19:                                               ; preds = %13
  %20 = load i64, i64* @AVIVO_DC_GPIO_HPD_A, align 8
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %11
  %23 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %0, i32 0, i32 1
  %24 = load %struct.radeon_gpio_rec*, %struct.radeon_gpio_rec** %5, align 8
  %25 = bitcast %struct.radeon_gpio_rec* %23 to i8*
  %26 = bitcast %struct.radeon_gpio_rec* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = load %struct.radeon_gpio_rec*, %struct.radeon_gpio_rec** %5, align 8
  %28 = getelementptr inbounds %struct.radeon_gpio_rec, %struct.radeon_gpio_rec* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %22
  %33 = load %struct.radeon_gpio_rec*, %struct.radeon_gpio_rec** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_gpio_rec, %struct.radeon_gpio_rec* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %54 [
    i32 1, label %36
    i32 256, label %39
    i32 65536, label %42
    i32 16777216, label %45
    i32 67108864, label %48
    i32 268435456, label %51
  ]

36:                                               ; preds = %32
  %37 = load i8*, i8** @RADEON_HPD_1, align 8
  %38 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %0, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  br label %57

39:                                               ; preds = %32
  %40 = load i8*, i8** @RADEON_HPD_2, align 8
  %41 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %0, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  br label %57

42:                                               ; preds = %32
  %43 = load i8*, i8** @RADEON_HPD_3, align 8
  %44 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %0, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  br label %57

45:                                               ; preds = %32
  %46 = load i8*, i8** @RADEON_HPD_4, align 8
  %47 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %0, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  br label %57

48:                                               ; preds = %32
  %49 = load i8*, i8** @RADEON_HPD_5, align 8
  %50 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %0, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  br label %57

51:                                               ; preds = %32
  %52 = load i8*, i8** @RADEON_HPD_6, align 8
  %53 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %0, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  br label %57

54:                                               ; preds = %32
  %55 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %56 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %0, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %54, %51, %48, %45, %42, %39, %36
  br label %61

58:                                               ; preds = %22
  %59 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %60 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %0, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %58, %57
  ret void
}

declare dso_local i32 @memset(%struct.radeon_hpd*, i32, i32) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
