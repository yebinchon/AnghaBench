; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_disp.c_nvbios_outp_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_disp.c_nvbios_outp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.nvbios_outp = type { i32, i32*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_outp_parse(%struct.nouveau_bios* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.nvbios_outp* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_bios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.nvbios_outp*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.nvbios_outp* %6, %struct.nvbios_outp** %15, align 8
  %17 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @nvbios_outp_entry(%struct.nouveau_bios* %17, i32 %18, i32* %19, i32* %20, i32* %21, i32* %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %89

26:                                               ; preds = %7
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 10
  br i1 %29, label %30, label %89

30:                                               ; preds = %26
  %31 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %32, 0
  %34 = call i8* @nv_ro16(%struct.nouveau_bios* %31, i32 %33)
  %35 = load %struct.nvbios_outp*, %struct.nvbios_outp** %15, align 8
  %36 = getelementptr inbounds %struct.nvbios_outp, %struct.nvbios_outp* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, 2
  %40 = call i32 @nv_ro32(%struct.nouveau_bios* %37, i32 %39)
  %41 = load %struct.nvbios_outp*, %struct.nvbios_outp** %15, align 8
  %42 = getelementptr inbounds %struct.nvbios_outp, %struct.nvbios_outp* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 32
  br i1 %45, label %46, label %51

46:                                               ; preds = %30
  %47 = load %struct.nvbios_outp*, %struct.nvbios_outp** %15, align 8
  %48 = getelementptr inbounds %struct.nvbios_outp, %struct.nvbios_outp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, 192
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %46, %30
  %52 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 6
  %55 = call i8* @nv_ro16(%struct.nouveau_bios* %52, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.nvbios_outp*, %struct.nvbios_outp** %15, align 8
  %58 = getelementptr inbounds %struct.nvbios_outp, %struct.nvbios_outp* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 8
  %64 = call i8* @nv_ro16(%struct.nouveau_bios* %61, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.nvbios_outp*, %struct.nvbios_outp** %15, align 8
  %67 = getelementptr inbounds %struct.nvbios_outp, %struct.nvbios_outp* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.nvbios_outp*, %struct.nvbios_outp** %15, align 8
  %71 = getelementptr inbounds %struct.nvbios_outp, %struct.nvbios_outp* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 0, i32* %73, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 12
  br i1 %76, label %77, label %87

77:                                               ; preds = %51
  %78 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 10
  %81 = call i8* @nv_ro16(%struct.nouveau_bios* %78, i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.nvbios_outp*, %struct.nvbios_outp** %15, align 8
  %84 = getelementptr inbounds %struct.nvbios_outp, %struct.nvbios_outp* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %77, %51
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %8, align 4
  br label %90

89:                                               ; preds = %26, %7
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %87
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @nvbios_outp_entry(%struct.nouveau_bios*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
