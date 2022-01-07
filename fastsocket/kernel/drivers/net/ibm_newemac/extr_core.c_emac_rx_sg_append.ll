; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_rx_sg_append.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_rx_sg_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__**, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*, i32)* @emac_rx_sg_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_rx_sg_append(%struct.emac_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emac_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.emac_instance* %0, %struct.emac_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %9 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %78

15:                                               ; preds = %2
  %16 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %17 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %16, i32 0, i32 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %25 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 2
  %33 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %34 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %15
  %41 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %42 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %47 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = call i32 @dev_kfree_skb(%struct.TYPE_10__* %48)
  %50 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %51 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %50, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %51, align 8
  br label %77

52:                                               ; preds = %15
  %53 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %54 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = call i32 @skb_tail_pointer(%struct.TYPE_10__* %55)
  %57 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %58 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %57, i32 0, i32 2
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @cacheable_memcpy(i32 %56, i32 %65, i32 %66)
  %68 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %69 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @skb_put(%struct.TYPE_10__* %70, i32 %71)
  %73 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @emac_recycle_rx_skb(%struct.emac_instance* %73, i32 %74, i32 %75)
  store i32 0, i32* %3, align 4
  br label %82

77:                                               ; preds = %40
  br label %78

78:                                               ; preds = %77, %2
  %79 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @emac_recycle_rx_skb(%struct.emac_instance* %79, i32 %80, i32 0)
  store i32 -1, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %52
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_10__*) #1

declare dso_local i32 @cacheable_memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.TYPE_10__*) #1

declare dso_local i32 @skb_put(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @emac_recycle_rx_skb(%struct.emac_instance*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
