; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_sgiseeq_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_sgiseeq_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.sgiseeq_private = type { i32, i32, %struct.sgiseeq_tx_desc* }
%struct.sgiseeq_tx_desc = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hpc3_ethregs = type { i64, i32 }
%struct.sgiseeq_regs = type { i32 }

@HPC3_ETXCTRL_ACTIVE = common dso_local global i64 0, align 8
@SEEQ_TSTAT_PTRANS = common dso_local global i64 0, align 8
@SEEQ_TSTAT_R16 = common dso_local global i64 0, align 8
@SEEQ_TSTAT_UFLOW = common dso_local global i64 0, align 8
@SEEQ_TSTAT_LCLS = common dso_local global i64 0, align 8
@HPCDMA_XIU = common dso_local global i32 0, align 4
@HPCDMA_ETXD = common dso_local global i32 0, align 4
@HPCDMA_XIE = common dso_local global i32 0, align 4
@HPCDMA_EOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sgiseeq_private*, %struct.hpc3_ethregs*, %struct.sgiseeq_regs*)* @sgiseeq_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgiseeq_tx(%struct.net_device* %0, %struct.sgiseeq_private* %1, %struct.hpc3_ethregs* %2, %struct.sgiseeq_regs* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sgiseeq_private*, align 8
  %7 = alloca %struct.hpc3_ethregs*, align 8
  %8 = alloca %struct.sgiseeq_regs*, align 8
  %9 = alloca %struct.sgiseeq_tx_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sgiseeq_private* %1, %struct.sgiseeq_private** %6, align 8
  store %struct.hpc3_ethregs* %2, %struct.hpc3_ethregs** %7, align 8
  store %struct.sgiseeq_regs* %3, %struct.sgiseeq_regs** %8, align 8
  %12 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %13 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %16 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %8, align 8
  %17 = call i32 @tx_maybe_reset_collisions(%struct.sgiseeq_private* %15, %struct.sgiseeq_regs* %16)
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @HPC3_ETXCTRL_ACTIVE, align 8
  %20 = load i64, i64* @SEEQ_TSTAT_PTRANS, align 8
  %21 = or i64 %19, %20
  %22 = and i64 %18, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %58, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @SEEQ_TSTAT_R16, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @SEEQ_TSTAT_UFLOW, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @SEEQ_TSTAT_LCLS, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %4
  %59 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %60 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %152, %58
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %65 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %156

68:                                               ; preds = %62
  %69 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %70 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %69, i32 0, i32 2
  %71 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %71, i64 %73
  store %struct.sgiseeq_tx_desc* %74, %struct.sgiseeq_tx_desc** %9, align 8
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %77 = call i32 @dma_sync_desc_cpu(%struct.net_device* %75, %struct.sgiseeq_tx_desc* %76)
  %78 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %79 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HPCDMA_XIU, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %68
  br label %156

86:                                               ; preds = %68
  %87 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %88 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @HPCDMA_ETXD, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %86
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @HPC3_ETXCTRL_ACTIVE, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %94
  %100 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %101 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %102 = call i32 @VIRT_TO_DMA(%struct.sgiseeq_private* %100, %struct.sgiseeq_tx_desc* %101)
  %103 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %104 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load i64, i64* @HPC3_ETXCTRL_ACTIVE, align 8
  %106 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %107 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %99, %94
  br label %156

109:                                              ; preds = %86
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %116 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @NEXT_TX(i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %121 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @HPCDMA_XIU, align 4
  %123 = load i32, i32* @HPCDMA_XIE, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %127 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %125
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* @HPCDMA_EOX, align 4
  %132 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %133 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 8
  %137 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %138 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %109
  %142 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %143 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @dev_kfree_skb_any(i32* %144)
  %146 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %147 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %146, i32 0, i32 0
  store i32* null, i32** %147, align 8
  br label %148

148:                                              ; preds = %141, %109
  %149 = load %struct.net_device*, %struct.net_device** %5, align 8
  %150 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %151 = call i32 @dma_sync_desc_dev(%struct.net_device* %149, %struct.sgiseeq_tx_desc* %150)
  br label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = call i8* @NEXT_TX(i32 %153)
  %155 = ptrtoint i8* %154 to i32
  store i32 %155, i32* %11, align 4
  br label %62

156:                                              ; preds = %108, %85, %62
  ret void
}

declare dso_local i32 @tx_maybe_reset_collisions(%struct.sgiseeq_private*, %struct.sgiseeq_regs*) #1

declare dso_local i32 @dma_sync_desc_cpu(%struct.net_device*, %struct.sgiseeq_tx_desc*) #1

declare dso_local i32 @VIRT_TO_DMA(%struct.sgiseeq_private*, %struct.sgiseeq_tx_desc*) #1

declare dso_local i8* @NEXT_TX(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @dma_sync_desc_dev(%struct.net_device*, %struct.sgiseeq_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
