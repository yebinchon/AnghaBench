; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_bl_set_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_bl_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pcc_acpi = type { i32* }

@EIO = common dso_local global i32 0, align 4
@SINF_AC_MIN_BRIGHT = common dso_local global i64 0, align 8
@SINF_DC_MIN_BRIGHT = common dso_local global i64 0, align 8
@SINF_AC_MAX_BRIGHT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SINF_AC_CUR_BRIGHT = common dso_local global i32 0, align 4
@SINF_DC_CUR_BRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @bl_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_set_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.pcc_acpi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.pcc_acpi* @bl_get_data(%struct.backlight_device* %7)
  store %struct.pcc_acpi* %8, %struct.pcc_acpi** %4, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %14 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %15 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @acpi_pcc_retrieve_biosdata(%struct.pcc_acpi* %13, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %89

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %25 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @SINF_AC_MIN_BRIGHT, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %23, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %33 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @SINF_AC_MIN_BRIGHT, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %31, %22
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %41 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @SINF_DC_MIN_BRIGHT, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %39, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %49 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @SINF_DC_MIN_BRIGHT, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %47, %38
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %57 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @SINF_AC_MIN_BRIGHT, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %66 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @SINF_AC_MAX_BRIGHT, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %64, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63, %54
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %89

75:                                               ; preds = %63
  %76 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %77 = load i32, i32* @SINF_AC_CUR_BRIGHT, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @acpi_pcc_write_sset(%struct.pcc_acpi* %76, i32 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %89

84:                                               ; preds = %75
  %85 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %86 = load i32, i32* @SINF_DC_CUR_BRIGHT, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @acpi_pcc_write_sset(%struct.pcc_acpi* %85, i32 %86, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %84, %82, %72, %19
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.pcc_acpi* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @acpi_pcc_retrieve_biosdata(%struct.pcc_acpi*, i32*) #1

declare dso_local i32 @acpi_pcc_write_sset(%struct.pcc_acpi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
