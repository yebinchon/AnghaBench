; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_rx_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_rx_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { %struct.TYPE_9__, %struct.ipw2100_rx_packet*, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ipw2100_rx_packet = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@RX_QUEUE_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed bd_queue_allocate\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed status_queue_allocate\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"can't allocate rx packet buffer table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IPW_RX_NIC_BUFFER_LENGTH = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @ipw2100_rx_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_rx_allocate(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipw2100_rx_packet*, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %12 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %12, i32 0, i32 0
  %14 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %15 = call i32 @bd_queue_allocate(%struct.ipw2100_priv* %11, %struct.TYPE_9__* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %160

21:                                               ; preds = %1
  %22 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %23 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %24 = call i32 @status_queue_allocate(%struct.ipw2100_priv* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %30, i32 0, i32 0
  %32 = call i32 @bd_queue_free(%struct.ipw2100_priv* %29, %struct.TYPE_9__* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %160

34:                                               ; preds = %21
  %35 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.ipw2100_rx_packet* @kmalloc(i32 %38, i32 %39)
  %41 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %41, i32 0, i32 1
  store %struct.ipw2100_rx_packet* %40, %struct.ipw2100_rx_packet** %42, align 8
  %43 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %43, i32 0, i32 1
  %45 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %44, align 8
  %46 = icmp ne %struct.ipw2100_rx_packet* %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %34
  %48 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %50 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %50, i32 0, i32 0
  %52 = call i32 @bd_queue_free(%struct.ipw2100_priv* %49, %struct.TYPE_9__* %51)
  %53 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %54 = call i32 @status_queue_free(%struct.ipw2100_priv* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %160

57:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %107, %57
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %110

62:                                               ; preds = %58
  %63 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %64 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %63, i32 0, i32 1
  %65 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %65, i64 %67
  store %struct.ipw2100_rx_packet* %68, %struct.ipw2100_rx_packet** %7, align 8
  %69 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %70 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %7, align 8
  %71 = call i32 @ipw2100_alloc_skb(%struct.ipw2100_priv* %69, %struct.ipw2100_rx_packet* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %110

78:                                               ; preds = %62
  %79 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %7, align 8
  %80 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %83 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %81, i32* %89, align 4
  %90 = load i32, i32* @IPW_RX_NIC_BUFFER_LENGTH, align 4
  %91 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %92 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %90, i32* %98, align 4
  %99 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %100 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %78
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %58

110:                                              ; preds = %75, %58
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %160

115:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %143, %115
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %146

120:                                              ; preds = %116
  %121 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %122 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %125 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %124, i32 0, i32 1
  %126 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %126, i64 %128
  %130 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %133 = call i32 @pci_unmap_single(i32 %123, i32 %131, i32 8, i32 %132)
  %134 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %135 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %134, i32 0, i32 1
  %136 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %136, i64 %138
  %140 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_kfree_skb(i32 %141)
  br label %143

143:                                              ; preds = %120
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %116

146:                                              ; preds = %116
  %147 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %148 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %147, i32 0, i32 1
  %149 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %148, align 8
  %150 = call i32 @kfree(%struct.ipw2100_rx_packet* %149)
  %151 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %152 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %151, i32 0, i32 1
  store %struct.ipw2100_rx_packet* null, %struct.ipw2100_rx_packet** %152, align 8
  %153 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %154 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %155 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %154, i32 0, i32 0
  %156 = call i32 @bd_queue_free(%struct.ipw2100_priv* %153, %struct.TYPE_9__* %155)
  %157 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %158 = call i32 @status_queue_free(%struct.ipw2100_priv* %157)
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %146, %114, %47, %27, %18
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @bd_queue_allocate(%struct.ipw2100_priv*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @status_queue_allocate(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @bd_queue_free(%struct.ipw2100_priv*, %struct.TYPE_9__*) #1

declare dso_local %struct.ipw2100_rx_packet* @kmalloc(i32, i32) #1

declare dso_local i32 @status_queue_free(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_alloc_skb(%struct.ipw2100_priv*, %struct.ipw2100_rx_packet*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.ipw2100_rx_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
