; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_icside.c_pata_icside_bmdma_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_icside.c_pata_icside_bmdma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_10__, i32, i32, %struct.TYPE_8__*, %struct.ata_port* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ata_port = type { i64, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 (%struct.ata_port*, %struct.TYPE_10__*)* }
%struct.TYPE_6__ = type { %struct.pata_icside_state* }
%struct.pata_icside_state = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @pata_icside_bmdma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_icside_bmdma_setup(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pata_icside_state*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 4
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.pata_icside_state*, %struct.pata_icside_state** %12, align 8
  store %struct.pata_icside_state* %13, %struct.pata_icside_state** %4, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.pata_icside_state*, %struct.pata_icside_state** %4, align 8
  %21 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dma_channel_active(i32 %22)
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.pata_icside_state*, %struct.pata_icside_state** %4, align 8
  %26 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pata_icside_state*, %struct.pata_icside_state** %4, align 8
  %35 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @writeb(i32 %33, i32 %36)
  %38 = load %struct.pata_icside_state*, %struct.pata_icside_state** %4, align 8
  %39 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pata_icside_state*, %struct.pata_icside_state** %4, align 8
  %42 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %45 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %51 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @set_dma_speed(i32 %40, i32 %56)
  %58 = load %struct.pata_icside_state*, %struct.pata_icside_state** %4, align 8
  %59 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %62 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %65 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_dma_sg(i32 %60, i32 %63, i32 %66)
  %68 = load %struct.pata_icside_state*, %struct.pata_icside_state** %4, align 8
  %69 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %1
  %74 = load i32, i32* @DMA_MODE_WRITE, align 4
  br label %77

75:                                               ; preds = %1
  %76 = load i32, i32* @DMA_MODE_READ, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = call i32 @set_dma_mode(i32 %70, i32 %78)
  %80 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %81 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32 (%struct.ata_port*, %struct.TYPE_10__*)*, i32 (%struct.ata_port*, %struct.TYPE_10__*)** %83, align 8
  %85 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %86 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %87 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %86, i32 0, i32 0
  %88 = call i32 %84(%struct.ata_port* %85, %struct.TYPE_10__* %87)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_channel_active(i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @set_dma_speed(i32, i32) #1

declare dso_local i32 @set_dma_sg(i32, i32, i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
