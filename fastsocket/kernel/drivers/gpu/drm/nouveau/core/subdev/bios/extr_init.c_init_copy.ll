; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"COPY\090x%04x[0x%02x] &= 0x%02x |= ((R[0x%06x] %s 0x%02x) & 0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_copy(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %11 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 1
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  store %struct.nouveau_bios* %13, %struct.nouveau_bios** %3, align 8
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @nv_ro32(%struct.nouveau_bios* %14, i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %21 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %22 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 5
  %25 = call i32 @nv_ro08(%struct.nouveau_bios* %20, i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %27 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %28 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 6
  %31 = call i32 @nv_ro08(%struct.nouveau_bios* %26, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 7
  %37 = call i32 @nv_ro16(%struct.nouveau_bios* %32, i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %39 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %40 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 9
  %43 = call i32 @nv_ro08(%struct.nouveau_bios* %38, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %45 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %46 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 10
  %49 = call i32 @nv_ro08(%struct.nouveau_bios* %44, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 128
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 128
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %1
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 256, %63
  br label %67

65:                                               ; preds = %1
  %66 = load i32, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %64, %62 ], [ %66, %65 ]
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @trace(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %53, i8* %58, i32 %68, i32 %69)
  %71 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %72 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 11
  store i64 %74, i64* %72, align 8
  %75 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @init_rdvgai(%struct.nvbios_init* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %10, align 4
  %81 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @init_rd32(%struct.nvbios_init* %81, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @init_shift(i32 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @init_wrvgai(%struct.nvbios_init* %90, i32 %91, i32 %92, i32 %93)
  ret void
}

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_shift(i32, i32) #1

declare dso_local i32 @init_rd32(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_wrvgai(%struct.nvbios_init*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
