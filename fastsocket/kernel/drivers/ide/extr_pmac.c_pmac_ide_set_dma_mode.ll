; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_pmac.c_pmac_ide_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_pmac.c_pmac_ide_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32* }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@controller_kl_ata4 = common dso_local global i64 0, align 8
@controller_un_ata6 = common dso_local global i64 0, align 8
@controller_k2_ata6 = common dso_local global i64 0, align 8
@controller_sh_ata6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64)* @pmac_ide_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmac_ide_set_dma_mode(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @dev_get_drvdata(i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %11, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %8, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, 2
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @XFER_UDMA_0, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @controller_kl_ata4, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @set_timings_udma_ata4(i32* %53, i64 %54)
  store i32 %55, i32* %7, align 4
  br label %87

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @controller_un_ata6, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @controller_k2_ata6, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62, %56
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @set_timings_udma_ata6(i32* %69, i32* %70, i64 %71)
  store i32 %72, i32* %7, align 4
  br label %86

73:                                               ; preds = %62
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @controller_sh_ata6, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @set_timings_udma_shasta(i32* %80, i32* %81, i64 %82)
  store i32 %83, i32* %7, align 4
  br label %85

84:                                               ; preds = %73
  store i32 -1, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %79
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %52
  br label %97

88:                                               ; preds = %2
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @set_timings_mdma(%struct.TYPE_11__* %89, i64 %92, i32* %93, i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %88, %87
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %110

101:                                              ; preds = %97
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %8, align 8
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = call i32 @pmac_ide_do_update_timings(%struct.TYPE_11__* %108)
  br label %110

110:                                              ; preds = %101, %100
  ret void
}

declare dso_local i64 @dev_get_drvdata(i32) #1

declare dso_local i32 @set_timings_udma_ata4(i32*, i64) #1

declare dso_local i32 @set_timings_udma_ata6(i32*, i32*, i64) #1

declare dso_local i32 @set_timings_udma_shasta(i32*, i32*, i64) #1

declare dso_local i32 @set_timings_mdma(%struct.TYPE_11__*, i64, i32*, i32*, i64) #1

declare dso_local i32 @pmac_ide_do_update_timings(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
