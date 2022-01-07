; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_unmap_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_unmap_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sge_txq = type { i32, %struct.tx_sw_desc*, %struct.TYPE_3__* }
%struct.tx_sw_desc = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.pci_dev = type { i32 }
%struct.sg_ent = type { i32* }
%struct.TYPE_4__ = type { i32, i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@WR_FLITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sge_txq*, i32, %struct.pci_dev*)* @unmap_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_skb(%struct.sk_buff* %0, %struct.sge_txq* %1, i32 %2, %struct.pci_dev* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sge_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.sg_ent*, align 8
  %10 = alloca %struct.tx_sw_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.pci_dev* %3, %struct.pci_dev** %8, align 8
  %15 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %16 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %15, i32 0, i32 1
  %17 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %17, i64 %19
  store %struct.tx_sw_desc* %20, %struct.tx_sw_desc** %10, align 8
  %21 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %10, align 8
  %22 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  %24 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %25 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %10, align 8
  %33 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = bitcast i32* %35 to %struct.sg_ent*
  store %struct.sg_ent* %36, %struct.sg_ent** %9, align 8
  %37 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %10, align 8
  %38 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i64 @skb_headlen(%struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %48 = load %struct.sg_ent*, %struct.sg_ent** %9, align 8
  %49 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be64_to_cpu(i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i64 @skb_headlen(%struct.sk_buff* %54)
  %56 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %57 = call i32 @pci_unmap_single(%struct.pci_dev* %47, i32 %53, i64 %55, i32 %56)
  store i32 1, i32* %14, align 4
  br label %58

58:                                               ; preds = %46, %42, %4
  %59 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %10, align 8
  %60 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %110, %58
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @WR_FLITS, align 4
  %78 = icmp slt i32 %76, %77
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ false, %71 ], [ %78, %75 ]
  br i1 %80, label %81, label %115

81:                                               ; preds = %79
  %82 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %83 = load %struct.sg_ent*, %struct.sg_ent** %9, align 8
  %84 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @be64_to_cpu(i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @skb_frag_size(i32* %97)
  %99 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %100 = call i32 @pci_unmap_page(%struct.pci_dev* %82, i32 %90, i32 %98, i32 %99)
  %101 = load i32, i32* %14, align 4
  %102 = xor i32 %101, 1
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %81
  %106 = load %struct.sg_ent*, %struct.sg_ent** %9, align 8
  %107 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %106, i32 1
  store %struct.sg_ent* %107, %struct.sg_ent** %9, align 8
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %105, %81
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %71

115:                                              ; preds = %79
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %149

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = add i32 %120, 1
  %122 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %123 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %128 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %127, i32 0, i32 1
  %129 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %128, align 8
  br label %133

130:                                              ; preds = %119
  %131 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %10, align 8
  %132 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %131, i64 1
  br label %133

133:                                              ; preds = %130, %126
  %134 = phi %struct.tx_sw_desc* [ %129, %126 ], [ %132, %130 ]
  store %struct.tx_sw_desc* %134, %struct.tx_sw_desc** %10, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %10, align 8
  %137 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %10, align 8
  %140 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @WR_FLITS, align 4
  %143 = sub nsw i32 %141, %142
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %10, align 8
  %148 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %133, %115
  ret void
}

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
