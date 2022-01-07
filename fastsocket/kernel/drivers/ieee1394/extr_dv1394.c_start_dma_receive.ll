; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_start_dma_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_start_dma_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_card = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__**, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"dv1394: DMA started\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"DEAD, event = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_card*)* @start_dma_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_dma_receive(%struct.video_card* %0) #0 {
  %2 = alloca %struct.video_card*, align 8
  store %struct.video_card* %0, %struct.video_card** %2, align 8
  %3 = load %struct.video_card*, %struct.video_card** %2, align 8
  %4 = getelementptr inbounds %struct.video_card, %struct.video_card* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %74

7:                                                ; preds = %1
  %8 = load %struct.video_card*, %struct.video_card** %2, align 8
  %9 = getelementptr inbounds %struct.video_card, %struct.video_card* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.video_card*, %struct.video_card** %2, align 8
  %11 = getelementptr inbounds %struct.video_card, %struct.video_card* %10, i32 0, i32 12
  store i64 0, i64* %11, align 8
  %12 = load %struct.video_card*, %struct.video_card** %2, align 8
  %13 = getelementptr inbounds %struct.video_card, %struct.video_card* %12, i32 0, i32 1
  store i32 -1, i32* %13, align 4
  %14 = load %struct.video_card*, %struct.video_card** %2, align 8
  %15 = getelementptr inbounds %struct.video_card, %struct.video_card* %14, i32 0, i32 11
  store i64 0, i64* %15, align 8
  %16 = load %struct.video_card*, %struct.video_card** %2, align 8
  %17 = getelementptr inbounds %struct.video_card, %struct.video_card* %16, i32 0, i32 10
  store i64 0, i64* %17, align 8
  %18 = load %struct.video_card*, %struct.video_card** %2, align 8
  %19 = getelementptr inbounds %struct.video_card, %struct.video_card* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.video_card*, %struct.video_card** %2, align 8
  %22 = getelementptr inbounds %struct.video_card, %struct.video_card* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @reg_write(i32 %20, i32 %23, i32 -1)
  %25 = call i32 (...) @wmb()
  %26 = load %struct.video_card*, %struct.video_card** %2, align 8
  %27 = getelementptr inbounds %struct.video_card, %struct.video_card* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.video_card*, %struct.video_card** %2, align 8
  %30 = getelementptr inbounds %struct.video_card, %struct.video_card* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @reg_write(i32 %28, i32 %31, i32 1073741824)
  %33 = load %struct.video_card*, %struct.video_card** %2, align 8
  %34 = getelementptr inbounds %struct.video_card, %struct.video_card* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.video_card*, %struct.video_card** %2, align 8
  %37 = getelementptr inbounds %struct.video_card, %struct.video_card* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.video_card*, %struct.video_card** %2, align 8
  %40 = getelementptr inbounds %struct.video_card, %struct.video_card* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 -268435456, %41
  %43 = call i32 @reg_write(i32 %35, i32 %38, i32 %42)
  %44 = load %struct.video_card*, %struct.video_card** %2, align 8
  %45 = getelementptr inbounds %struct.video_card, %struct.video_card* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.video_card*, %struct.video_card** %2, align 8
  %48 = getelementptr inbounds %struct.video_card, %struct.video_card* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.video_card*, %struct.video_card** %2, align 8
  %51 = getelementptr inbounds %struct.video_card, %struct.video_card* %50, i32 0, i32 6
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 1
  %58 = call i32 @reg_write(i32 %46, i32 %49, i32 %57)
  %59 = call i32 (...) @wmb()
  %60 = load %struct.video_card*, %struct.video_card** %2, align 8
  %61 = getelementptr inbounds %struct.video_card, %struct.video_card* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = load %struct.video_card*, %struct.video_card** %2, align 8
  %63 = getelementptr inbounds %struct.video_card, %struct.video_card* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.video_card*, %struct.video_card** %2, align 8
  %66 = getelementptr inbounds %struct.video_card, %struct.video_card* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @reg_write(i32 %64, i32 %67, i32 32768)
  %69 = load %struct.video_card*, %struct.video_card** %2, align 8
  %70 = getelementptr inbounds %struct.video_card, %struct.video_card* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @flush_pci_write(i32 %71)
  %73 = call i32 (i8*, ...) @debug_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %102

74:                                               ; preds = %1
  %75 = load %struct.video_card*, %struct.video_card** %2, align 8
  %76 = getelementptr inbounds %struct.video_card, %struct.video_card* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.video_card*, %struct.video_card** %2, align 8
  %79 = getelementptr inbounds %struct.video_card, %struct.video_card* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @reg_read(i32 %77, i32 %80)
  %82 = and i32 %81, 2048
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %74
  %85 = load %struct.video_card*, %struct.video_card** %2, align 8
  %86 = getelementptr inbounds %struct.video_card, %struct.video_card* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.video_card*, %struct.video_card** %2, align 8
  %89 = getelementptr inbounds %struct.video_card, %struct.video_card* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @reg_read(i32 %87, i32 %90)
  %92 = and i32 %91, 31
  %93 = call i32 (i8*, ...) @debug_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.video_card*, %struct.video_card** %2, align 8
  %95 = getelementptr inbounds %struct.video_card, %struct.video_card* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.video_card*, %struct.video_card** %2, align 8
  %98 = getelementptr inbounds %struct.video_card, %struct.video_card* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @reg_write(i32 %96, i32 %99, i32 4096)
  br label %101

101:                                              ; preds = %84, %74
  br label %102

102:                                              ; preds = %101, %7
  ret void
}

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @flush_pci_write(i32) #1

declare dso_local i32 @debug_printk(i8*, ...) #1

declare dso_local i32 @reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
