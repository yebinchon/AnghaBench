; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ohci_cancel_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ohci_cancel_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_packet = type { i32, i32 (%struct.fw_packet*, %struct.TYPE_2__*, i32)*, i32, i32, i32, i32, %struct.driver_data* }
%struct.TYPE_2__ = type { i32 }
%struct.driver_data = type { i32* }
%struct.fw_ohci = type { %struct.TYPE_2__, %struct.context }
%struct.context = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@RCODE_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, %struct.fw_packet*)* @ohci_cancel_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_cancel_packet(%struct.fw_card* %0, %struct.fw_packet* %1) #0 {
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca %struct.fw_packet*, align 8
  %5 = alloca %struct.fw_ohci*, align 8
  %6 = alloca %struct.context*, align 8
  %7 = alloca %struct.driver_data*, align 8
  %8 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %4, align 8
  %9 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %10 = call %struct.fw_ohci* @fw_ohci(%struct.fw_card* %9)
  store %struct.fw_ohci* %10, %struct.fw_ohci** %5, align 8
  %11 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %12 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %11, i32 0, i32 1
  store %struct.context* %12, %struct.context** %6, align 8
  %13 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %14 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %13, i32 0, i32 6
  %15 = load %struct.driver_data*, %struct.driver_data** %14, align 8
  store %struct.driver_data* %15, %struct.driver_data** %7, align 8
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.context*, %struct.context** %6, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 0
  %20 = call i32 @tasklet_disable(i32* %19)
  %21 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %22 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %67

26:                                               ; preds = %2
  %27 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %28 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %33 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %37 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %40 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @dma_unmap_single(i32 %35, i32 %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %31, %26
  %45 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %46 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %49 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @log_ar_at_event(i8 signext 84, i32 %47, i32 %50, i32 32)
  %52 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %53 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* @RCODE_CANCELLED, align 4
  %55 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %56 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %58 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %57, i32 0, i32 1
  %59 = load i32 (%struct.fw_packet*, %struct.TYPE_2__*, i32)*, i32 (%struct.fw_packet*, %struct.TYPE_2__*, i32)** %58, align 8
  %60 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %61 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %62 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %61, i32 0, i32 0
  %63 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %64 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %59(%struct.fw_packet* %60, %struct.TYPE_2__* %62, i32 %65)
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %44, %25
  %68 = load %struct.context*, %struct.context** %6, align 8
  %69 = getelementptr inbounds %struct.context, %struct.context* %68, i32 0, i32 0
  %70 = call i32 @tasklet_enable(i32* %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.fw_ohci* @fw_ohci(%struct.fw_card*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @log_ar_at_event(i8 signext, i32, i32, i32) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
