; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.ti_ohci* }
%struct.ti_ohci = type { i64, %struct.dma_trm_ctx, %struct.dma_trm_ctx }
%struct.dma_trm_ctx = type { i32, i32 }
%struct.hpsb_packet = type { i64, i64, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Transmit packet size %Zd is too big\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@hpsb_raw = common dso_local global i64 0, align 8
@TCODE_ISO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, %struct.hpsb_packet*)* @ohci_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_transmit(%struct.hpsb_host* %0, %struct.hpsb_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca %struct.hpsb_packet*, align 8
  %6 = alloca %struct.ti_ohci*, align 8
  %7 = alloca %struct.dma_trm_ctx*, align 8
  %8 = alloca i64, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store %struct.hpsb_packet* %1, %struct.hpsb_packet** %5, align 8
  %9 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %10 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %9, i32 0, i32 0
  %11 = load %struct.ti_ohci*, %struct.ti_ohci** %10, align 8
  store %struct.ti_ohci* %11, %struct.ti_ohci** %6, align 8
  %12 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %13 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ti_ohci*, %struct.ti_ohci** %6, align 8
  %16 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %22 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @PRINT(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @EOVERFLOW, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %72

27:                                               ; preds = %2
  %28 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %29 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @hpsb_raw, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.ti_ohci*, %struct.ti_ohci** %6, align 8
  %35 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %34, i32 0, i32 1
  store %struct.dma_trm_ctx* %35, %struct.dma_trm_ctx** %7, align 8
  br label %55

36:                                               ; preds = %27
  %37 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %38 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %44 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TCODE_ISO_DATA, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.ti_ohci*, %struct.ti_ohci** %6, align 8
  %50 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %49, i32 0, i32 2
  store %struct.dma_trm_ctx* %50, %struct.dma_trm_ctx** %7, align 8
  br label %54

51:                                               ; preds = %42, %36
  %52 = load %struct.ti_ohci*, %struct.ti_ohci** %6, align 8
  %53 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %52, i32 0, i32 1
  store %struct.dma_trm_ctx* %53, %struct.dma_trm_ctx** %7, align 8
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %33
  %56 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %56, i32 0, i32 0
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %61 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %60, i32 0, i32 3
  %62 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %7, align 8
  %63 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %62, i32 0, i32 1
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.ti_ohci*, %struct.ti_ohci** %6, align 8
  %66 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %7, align 8
  %67 = call i32 @dma_trm_flush(%struct.ti_ohci* %65, %struct.dma_trm_ctx* %66)
  %68 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %68, i32 0, i32 0
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %55, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @PRINT(i32, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_trm_flush(%struct.ti_ohci*, %struct.dma_trm_ctx*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
