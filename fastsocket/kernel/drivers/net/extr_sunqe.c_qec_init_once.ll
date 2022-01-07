; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qec_init_once.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qec_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunqec = type { i32, i64 }
%struct.of_device = type { i32* }

@DMA_BURST64 = common dso_local global i32 0, align 4
@GLOB_CTRL_B64 = common dso_local global i32 0, align 4
@GLOB_CTRL = common dso_local global i64 0, align 8
@DMA_BURST32 = common dso_local global i32 0, align 4
@GLOB_CTRL_B32 = common dso_local global i32 0, align 4
@GLOB_CTRL_B16 = common dso_local global i32 0, align 4
@GLOB_PSIZE_2048 = common dso_local global i32 0, align 4
@GLOB_PSIZE = common dso_local global i64 0, align 8
@GLOB_MSIZE = common dso_local global i64 0, align 8
@GLOB_TSIZE = common dso_local global i64 0, align 8
@GLOB_RSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunqec*, %struct.of_device*)* @qec_init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qec_init_once(%struct.sunqec* %0, %struct.of_device* %1) #0 {
  %3 = alloca %struct.sunqec*, align 8
  %4 = alloca %struct.of_device*, align 8
  %5 = alloca i32, align 4
  store %struct.sunqec* %0, %struct.sunqec** %3, align 8
  store %struct.of_device* %1, %struct.of_device** %4, align 8
  %6 = load %struct.sunqec*, %struct.sunqec** %3, align 8
  %7 = getelementptr inbounds %struct.sunqec, %struct.sunqec* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = call i64 (...) @sbus_can_burst64()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DMA_BURST64, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* @GLOB_CTRL_B64, align 4
  %18 = load %struct.sunqec*, %struct.sunqec** %3, align 8
  %19 = getelementptr inbounds %struct.sunqec, %struct.sunqec* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GLOB_CTRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @sbus_writel(i32 %17, i64 %22)
  br label %46

24:                                               ; preds = %11, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @DMA_BURST32, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* @GLOB_CTRL_B32, align 4
  %31 = load %struct.sunqec*, %struct.sunqec** %3, align 8
  %32 = getelementptr inbounds %struct.sunqec, %struct.sunqec* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GLOB_CTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @sbus_writel(i32 %30, i64 %35)
  br label %45

37:                                               ; preds = %24
  %38 = load i32, i32* @GLOB_CTRL_B16, align 4
  %39 = load %struct.sunqec*, %struct.sunqec** %3, align 8
  %40 = getelementptr inbounds %struct.sunqec, %struct.sunqec* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GLOB_CTRL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @sbus_writel(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %37, %29
  br label %46

46:                                               ; preds = %45, %16
  %47 = load i32, i32* @GLOB_PSIZE_2048, align 4
  %48 = load %struct.sunqec*, %struct.sunqec** %3, align 8
  %49 = getelementptr inbounds %struct.sunqec, %struct.sunqec* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GLOB_PSIZE, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @sbus_writel(i32 %47, i64 %52)
  %54 = load %struct.of_device*, %struct.of_device** %4, align 8
  %55 = getelementptr inbounds %struct.of_device, %struct.of_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = call i32 @resource_size(i32* %57)
  %59 = ashr i32 %58, 2
  %60 = load %struct.sunqec*, %struct.sunqec** %3, align 8
  %61 = getelementptr inbounds %struct.sunqec, %struct.sunqec* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GLOB_MSIZE, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @sbus_writel(i32 %59, i64 %64)
  %66 = load %struct.of_device*, %struct.of_device** %4, align 8
  %67 = getelementptr inbounds %struct.of_device, %struct.of_device* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = call i32 @resource_size(i32* %69)
  %71 = ashr i32 %70, 2
  %72 = ashr i32 %71, 1
  %73 = load %struct.sunqec*, %struct.sunqec** %3, align 8
  %74 = getelementptr inbounds %struct.sunqec, %struct.sunqec* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @GLOB_TSIZE, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @sbus_writel(i32 %72, i64 %77)
  %79 = load %struct.of_device*, %struct.of_device** %4, align 8
  %80 = getelementptr inbounds %struct.of_device, %struct.of_device* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = call i32 @resource_size(i32* %82)
  %84 = ashr i32 %83, 2
  %85 = ashr i32 %84, 1
  %86 = load %struct.sunqec*, %struct.sunqec** %3, align 8
  %87 = getelementptr inbounds %struct.sunqec, %struct.sunqec* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @GLOB_RSIZE, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @sbus_writel(i32 %85, i64 %90)
  ret void
}

declare dso_local i64 @sbus_can_burst64(...) #1

declare dso_local i32 @sbus_writel(i32, i64) #1

declare dso_local i32 @resource_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
