; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_tf_to_fis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_tf_to_fis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_tf_to_fis(%struct.ata_taskfile* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 39, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 15
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 128
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %17, %4
  %23 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %24 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %29 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %34 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %39 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %44 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %49 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %54 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %59 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 9
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %64 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 10
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %69 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 11
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %74 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 12
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %79 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 13
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 14
  store i32 0, i32* %84, align 4
  %85 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %86 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %85, i32 0, i32 12
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 15
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 16
  store i32 0, i32* %91, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 17
  store i32 0, i32* %93, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 18
  store i32 0, i32* %95, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 19
  store i32 0, i32* %97, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
