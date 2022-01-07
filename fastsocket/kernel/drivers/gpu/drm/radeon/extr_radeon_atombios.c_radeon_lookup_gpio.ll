; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_lookup_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_lookup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_gpio_rec = type { i32, i64, i32, i32 }
%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.atom_context* }
%struct.atom_context = type { i32 }
%struct._ATOM_GPIO_PIN_LUT = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@GPIO_Pin_LUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_gpio_rec*, %struct.radeon_device*, i64)* @radeon_lookup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_lookup_gpio(%struct.radeon_gpio_rec* noalias sret %0, %struct.radeon_device* %1, i64 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.atom_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._ATOM_GPIO_PIN_LUT*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %1, %struct.radeon_device** %4, align 8
  store i64 %2, i64* %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  store %struct.atom_context* %17, %struct.atom_context** %6, align 8
  %18 = load i32, i32* @DATA, align 4
  %19 = load i32, i32* @GPIO_Pin_LUT, align 4
  %20 = call i32 @GetIndexIntoMasterTable(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = call i32 @memset(%struct.radeon_gpio_rec* %0, i32 0, i32 24)
  %22 = getelementptr inbounds %struct.radeon_gpio_rec, %struct.radeon_gpio_rec* %0, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @atom_parse_data_header(%struct.atom_context* %23, i32 %24, i32* %11, i32* null, i32* null, i32* %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %3
  %28 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %29 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct._ATOM_GPIO_PIN_LUT*
  store %struct._ATOM_GPIO_PIN_LUT* %34, %struct._ATOM_GPIO_PIN_LUT** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 4
  %38 = udiv i64 %37, 16
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %74, %27
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load %struct._ATOM_GPIO_PIN_LUT*, %struct._ATOM_GPIO_PIN_LUT** %8, align 8
  %46 = getelementptr inbounds %struct._ATOM_GPIO_PIN_LUT, %struct._ATOM_GPIO_PIN_LUT* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %9, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %44
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.radeon_gpio_rec, %struct.radeon_gpio_rec* %0, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = mul nsw i32 %64, 4
  %66 = getelementptr inbounds %struct.radeon_gpio_rec, %struct.radeon_gpio_rec* %0, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 1, %69
  %71 = getelementptr inbounds %struct.radeon_gpio_rec, %struct.radeon_gpio_rec* %0, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.radeon_gpio_rec, %struct.radeon_gpio_rec* %0, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %77

73:                                               ; preds = %44
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %40

77:                                               ; preds = %56, %40
  br label %78

78:                                               ; preds = %77, %3
  ret void
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.radeon_gpio_rec*, i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.atom_context*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
