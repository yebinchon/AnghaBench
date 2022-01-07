; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_perf.c_perf_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_perf.c_perf_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.bit_entry = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"unknown offset for perf in BIT P %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bios*, i32*, i32*, i32*, i32*)* @perf_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_table(%struct.nouveau_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.nouveau_bios*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bit_entry, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %14 = call i32 @bit_entry(%struct.nouveau_bios* %13, i8 signext 80, %struct.bit_entry* %11)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %11, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 2
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %11, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 0
  %25 = call i32 @nv_ro16(%struct.nouveau_bios* %21, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 0
  %32 = call i32 @nv_ro08(%struct.nouveau_bios* %29, i32 %31)
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @nv_ro08(%struct.nouveau_bios* %34, i32 %36)
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %28, %20
  br label %45

40:                                               ; preds = %16
  %41 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %42 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nv_error(%struct.nouveau_bios* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %39
  br label %46

46:                                               ; preds = %45, %5
  %47 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %48 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %53 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %54 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 6
  %57 = call i32 @nv_ro08(%struct.nouveau_bios* %52, i32 %56)
  %58 = icmp sge i32 %57, 37
  br i1 %58, label %59, label %80

59:                                               ; preds = %51
  %60 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %61 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %62 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 148
  %65 = call i32 @nv_ro16(%struct.nouveau_bios* %60, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  %69 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 0
  %72 = call i32 @nv_ro08(%struct.nouveau_bios* %69, i32 %71)
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @nv_ro08(%struct.nouveau_bios* %74, i32 %76)
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %68, %59
  br label %80

80:                                               ; preds = %79, %51
  br label %81

81:                                               ; preds = %80, %46
  %82 = load i32, i32* %12, align 4
  ret i32 %82
}

declare dso_local i32 @bit_entry(%struct.nouveau_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_bios*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
