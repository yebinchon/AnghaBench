; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_clean_txd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_clean_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { %struct.TYPE_4__**, i32, %struct.sk_buff***, %struct.cas_tx_desc** }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.cas_tx_desc = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TX_DESC_BUFLEN = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32)* @cas_clean_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_clean_txd(%struct.cas* %0, i32 %1) #0 {
  %3 = alloca %struct.cas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cas_tx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.cas*, %struct.cas** %3, align 8
  %15 = getelementptr inbounds %struct.cas, %struct.cas* %14, i32 0, i32 3
  %16 = load %struct.cas_tx_desc**, %struct.cas_tx_desc*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cas_tx_desc*, %struct.cas_tx_desc** %16, i64 %18
  %20 = load %struct.cas_tx_desc*, %struct.cas_tx_desc** %19, align 8
  store %struct.cas_tx_desc* %20, %struct.cas_tx_desc** %5, align 8
  %21 = load %struct.cas*, %struct.cas** %3, align 8
  %22 = getelementptr inbounds %struct.cas, %struct.cas* %21, i32 0, i32 2
  %23 = load %struct.sk_buff***, %struct.sk_buff**** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %23, i64 %25
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %26, align 8
  store %struct.sk_buff** %27, %struct.sk_buff*** %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @TX_DESC_RINGN_SIZE(i32 %28)
  store i32 %29, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %124, %2
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %127

34:                                               ; preds = %30
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %35, i64 %37
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  %40 = icmp eq %struct.sk_buff* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %124

42:                                               ; preds = %34
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %43, i64 %45
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %6, align 8
  %48 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %48, i64 %50
  store %struct.sk_buff* null, %struct.sk_buff** %51, align 8
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %118, %42
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %53, %57
  br i1 %58, label %59, label %121

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %60, %62
  store i32 %63, i32* %13, align 4
  %64 = load %struct.cas_tx_desc*, %struct.cas_tx_desc** %5, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cas_tx_desc, %struct.cas_tx_desc* %64, i64 %66
  %68 = getelementptr inbounds %struct.cas_tx_desc, %struct.cas_tx_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le64_to_cpu(i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @TX_DESC_BUFLEN, align 4
  %72 = load %struct.cas_tx_desc*, %struct.cas_tx_desc** %5, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.cas_tx_desc, %struct.cas_tx_desc* %72, i64 %74
  %76 = getelementptr inbounds %struct.cas_tx_desc, %struct.cas_tx_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le64_to_cpu(i32 %77)
  %79 = call i32 @CAS_VAL(i32 %71, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.cas*, %struct.cas** %3, align 8
  %81 = getelementptr inbounds %struct.cas, %struct.cas* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %86 = call i32 @pci_unmap_page(i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %59
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %96, %98
  store i32 %99, i32* %13, align 4
  %100 = load %struct.cas*, %struct.cas** %3, align 8
  %101 = getelementptr inbounds %struct.cas, %struct.cas* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %102, i64 %104
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %93
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %113, %93
  br label %117

117:                                              ; preds = %116, %59
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %52

121:                                              ; preds = %52
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %122)
  br label %124

124:                                              ; preds = %121, %41
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %30

127:                                              ; preds = %30
  %128 = load %struct.cas*, %struct.cas** %3, align 8
  %129 = getelementptr inbounds %struct.cas, %struct.cas* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %130, i64 %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memset(%struct.TYPE_4__* %134, i32 0, i32 %138)
  ret void
}

declare dso_local i32 @TX_DESC_RINGN_SIZE(i32) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @CAS_VAL(i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
