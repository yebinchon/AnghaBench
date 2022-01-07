; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_set_low_watermark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_set_low_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.TYPE_2__, %struct.spider_net_descr* }
%struct.TYPE_2__ = type { i32, i32, %struct.spider_net_descr*, %struct.spider_net_descr* }
%struct.spider_net_descr = type { %struct.spider_net_hw_descr*, %struct.spider_net_descr* }
%struct.spider_net_hw_descr = type { i32 }

@SPIDER_NET_DESCR_NOT_IN_USE = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_TXDESFLG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*)* @spider_net_set_low_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_set_low_watermark(%struct.spider_net_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spider_net_card*, align 8
  %4 = alloca %struct.spider_net_descr*, align 8
  %5 = alloca %struct.spider_net_hw_descr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spider_net_card* %0, %struct.spider_net_card** %3, align 8
  %10 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %11 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.spider_net_descr*, %struct.spider_net_descr** %12, align 8
  store %struct.spider_net_descr* %13, %struct.spider_net_descr** %4, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %33, %1
  %15 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  %16 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %17 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load %struct.spider_net_descr*, %struct.spider_net_descr** %18, align 8
  %20 = icmp ne %struct.spider_net_descr* %15, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %14
  %22 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  %23 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %22, i32 0, i32 0
  %24 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %23, align 8
  %25 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SPIDER_NET_DESCR_NOT_IN_USE, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SPIDER_NET_DESCR_NOT_IN_USE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %39

33:                                               ; preds = %21
  %34 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  %35 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %34, i32 0, i32 1
  %36 = load %struct.spider_net_descr*, %struct.spider_net_descr** %35, align 8
  store %struct.spider_net_descr* %36, %struct.spider_net_descr** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %14

39:                                               ; preds = %32, %14
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %42 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %44, 4
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %115

49:                                               ; preds = %39
  %50 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %51 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load %struct.spider_net_descr*, %struct.spider_net_descr** %52, align 8
  store %struct.spider_net_descr* %53, %struct.spider_net_descr** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %54, 3
  %56 = sdiv i32 %55, 4
  store i32 %56, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %65, %49
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  %63 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %62, i32 0, i32 1
  %64 = load %struct.spider_net_descr*, %struct.spider_net_descr** %63, align 8
  store %struct.spider_net_descr* %64, %struct.spider_net_descr** %4, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %57

68:                                               ; preds = %57
  %69 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %70 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load i32, i32* @SPIDER_NET_DESCR_TXDESFLG, align 4
  %75 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  %76 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %75, i32 0, i32 0
  %77 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %76, align 8
  %78 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %74
  store i32 %80, i32* %78, align 4
  %81 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %82 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %81, i32 0, i32 1
  %83 = load %struct.spider_net_descr*, %struct.spider_net_descr** %82, align 8
  %84 = icmp ne %struct.spider_net_descr* %83, null
  br i1 %84, label %85, label %105

85:                                               ; preds = %68
  %86 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %87 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %86, i32 0, i32 1
  %88 = load %struct.spider_net_descr*, %struct.spider_net_descr** %87, align 8
  %89 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  %90 = icmp ne %struct.spider_net_descr* %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %93 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %92, i32 0, i32 1
  %94 = load %struct.spider_net_descr*, %struct.spider_net_descr** %93, align 8
  %95 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %94, i32 0, i32 0
  %96 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %95, align 8
  store %struct.spider_net_hw_descr* %96, %struct.spider_net_hw_descr** %5, align 8
  %97 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %5, align 8
  %98 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SPIDER_NET_DESCR_TXDESFLG, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %5, align 8
  %104 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %91, %85, %68
  %106 = load %struct.spider_net_descr*, %struct.spider_net_descr** %4, align 8
  %107 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %108 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %107, i32 0, i32 1
  store %struct.spider_net_descr* %106, %struct.spider_net_descr** %108, align 8
  %109 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %110 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %105, %47
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
