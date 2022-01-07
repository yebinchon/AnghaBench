; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_pdc202xx_old.c_pdc202xx_dma_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_pdc202xx_old.c_pdc202xx_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, %struct.request* }
%struct.request = type { i32 }

@XFER_UDMA_2 = common dso_local global i64 0, align 8
@ide_disk = common dso_local global i64 0, align 8
@IDE_DFLAG_LBA48 = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @pdc202xx_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc202xx_dma_start(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XFER_UDMA_2, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @pdc_old_enable_66MHz_clock(%struct.TYPE_6__* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ide_disk, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IDE_DFLAG_LBA48, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %25, %19
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %3, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.request*, %struct.request** %37, align 8
  store %struct.request* %38, %struct.request** %4, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 16
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 36, i32 32
  %51 = sext i32 %50 to i64
  %52 = add i64 %44, %51
  store i64 %52, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 17
  %55 = call i32 @inb(i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 8, i32 2
  %63 = or i32 %56, %62
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 17
  %66 = call i32 @outb(i32 %63, i64 %65)
  %67 = load %struct.request*, %struct.request** %4, align 8
  %68 = call i32 @blk_rq_sectors(%struct.request* %67)
  %69 = shl i32 %68, 8
  store i32 %69, i32* %7, align 4
  %70 = load %struct.request*, %struct.request** %4, align 8
  %71 = call i64 @rq_data_dir(%struct.request* %70)
  %72 = load i64, i64* @READ, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %32
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, 83886080
  br label %80

77:                                               ; preds = %32
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, 100663296
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi i32 [ %76, %74 ], [ %79, %77 ]
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @outl(i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %80, %25
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %87 = call i32 @ide_dma_start(%struct.TYPE_7__* %86)
  ret void
}

declare dso_local i32 @pdc_old_enable_66MHz_clock(%struct.TYPE_6__*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @ide_dma_start(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
