; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_free_dma_iso_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_free_dma_iso_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_iso_ctx = type { i32, i32, %struct.dma_iso_ctx*, %struct.dma_iso_ctx*, %struct.dma_iso_ctx*, %struct.dma_iso_ctx*, %struct.dma_iso_ctx*, %struct.dma_iso_ctx*, %struct.dma_iso_ctx*, %struct.dma_iso_ctx*, i32, %struct.TYPE_9__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Freeing dma_iso_ctx %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_iso_ctx*)* @free_dma_iso_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_dma_iso_ctx(%struct.dma_iso_ctx* %0) #0 {
  %2 = alloca %struct.dma_iso_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.dma_iso_ctx* %0, %struct.dma_iso_ctx** %2, align 8
  %4 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %4, i32 0, i32 12
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DBGMSG(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %15, i32 0, i32 12
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ohci1394_stop_context(%struct.TYPE_8__* %17, i32 %20, i32* null)
  %22 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %29, i32 0, i32 12
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %32, i32 0, i32 11
  %34 = call i32 @ohci1394_unregister_iso_tasklet(%struct.TYPE_8__* %31, %struct.TYPE_9__* %33)
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %36, i32 0, i32 10
  %38 = call i32 @dma_region_free(i32* %37)
  %39 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %39, i32 0, i32 9
  %41 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %40, align 8
  %42 = icmp ne %struct.dma_iso_ctx* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %51, i32 0, i32 9
  %53 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %53, i64 %55
  %57 = call i32 @dma_prog_region_free(%struct.dma_iso_ctx* %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %44

61:                                               ; preds = %44
  %62 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %62, i32 0, i32 9
  %64 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %63, align 8
  %65 = call i32 @kfree(%struct.dma_iso_ctx* %64)
  br label %66

66:                                               ; preds = %61, %35
  %67 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %67, i32 0, i32 8
  %69 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %68, align 8
  %70 = call i32 @kfree(%struct.dma_iso_ctx* %69)
  %71 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %71, i32 0, i32 7
  %73 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %72, align 8
  %74 = call i32 @kfree(%struct.dma_iso_ctx* %73)
  %75 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %76 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %75, i32 0, i32 6
  %77 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %76, align 8
  %78 = call i32 @kfree(%struct.dma_iso_ctx* %77)
  %79 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %80 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %79, i32 0, i32 5
  %81 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %80, align 8
  %82 = call i32 @kfree(%struct.dma_iso_ctx* %81)
  %83 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %84 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %83, i32 0, i32 4
  %85 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %84, align 8
  %86 = call i32 @kfree(%struct.dma_iso_ctx* %85)
  %87 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %88 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %87, i32 0, i32 3
  %89 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %88, align 8
  %90 = call i32 @kfree(%struct.dma_iso_ctx* %89)
  %91 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %92 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %91, i32 0, i32 2
  %93 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %92, align 8
  %94 = call i32 @kfree(%struct.dma_iso_ctx* %93)
  %95 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %96 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %95, i32 0, i32 1
  %97 = call i32 @list_del(i32* %96)
  %98 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %2, align 8
  %99 = call i32 @kfree(%struct.dma_iso_ctx* %98)
  ret i32 0
}

declare dso_local i32 @DBGMSG(i32, i8*, i32) #1

declare dso_local i32 @ohci1394_stop_context(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @ohci1394_unregister_iso_tasklet(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @dma_region_free(i32*) #1

declare dso_local i32 @dma_prog_region_free(%struct.dma_iso_ctx*) #1

declare dso_local i32 @kfree(%struct.dma_iso_ctx*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
