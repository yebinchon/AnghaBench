; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_therm.c_therm_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_therm.c_therm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.bit_entry = type { i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"unknown offset for thermal in BIT P %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bios*, i32*, i32*, i32*, i32*)* @therm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @therm_table(%struct.nouveau_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bit_entry, align 8
  %13 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %15 = call i32 @bit_entry(%struct.nouveau_bios* %14, i8 signext 80, %struct.bit_entry* %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %23 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 12
  %26 = call i32 @nv_ro16(%struct.nouveau_bios* %22, i64 %25)
  store i32 %26, i32* %13, align 4
  br label %43

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %33 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 16
  %36 = call i32 @nv_ro16(%struct.nouveau_bios* %32, i64 %35)
  store i32 %36, i32* %13, align 4
  br label %42

37:                                               ; preds = %27
  %38 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %39 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @nv_error(%struct.nouveau_bios* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  br label %43

43:                                               ; preds = %42, %21
  br label %44

44:                                               ; preds = %43, %5
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %75

48:                                               ; preds = %44
  %49 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 0
  %52 = call i32 @nv_ro08(%struct.nouveau_bios* %49, i32 %51)
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @nv_ro08(%struct.nouveau_bios* %54, i32 %56)
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 2
  %62 = call i32 @nv_ro08(%struct.nouveau_bios* %59, i32 %61)
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 3
  %67 = call i32 @nv_ro08(%struct.nouveau_bios* %64, i32 %66)
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @nv_ro08(%struct.nouveau_bios* %70, i32 %72)
  %74 = add nsw i32 %69, %73
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %48, %47
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @bit_entry(%struct.nouveau_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_error(%struct.nouveau_bios*, i8*, i32) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
