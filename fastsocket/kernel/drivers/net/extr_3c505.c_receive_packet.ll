; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_receive_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, %struct.TYPE_4__, i32, i8* }
%struct.TYPE_4__ = type { i32, i32, %struct.sk_buff*, i64, i32* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: memory squeeze, dropping packet\0A\00", align 1
@MAX_DMA_ADDRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: rx blocked, DMA in progress, dir %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@DIR = common dso_local global i32 0, align 4
@TCEN = common dso_local global i32 0, align 4
@DMAE = common dso_local global i32 0, align 4
@elp_debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: rx DMA transfer started\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: receive_packet called, busy not set.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_packet(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  %14 = and i32 %13, -2
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 2
  %17 = call %struct.sk_buff* @dev_alloc_skb(i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  br label %156

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = call i32 @skb_reserve(%struct.sk_buff* %32, i32 2)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @skb_put(%struct.sk_buff* %34, i32 %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %37, i64 %39
  %41 = ptrtoint i8* %40 to i64
  %42 = load i64, i64* @MAX_DMA_ADDRESS, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  store i32* %46, i32** %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %7, align 8
  br label %57

53:                                               ; preds = %31
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %53, %44
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = bitcast i32* %59 to i8*
  %61 = call i64 @test_and_set_bit(i32 0, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %66, i64 %70)
  br label %72

72:                                               ; preds = %63, %57
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store %struct.sk_buff* %80, %struct.sk_buff** %83, align 8
  %84 = load i32, i32* @jiffies, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DIR, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @TCEN, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @DMAE, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = call i32 @outb_control(i32 %96, %struct.net_device* %97)
  %99 = call i64 (...) @claim_dma_lock()
  store i64 %99, i64* %9, align 8
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @disable_dma(i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @clear_dma_ff(i32 %106)
  %108 = load %struct.net_device*, %struct.net_device** %3, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @set_dma_mode(i32 %110, i32 4)
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @isa_virt_to_bus(i8* %115)
  %117 = call i32 @set_dma_addr(i32 %114, i32 %116)
  %118 = load %struct.net_device*, %struct.net_device** %3, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @set_dma_count(i32 %120, i32 %121)
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @enable_dma(i32 %125)
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @release_dma_lock(i64 %127)
  %129 = load i32, i32* @elp_debug, align 4
  %130 = icmp sge i32 %129, 3
  br i1 %130, label %131, label %136

131:                                              ; preds = %72
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %131, %72
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, -1
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.net_device*, %struct.net_device** %3, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %20, %151, %146
  ret void
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @outb_control(i32, %struct.net_device*) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @set_dma_addr(i32, i32) #1

declare dso_local i32 @isa_virt_to_bus(i8*) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
