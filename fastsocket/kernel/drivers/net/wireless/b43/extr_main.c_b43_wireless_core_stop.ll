; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_wireless_core_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_wireless_core_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__*, i32, %struct.b43_wl* }
%struct.TYPE_2__ = type { i32 }
%struct.b43_wl = type { i32, i32*, %struct.b43_wldev*, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@B43_STAT_STARTED = common dso_local global i64 0, align 8
@B43_STAT_INITIALIZED = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@B43_QOS_QUEUE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wireless interface stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_wldev* (%struct.b43_wldev*)* @b43_wireless_core_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_wldev* @b43_wireless_core_stop(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_wl*, align 8
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = icmp ne %struct.b43_wldev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.b43_wldev* null, %struct.b43_wldev** %2, align 8
  br label %182

12:                                               ; preds = %1
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 2
  %15 = load %struct.b43_wl*, %struct.b43_wl** %14, align 8
  store %struct.b43_wl* %15, %struct.b43_wl** %4, align 8
  br label %16

16:                                               ; preds = %127, %12
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = icmp ne %struct.b43_wldev* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = call i64 @b43_status(%struct.b43_wldev* %20)
  %22 = load i64, i64* @B43_STAT_STARTED, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %16
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %25, %struct.b43_wldev** %2, align 8
  br label %182

26:                                               ; preds = %19
  %27 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %28 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %27, i32 0, i32 3
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 1
  %32 = call i32 @cancel_delayed_work_sync(i32* %31)
  %33 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %34 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %33, i32 0, i32 5
  %35 = call i32 @cancel_work_sync(i32* %34)
  %36 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %37 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %36, i32 0, i32 3
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %40 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %39, i32 0, i32 2
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %40, align 8
  store %struct.b43_wldev* %41, %struct.b43_wldev** %3, align 8
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = icmp ne %struct.b43_wldev* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %26
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %46 = call i64 @b43_status(%struct.b43_wldev* %45)
  %47 = load i64, i64* @B43_STAT_STARTED, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %26
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %50, %struct.b43_wldev** %2, align 8
  br label %182

51:                                               ; preds = %44
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = load i32, i32* @B43_STAT_INITIALIZED, align 4
  %54 = call i32 @b43_set_status(%struct.b43_wldev* %52, i32 %53)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i64 @b43_bus_host_is_sdio(%struct.TYPE_2__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %63 = call i32 @b43_write32(%struct.b43_wldev* %61, i32 %62, i32 0)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %65 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %66 = call i32 @b43_read32(%struct.b43_wldev* %64, i32 %65)
  br label %80

67:                                               ; preds = %51
  %68 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %69 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %68, i32 0, i32 4
  %70 = call i32 @spin_lock_irq(i32* %69)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %72 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %73 = call i32 @b43_write32(%struct.b43_wldev* %71, i32 %72, i32 0)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %76 = call i32 @b43_read32(%struct.b43_wldev* %74, i32 %75)
  %77 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %78 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %77, i32 0, i32 4
  %79 = call i32 @spin_unlock_irq(i32* %78)
  br label %80

80:                                               ; preds = %67, %60
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %81, %struct.b43_wldev** %5, align 8
  %82 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %83 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %82, i32 0, i32 3
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %86 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = call i64 @b43_bus_host_is_sdio(%struct.TYPE_2__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = call i32 @b43_sdio_free_irq(%struct.b43_wldev* %91)
  br label %107

93:                                               ; preds = %80
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %95 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @synchronize_irq(i32 %98)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %101 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %106 = call i32 @free_irq(i32 %104, %struct.b43_wldev* %105)
  br label %107

107:                                              ; preds = %93, %90
  %108 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %109 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %108, i32 0, i32 3
  %110 = call i32 @mutex_lock(i32* %109)
  %111 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %112 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %111, i32 0, i32 2
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %112, align 8
  store %struct.b43_wldev* %113, %struct.b43_wldev** %3, align 8
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %115 = icmp ne %struct.b43_wldev* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %107
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %117, %struct.b43_wldev** %2, align 8
  br label %182

118:                                              ; preds = %107
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %121 = icmp ne %struct.b43_wldev* %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %124 = call i64 @b43_status(%struct.b43_wldev* %123)
  %125 = load i64, i64* @B43_STAT_STARTED, align 8
  %126 = icmp sge i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %16

128:                                              ; preds = %122
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %129, %struct.b43_wldev** %2, align 8
  br label %182

130:                                              ; preds = %118
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %132 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %133 = call i32 @b43_read32(%struct.b43_wldev* %131, i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi i1 [ false, %130 ], [ %138, %136 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @B43_WARN_ON(i32 %141)
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %171, %139
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @B43_QOS_QUEUE_NUM, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %174

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %157, %147
  %149 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %150 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = call i64 @skb_queue_len(i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %148
  %158 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %159 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = call %struct.sk_buff* @skb_dequeue(i32* %163)
  store %struct.sk_buff* %164, %struct.sk_buff** %8, align 8
  %165 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %166 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %169 = call i32 @ieee80211_free_txskb(i32 %167, %struct.sk_buff* %168)
  br label %148

170:                                              ; preds = %148
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %143

174:                                              ; preds = %143
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %176 = call i32 @b43_mac_suspend(%struct.b43_wldev* %175)
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %178 = call i32 @b43_leds_exit(%struct.b43_wldev* %177)
  %179 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %180 = call i32 @b43dbg(%struct.b43_wl* %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %181 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %181, %struct.b43_wldev** %2, align 8
  br label %182

182:                                              ; preds = %174, %128, %116, %49, %24, %11
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  ret %struct.b43_wldev* %183
}

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @b43_set_status(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_bus_host_is_sdio(%struct.TYPE_2__*) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @b43_sdio_free_irq(%struct.b43_wldev*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @free_irq(i32, %struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_leds_exit(%struct.b43_wldev*) #1

declare dso_local i32 @b43dbg(%struct.b43_wl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
