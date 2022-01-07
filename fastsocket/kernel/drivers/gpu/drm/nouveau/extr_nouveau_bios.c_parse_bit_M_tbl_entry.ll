; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_M_tbl_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_M_tbl_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32*, i8*, i32 }
%struct.bit_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*, %struct.bit_entry*)* @parse_bit_M_tbl_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bit_M_tbl_entry(%struct.drm_device* %0, %struct.nvbios* %1, %struct.bit_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nvbios*, align 8
  %7 = alloca %struct.bit_entry*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.nvbios* %1, %struct.nvbios** %6, align 8
  store %struct.bit_entry* %2, %struct.bit_entry** %7, align 8
  %8 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %9 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

13:                                               ; preds = %3
  %14 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %15 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %20 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %23 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %30 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %32 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %35 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @ROM16(i32 %40)
  %42 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %43 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %70

44:                                               ; preds = %13
  %45 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %46 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %49 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 0
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %56 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %58 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %61 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @ROM16(i32 %66)
  %68 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %69 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %44, %18
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %12
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i8* @ROM16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
