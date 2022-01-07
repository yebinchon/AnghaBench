; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acerhdf.c_acerhdf_check_hardware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acerhdf.c_acerhdf_check_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64*, i64* }

@DMI_SYS_VENDOR = common dso_local global i32 0, align 4
@DMI_BIOS_VERSION = common dso_local global i32 0, align 4
@DMI_PRODUCT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Acer Aspire One Fan driver, v.%s\0A\00", align 1
@DRV_VER = common dso_local global i32 0, align 4
@force_bios = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"forcing BIOS version: %s\0A\00", align 1
@kernelmode = common dso_local global i64 0, align 8
@force_product = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"forcing BIOS product: %s\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"BIOS info: %s %s, product: %s\0A\00", align 1
@bios_tbl = common dso_local global %struct.TYPE_3__* null, align 8
@bios_cfg = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [71 x i8] c"unknown (unsupported) BIOS version %s/%s/%s, please report, aborting!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Fan control off, to enable do:\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"echo -n \22enabled\22 > /sys/class/thermal/thermal_zone0/mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @acerhdf_check_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acerhdf_check_hardware() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @DMI_SYS_VENDOR, align 4
  %8 = call i8* @dmi_get_system_info(i32 %7)
  store i8* %8, i8** %2, align 8
  %9 = load i32, i32* @DMI_BIOS_VERSION, align 4
  %10 = call i8* @dmi_get_system_info(i32 %9)
  store i8* %10, i8** %3, align 8
  %11 = load i32, i32* @DMI_PRODUCT_NAME, align 4
  %12 = call i8* @dmi_get_system_info(i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load i32, i32* @DRV_VER, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** @force_bios, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %0
  %22 = load i8*, i8** @force_bios, align 8
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i64 0, i64* @kernelmode, align 8
  br label %25

25:                                               ; preds = %21, %0
  %26 = load i8*, i8** @force_product, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** @force_product, align 8
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  store i64 0, i64* @kernelmode, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* @verbose, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %2, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %40, i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %39, %34
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %108, %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bios_tbl, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %111

55:                                               ; preds = %45
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bios_tbl, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = load i64, i64* %6, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %55
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bios_tbl, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bios_tbl, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strlen(i8* %78)
  %80 = call i32 @strncmp(i8* %71, i8* %72, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %107, label %82

82:                                               ; preds = %65
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bios_tbl, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 @strcmp(i64* %88, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %82
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bios_tbl, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @strcmp(i64* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %92
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bios_tbl, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  store %struct.TYPE_3__* %106, %struct.TYPE_3__** @bios_cfg, align 8
  br label %111

107:                                              ; preds = %92, %82, %65, %55
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %45

111:                                              ; preds = %102, %45
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bios_cfg, align 8
  %113 = icmp ne %struct.TYPE_3__* %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = load i8*, i8** %2, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = load i8*, i8** %3, align 8
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i8* %115, i8* %116, i8* %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %1, align 4
  br label %128

121:                                              ; preds = %111
  %122 = load i64, i64* @kernelmode, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = call i32 @pr_notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %126 = call i32 @pr_notice(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %121
  store i32 0, i32* %1, align 4
  br label %128

128:                                              ; preds = %127, %114
  %129 = load i32, i32* %1, align 4
  ret i32 %129
}

declare dso_local i8* @dmi_get_system_info(i32) #1

declare dso_local i32 @pr_info(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @strcmp(i64*, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @pr_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
