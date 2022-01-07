; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_mxm.c_mxm_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_mxm.c_mxm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"BIT 'x' table not present\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"BIT 'x' table %d/%d unknown\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxm_table(%struct.nouveau_bios* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_bios*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bit_entry, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %10 = call i64 @bit_entry(%struct.nouveau_bios* %9, i8 signext 120, %struct.bit_entry* %8)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %14 = call i32 @nv_debug(%struct.nouveau_bios* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %39

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %8, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %15
  %30 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nv_warn(%struct.nouveau_bios* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34)
  store i32 0, i32* %4, align 4
  br label %39

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %8, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %29, %12
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @bit_entry(%struct.nouveau_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nv_debug(%struct.nouveau_bios*, i8*) #1

declare dso_local i32 @nv_warn(%struct.nouveau_bios*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
