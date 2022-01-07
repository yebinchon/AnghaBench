; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-dma.c_ide_dma_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-dma.c_ide_dma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.ide_dma_ops* }
%struct.ide_dma_ops = type { i64 (%struct.TYPE_10__*, %struct.ide_cmd*)*, i64 (%struct.TYPE_10__*, %struct.ide_cmd.0*)* }
%struct.ide_cmd = type opaque
%struct.ide_cmd.0 = type opaque
%struct.ide_cmd.1 = type { i32 }

@IDE_DFLAG_USING_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_dma_prepare(%struct.TYPE_10__* %0, %struct.ide_cmd.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.ide_cmd.1*, align 8
  %6 = alloca %struct.ide_dma_ops*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.ide_cmd.1* %1, %struct.ide_cmd.1** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.ide_dma_ops*, %struct.ide_dma_ops** %10, align 8
  store %struct.ide_dma_ops* %11, %struct.ide_dma_ops** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IDE_DFLAG_USING_DMA, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %2
  %19 = load %struct.ide_dma_ops*, %struct.ide_dma_ops** %6, align 8
  %20 = getelementptr inbounds %struct.ide_dma_ops, %struct.ide_dma_ops* %19, i32 0, i32 1
  %21 = load i64 (%struct.TYPE_10__*, %struct.ide_cmd.0*)*, i64 (%struct.TYPE_10__*, %struct.ide_cmd.0*)** %20, align 8
  %22 = icmp ne i64 (%struct.TYPE_10__*, %struct.ide_cmd.0*)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.ide_dma_ops*, %struct.ide_dma_ops** %6, align 8
  %25 = getelementptr inbounds %struct.ide_dma_ops, %struct.ide_dma_ops* %24, i32 0, i32 1
  %26 = load i64 (%struct.TYPE_10__*, %struct.ide_cmd.0*)*, i64 (%struct.TYPE_10__*, %struct.ide_cmd.0*)** %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = load %struct.ide_cmd.1*, %struct.ide_cmd.1** %5, align 8
  %29 = bitcast %struct.ide_cmd.1* %28 to %struct.ide_cmd.0*
  %30 = call i64 %26(%struct.TYPE_10__* %27, %struct.ide_cmd.0* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23, %2
  br label %63

33:                                               ; preds = %23, %18
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = load %struct.ide_cmd.1*, %struct.ide_cmd.1** %5, align 8
  %36 = call i32 @ide_map_sg(%struct.TYPE_10__* %34, %struct.ide_cmd.1* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = load %struct.ide_cmd.1*, %struct.ide_cmd.1** %5, align 8
  %39 = call i64 @ide_dma_map_sg(%struct.TYPE_10__* %37, %struct.ide_cmd.1* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %59

42:                                               ; preds = %33
  %43 = load %struct.ide_dma_ops*, %struct.ide_dma_ops** %6, align 8
  %44 = getelementptr inbounds %struct.ide_dma_ops, %struct.ide_dma_ops* %43, i32 0, i32 0
  %45 = load i64 (%struct.TYPE_10__*, %struct.ide_cmd*)*, i64 (%struct.TYPE_10__*, %struct.ide_cmd*)** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = load %struct.ide_cmd.1*, %struct.ide_cmd.1** %5, align 8
  %48 = bitcast %struct.ide_cmd.1* %47 to %struct.ide_cmd*
  %49 = call i64 %45(%struct.TYPE_10__* %46, %struct.ide_cmd* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %64

55:                                               ; preds = %51
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = load %struct.ide_cmd.1*, %struct.ide_cmd.1** %5, align 8
  %58 = call i32 @ide_dma_unmap_sg(%struct.TYPE_10__* %56, %struct.ide_cmd.1* %57)
  br label %59

59:                                               ; preds = %55, %41
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = load %struct.ide_cmd.1*, %struct.ide_cmd.1** %5, align 8
  %62 = call i32 @ide_map_sg(%struct.TYPE_10__* %60, %struct.ide_cmd.1* %61)
  br label %63

63:                                               ; preds = %59, %32
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ide_map_sg(%struct.TYPE_10__*, %struct.ide_cmd.1*) #1

declare dso_local i64 @ide_dma_map_sg(%struct.TYPE_10__*, %struct.ide_cmd.1*) #1

declare dso_local i32 @ide_dma_unmap_sg(%struct.TYPE_10__*, %struct.ide_cmd.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
