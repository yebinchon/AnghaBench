; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_insert_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_insert_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_rcv_ctx = type { i32, i32, i32, %struct.TYPE_2__**, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ti_ohci = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Inserting dma buf ctx=%d idx=%d\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Waking dma ctx=%d ... processing is probably too slow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_rcv_ctx*, i32)* @insert_dma_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_dma_buffer(%struct.dma_rcv_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_rcv_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_ohci*, align 8
  store %struct.dma_rcv_ctx* %0, %struct.dma_rcv_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ti_ohci*
  store %struct.ti_ohci* %9, %struct.ti_ohci** %5, align 8
  %10 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DBGMSG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %18, i32* %26, align 4
  %27 = call i32 @le32_to_cpu(i32 -16)
  %28 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %27
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %38, %41
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = srem i32 %43, %46
  store i32 %47, i32* %4, align 4
  %48 = call i32 @le32_to_cpu(i32 1)
  %49 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %48
  store i32 %58, i32* %56, align 4
  %59 = call i32 (...) @wmb()
  %60 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %61 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @reg_read(%struct.ti_ohci* %60, i32 %63)
  %65 = and i32 %64, 1024
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %2
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PRINT(i32 %68, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %67, %2
  %74 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %75 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @reg_write(%struct.ti_ohci* %74, i32 %77, i32 4096)
  ret void
}

declare dso_local i32 @DBGMSG(i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @PRINT(i32, i8*, i32) #1

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
