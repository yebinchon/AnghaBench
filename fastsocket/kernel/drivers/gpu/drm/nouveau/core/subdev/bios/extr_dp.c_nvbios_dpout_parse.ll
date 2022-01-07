; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dp.c_nvbios_dpout_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dp.c_nvbios_dpout_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.nvbios_dpout = type { i8**, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_dpout_parse(%struct.nouveau_bios* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5, %struct.nvbios_dpout* %6) #0 {
  %8 = alloca %struct.nouveau_bios*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.nvbios_dpout*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store %struct.nvbios_dpout* %6, %struct.nvbios_dpout** %14, align 8
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = load i64*, i64** %12, align 8
  %21 = load i64*, i64** %13, align 8
  %22 = call i32 @nvbios_dpout_entry(%struct.nouveau_bios* %16, i64 %17, i64* %18, i64* %19, i64* %20, i64* %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %152

25:                                               ; preds = %7
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %152

29:                                               ; preds = %25
  %30 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %31, 0
  %33 = call i8* @nv_ro16(%struct.nouveau_bios* %30, i32 %32)
  %34 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %35 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 2
  %39 = call i8* @nv_ro16(%struct.nouveau_bios* %36, i32 %38)
  %40 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %41 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %42, align 8
  switch i64 %43, label %150 [
    i64 33, label %44
    i64 48, label %44
    i64 64, label %97
  ]

44:                                               ; preds = %29, %29
  %45 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 5
  %48 = call i8* @nv_ro08(%struct.nouveau_bios* %45, i32 %47)
  %49 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %50 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 6
  %54 = call i8* @nv_ro16(%struct.nouveau_bios* %51, i32 %53)
  %55 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %56 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %54, i8** %58, align 8
  %59 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 8
  %62 = call i8* @nv_ro16(%struct.nouveau_bios* %59, i32 %61)
  %63 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %64 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* %62, i8** %66, align 8
  %67 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 10
  %70 = call i8* @nv_ro16(%struct.nouveau_bios* %67, i32 %69)
  %71 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %72 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 12
  %76 = call i8* @nv_ro16(%struct.nouveau_bios* %73, i32 %75)
  %77 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %78 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 2
  store i8* %76, i8** %80, align 8
  %81 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 14
  %84 = call i8* @nv_ro16(%struct.nouveau_bios* %81, i32 %83)
  %85 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %86 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 3
  store i8* %84, i8** %88, align 8
  %89 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 16
  %92 = call i8* @nv_ro16(%struct.nouveau_bios* %89, i32 %91)
  %93 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %94 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 4
  store i8* %92, i8** %96, align 8
  br label %151

97:                                               ; preds = %29
  %98 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 4
  %101 = call i8* @nv_ro08(%struct.nouveau_bios* %98, i32 %100)
  %102 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %103 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 5
  %107 = call i8* @nv_ro16(%struct.nouveau_bios* %104, i32 %106)
  %108 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %109 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  store i8* %107, i8** %111, align 8
  %112 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 7
  %115 = call i8* @nv_ro16(%struct.nouveau_bios* %112, i32 %114)
  %116 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %117 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  store i8* %115, i8** %119, align 8
  %120 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 9
  %123 = call i8* @nv_ro16(%struct.nouveau_bios* %120, i32 %122)
  %124 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %125 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 11
  %129 = call i8* @nv_ro16(%struct.nouveau_bios* %126, i32 %128)
  %130 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %131 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 2
  store i8* %129, i8** %133, align 8
  %134 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 13
  %137 = call i8* @nv_ro16(%struct.nouveau_bios* %134, i32 %136)
  %138 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %139 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %138, i32 0, i32 0
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 3
  store i8* %137, i8** %141, align 8
  %142 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 15
  %145 = call i8* @nv_ro16(%struct.nouveau_bios* %142, i32 %144)
  %146 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %147 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %146, i32 0, i32 0
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 4
  store i8* %145, i8** %149, align 8
  br label %151

150:                                              ; preds = %29
  store i32 0, i32* %15, align 4
  br label %151

151:                                              ; preds = %150, %97, %44
  br label %152

152:                                              ; preds = %151, %25, %7
  %153 = load i32, i32* %15, align 4
  ret i32 %153
}

declare dso_local i32 @nvbios_dpout_entry(%struct.nouveau_bios*, i64, i64*, i64*, i64*, i64*) #1

declare dso_local i8* @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i8* @nv_ro08(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
