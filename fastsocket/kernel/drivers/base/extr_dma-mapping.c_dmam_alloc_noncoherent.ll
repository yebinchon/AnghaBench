; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-mapping.c_dmam_alloc_noncoherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-mapping.c_dmam_alloc_noncoherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_devres = type { i64, i32, i8* }

@dmam_noncoherent_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dmam_alloc_noncoherent(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_devres*, align 8
  %11 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @dmam_noncoherent_release, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.dma_devres* @devres_alloc(i32 %12, i32 24, i32 %13)
  store %struct.dma_devres* %14, %struct.dma_devres** %10, align 8
  %15 = load %struct.dma_devres*, %struct.dma_devres** %10, align 8
  %16 = icmp ne %struct.dma_devres* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %44

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @dma_alloc_noncoherent(%struct.device* %19, i64 %20, i32* %21, i32 %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load %struct.dma_devres*, %struct.dma_devres** %10, align 8
  %28 = call i32 @devres_free(%struct.dma_devres* %27)
  store i8* null, i8** %5, align 8
  br label %44

29:                                               ; preds = %18
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.dma_devres*, %struct.dma_devres** %10, align 8
  %32 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dma_devres*, %struct.dma_devres** %10, align 8
  %36 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.dma_devres*, %struct.dma_devres** %10, align 8
  %39 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load %struct.dma_devres*, %struct.dma_devres** %10, align 8
  %42 = call i32 @devres_add(%struct.device* %40, %struct.dma_devres* %41)
  %43 = load i8*, i8** %11, align 8
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %29, %26, %17
  %45 = load i8*, i8** %5, align 8
  ret i8* %45
}

declare dso_local %struct.dma_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_noncoherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @devres_free(%struct.dma_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.dma_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
