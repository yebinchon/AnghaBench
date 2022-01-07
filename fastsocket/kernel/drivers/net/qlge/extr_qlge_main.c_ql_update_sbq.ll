; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_update_sbq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_update_sbq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.rx_ring = type { i64, i32, i64, i32, i32, i32, %struct.bq_desc* }
%struct.bq_desc = type { i64, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"sbq: try cleaning clean_idx = %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"sbq: getting new skb for index %d.\0A\00", align 1
@SMALL_BUFFER_SIZE = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Couldn't get an skb.\0A\00", align 1
@QLGE_SB_PAD = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"PCI mapping failed.\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"sbq: updating prod idx = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*)* @ql_update_sbq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_update_sbq(%struct.ql_adapter* %0, %struct.rx_ring* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bq_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %4, align 8
  %10 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %11 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %174, %2
  %15 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 16
  br i1 %18, label %19, label %179

19:                                               ; preds = %14
  %20 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = urem i64 %22, 16
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %152, %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %155

28:                                               ; preds = %25
  %29 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %29, i32 0, i32 6
  %31 = load %struct.bq_desc*, %struct.bq_desc** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %31, i64 %32
  store %struct.bq_desc* %33, %struct.bq_desc** %7, align 8
  %34 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %35 = load i32, i32* @rx_status, align 4
  %36 = load i32, i32* @KERN_DEBUG, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @netif_printk(%struct.ql_adapter* %34, i32 %35, i32 %36, i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %43 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp eq %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %142

47:                                               ; preds = %28
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = load i32, i32* @rx_status, align 4
  %50 = load i32, i32* @KERN_DEBUG, align 4
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %55 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @netif_printk(%struct.ql_adapter* %48, i32 %49, i32 %50, i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SMALL_BUFFER_SIZE, align 4
  %62 = call %struct.TYPE_6__* @netdev_alloc_skb(i32 %60, i32 %61)
  %63 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %64 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %65, align 8
  %66 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %67 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = icmp eq %struct.TYPE_6__* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %47
  %72 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %73 = load i32, i32* @probe, align 4
  %74 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @netif_err(%struct.ql_adapter* %72, i32 %73, i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %80 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %203

81:                                               ; preds = %47
  %82 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %83 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* @QLGE_SB_PAD, align 4
  %87 = call i32 @skb_reserve(%struct.TYPE_6__* %85, i32 %86)
  %88 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %92 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %98 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %101 = call i32 @pci_map_single(i32 %90, i32 %96, i32 %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @pci_dma_mapping_error(i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %81
  %109 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %110 = load i32, i32* @ifup, align 4
  %111 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @netif_err(%struct.ql_adapter* %109, i32 %110, i32 %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %117 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %119 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = call i32 @dev_kfree_skb_any(%struct.TYPE_6__* %121)
  %123 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %124 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %125, align 8
  br label %203

126:                                              ; preds = %81
  %127 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %128 = load i32, i32* @mapaddr, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @pci_unmap_addr_set(%struct.bq_desc* %127, i32 %128, i32 %129)
  %131 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %132 = load i32, i32* @maplen, align 4
  %133 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %134 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pci_unmap_len_set(%struct.bq_desc* %131, i32 %132, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @cpu_to_le64(i32 %137)
  %139 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %140 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %126, %28
  %143 = load i64, i64* %5, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %5, align 8
  %145 = load i64, i64* %5, align 8
  %146 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %147 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  store i64 0, i64* %5, align 8
  br label %151

151:                                              ; preds = %150, %142
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %25

155:                                              ; preds = %25
  %156 = load i64, i64* %5, align 8
  %157 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %158 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %160 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 16
  store i32 %162, i32* %160, align 8
  %163 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %164 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %168 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %166, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %155
  %172 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %173 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %172, i32 0, i32 3
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %171, %155
  %175 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %176 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 16
  store i32 %178, i32* %176, align 8
  br label %14

179:                                              ; preds = %14
  %180 = load i64, i64* %6, align 8
  %181 = load i64, i64* %5, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %203

183:                                              ; preds = %179
  %184 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %185 = load i32, i32* @rx_status, align 4
  %186 = load i32, i32* @KERN_DEBUG, align 4
  %187 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %188 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %191 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = call i32 @netif_printk(%struct.ql_adapter* %184, i32 %185, i32 %186, i32 %189, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %193)
  %195 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %196 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %200 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ql_write_db_reg(i64 %198, i32 %201)
  br label %203

203:                                              ; preds = %71, %108, %183, %179
  ret void
}

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*, i64) #1

declare dso_local %struct.TYPE_6__* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_6__*) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.bq_desc*, i32, i32) #1

declare dso_local i32 @pci_unmap_len_set(%struct.bq_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ql_write_db_reg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
