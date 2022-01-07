; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_putdma_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_putdma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbcs_soft = type { %struct.putdma, i8* }
%struct.putdma = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.cm_control = type { i32 }

@MBCS_CACHELINE_SIZE = common dso_local global i32 0, align 4
@MB2 = common dso_local global i64 0, align 8
@MB4 = common dso_local global i64 0, align 8
@MB6 = common dso_local global i64 0, align 8
@MBCS_CM_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbcs_soft*)* @mbcs_putdma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbcs_putdma_start(%struct.mbcs_soft* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbcs_soft*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.putdma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.cm_control, align 4
  store %struct.mbcs_soft* %0, %struct.mbcs_soft** %3, align 8
  %8 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %9 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %12 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %11, i32 0, i32 0
  store %struct.putdma* %12, %struct.putdma** %5, align 8
  %13 = load %struct.putdma*, %struct.putdma** %5, align 8
  %14 = getelementptr inbounds %struct.putdma, %struct.putdma* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %93

18:                                               ; preds = %1
  %19 = load %struct.putdma*, %struct.putdma** %5, align 8
  %20 = getelementptr inbounds %struct.putdma, %struct.putdma* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MBCS_CACHELINE_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = add nsw i32 %21, %23
  %25 = load i32, i32* @MBCS_CACHELINE_SIZE, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.putdma*, %struct.putdma** %5, align 8
  %29 = getelementptr inbounds %struct.putdma, %struct.putdma* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tiocx_dma_addr(i32 %30)
  %32 = load %struct.putdma*, %struct.putdma** %5, align 8
  %33 = getelementptr inbounds %struct.putdma, %struct.putdma* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.putdma*, %struct.putdma** %5, align 8
  %36 = getelementptr inbounds %struct.putdma, %struct.putdma* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MB2, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  br label %58

41:                                               ; preds = %18
  %42 = load %struct.putdma*, %struct.putdma** %5, align 8
  %43 = getelementptr inbounds %struct.putdma, %struct.putdma* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MB4, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %56

48:                                               ; preds = %41
  %49 = load %struct.putdma*, %struct.putdma** %5, align 8
  %50 = getelementptr inbounds %struct.putdma, %struct.putdma* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MB6, align 8
  %53 = icmp slt i64 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 2, i32 3
  br label %56

56:                                               ; preds = %48, %47
  %57 = phi i32 [ 1, %47 ], [ %55, %48 ]
  br label %58

58:                                               ; preds = %56, %40
  %59 = phi i32 [ 0, %40 ], [ %57, %56 ]
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.putdma*, %struct.putdma** %5, align 8
  %62 = getelementptr inbounds %struct.putdma, %struct.putdma* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.putdma*, %struct.putdma** %5, align 8
  %65 = getelementptr inbounds %struct.putdma, %struct.putdma* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.putdma*, %struct.putdma** %5, align 8
  %68 = getelementptr inbounds %struct.putdma, %struct.putdma* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.putdma*, %struct.putdma** %5, align 8
  %71 = getelementptr inbounds %struct.putdma, %struct.putdma* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.putdma*, %struct.putdma** %5, align 8
  %74 = getelementptr inbounds %struct.putdma, %struct.putdma* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.putdma*, %struct.putdma** %5, align 8
  %77 = getelementptr inbounds %struct.putdma, %struct.putdma* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.putdma*, %struct.putdma** %5, align 8
  %80 = getelementptr inbounds %struct.putdma, %struct.putdma* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @mbcs_putdma_set(i8* %27, i32 %31, i64 %34, i32 %59, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81)
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %85 = call i32 @MBCS_MMR_GET(i8* %83, i32 %84)
  %86 = bitcast %union.cm_control* %7 to i32*
  store i32 %85, i32* %86, align 4
  %87 = bitcast %union.cm_control* %7 to i32*
  store i32 1, i32* %87, align 4
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %90 = bitcast %union.cm_control* %7 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @MBCS_MMR_SET(i8* %88, i32 %89, i32 %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %58, %17
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @mbcs_putdma_set(i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tiocx_dma_addr(i32) #1

declare dso_local i32 @MBCS_MMR_GET(i8*, i32) #1

declare dso_local i32 @MBCS_MMR_SET(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
