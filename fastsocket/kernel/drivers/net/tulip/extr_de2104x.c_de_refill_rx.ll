; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_refill_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@DE_RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@RingEnd = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.de_private*)* @de_refill_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_refill_rx(%struct.de_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.de_private* %0, %struct.de_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %113, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DE_RX_RING_SIZE, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %116

10:                                               ; preds = %6
  %11 = load %struct.de_private*, %struct.de_private** %3, align 8
  %12 = getelementptr inbounds %struct.de_private, %struct.de_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.sk_buff* @dev_alloc_skb(i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %117

18:                                               ; preds = %10
  %19 = load %struct.de_private*, %struct.de_private** %3, align 8
  %20 = getelementptr inbounds %struct.de_private, %struct.de_private* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.de_private*, %struct.de_private** %3, align 8
  %25 = getelementptr inbounds %struct.de_private, %struct.de_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.de_private*, %struct.de_private** %3, align 8
  %31 = getelementptr inbounds %struct.de_private, %struct.de_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %34 = call i32 @pci_map_single(i32 %26, i32 %29, i32 %32, i32 %33)
  %35 = load %struct.de_private*, %struct.de_private** %3, align 8
  %36 = getelementptr inbounds %struct.de_private, %struct.de_private* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %34, i32* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.de_private*, %struct.de_private** %3, align 8
  %44 = getelementptr inbounds %struct.de_private, %struct.de_private* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store %struct.sk_buff* %42, %struct.sk_buff** %49, align 8
  %50 = load i32, i32* @DescOwn, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.de_private*, %struct.de_private** %3, align 8
  %53 = getelementptr inbounds %struct.de_private, %struct.de_private* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  store i8* %51, i8** %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @DE_RX_RING_SIZE, align 4
  %61 = sub i32 %60, 1
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %18
  %64 = load i32, i32* @RingEnd, align 4
  %65 = load %struct.de_private*, %struct.de_private** %3, align 8
  %66 = getelementptr inbounds %struct.de_private, %struct.de_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %64, %67
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.de_private*, %struct.de_private** %3, align 8
  %71 = getelementptr inbounds %struct.de_private, %struct.de_private* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i8* %69, i8** %76, align 8
  br label %89

77:                                               ; preds = %18
  %78 = load %struct.de_private*, %struct.de_private** %3, align 8
  %79 = getelementptr inbounds %struct.de_private, %struct.de_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.de_private*, %struct.de_private** %3, align 8
  %83 = getelementptr inbounds %struct.de_private, %struct.de_private* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i8* %81, i8** %88, align 8
  br label %89

89:                                               ; preds = %77, %63
  %90 = load %struct.de_private*, %struct.de_private** %3, align 8
  %91 = getelementptr inbounds %struct.de_private, %struct.de_private* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.de_private*, %struct.de_private** %3, align 8
  %100 = getelementptr inbounds %struct.de_private, %struct.de_private* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i8* %98, i8** %105, align 8
  %106 = load %struct.de_private*, %struct.de_private** %3, align 8
  %107 = getelementptr inbounds %struct.de_private, %struct.de_private* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %89
  %114 = load i32, i32* %4, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %6

116:                                              ; preds = %6
  store i32 0, i32* %2, align 4
  br label %122

117:                                              ; preds = %17
  %118 = load %struct.de_private*, %struct.de_private** %3, align 8
  %119 = call i32 @de_clean_rings(%struct.de_private* %118)
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %116
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @de_clean_rings(%struct.de_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
