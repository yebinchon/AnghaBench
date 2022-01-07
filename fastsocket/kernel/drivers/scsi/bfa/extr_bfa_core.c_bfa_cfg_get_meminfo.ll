; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_cfg_get_meminfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_cfg_get_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*)* }
%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.bfa_meminfo_s = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.bfa_s = type { i32 }
%struct.bfa_mem_dma_s = type { i32 }

@hal_mods = common dso_local global %struct.TYPE_8__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cfg_get_meminfo(%struct.bfa_iocfc_cfg_s* %0, %struct.bfa_meminfo_s* %1, %struct.bfa_s* %2) #0 {
  %4 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %5 = alloca %struct.bfa_meminfo_s*, align 8
  %6 = alloca %struct.bfa_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfa_mem_dma_s*, align 8
  %9 = alloca %struct.bfa_mem_dma_s*, align 8
  %10 = alloca %struct.bfa_mem_dma_s*, align 8
  %11 = alloca %struct.bfa_mem_dma_s*, align 8
  %12 = alloca %struct.bfa_mem_dma_s*, align 8
  %13 = alloca %struct.bfa_mem_dma_s*, align 8
  %14 = alloca %struct.bfa_mem_dma_s*, align 8
  %15 = alloca %struct.bfa_mem_dma_s*, align 8
  store %struct.bfa_iocfc_cfg_s* %0, %struct.bfa_iocfc_cfg_s** %4, align 8
  store %struct.bfa_meminfo_s* %1, %struct.bfa_meminfo_s** %5, align 8
  store %struct.bfa_s* %2, %struct.bfa_s** %6, align 8
  %16 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %17 = call %struct.bfa_mem_dma_s* @BFA_MEM_PORT_DMA(%struct.bfa_s* %16)
  store %struct.bfa_mem_dma_s* %17, %struct.bfa_mem_dma_s** %8, align 8
  %18 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %19 = call %struct.bfa_mem_dma_s* @BFA_MEM_ABLK_DMA(%struct.bfa_s* %18)
  store %struct.bfa_mem_dma_s* %19, %struct.bfa_mem_dma_s** %9, align 8
  %20 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %21 = call %struct.bfa_mem_dma_s* @BFA_MEM_CEE_DMA(%struct.bfa_s* %20)
  store %struct.bfa_mem_dma_s* %21, %struct.bfa_mem_dma_s** %10, align 8
  %22 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %23 = call %struct.bfa_mem_dma_s* @BFA_MEM_SFP_DMA(%struct.bfa_s* %22)
  store %struct.bfa_mem_dma_s* %23, %struct.bfa_mem_dma_s** %11, align 8
  %24 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %25 = call %struct.bfa_mem_dma_s* @BFA_MEM_FLASH_DMA(%struct.bfa_s* %24)
  store %struct.bfa_mem_dma_s* %25, %struct.bfa_mem_dma_s** %12, align 8
  %26 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %27 = call %struct.bfa_mem_dma_s* @BFA_MEM_DIAG_DMA(%struct.bfa_s* %26)
  store %struct.bfa_mem_dma_s* %27, %struct.bfa_mem_dma_s** %13, align 8
  %28 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %29 = call %struct.bfa_mem_dma_s* @BFA_MEM_PHY_DMA(%struct.bfa_s* %28)
  store %struct.bfa_mem_dma_s* %29, %struct.bfa_mem_dma_s** %14, align 8
  %30 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %31 = call %struct.bfa_mem_dma_s* @BFA_MEM_FRU_DMA(%struct.bfa_s* %30)
  store %struct.bfa_mem_dma_s* %31, %struct.bfa_mem_dma_s** %15, align 8
  %32 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %33 = icmp eq %struct.bfa_iocfc_cfg_s* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %36 = icmp eq %struct.bfa_meminfo_s* %35, null
  br label %37

37:                                               ; preds = %34, %3
  %38 = phi i1 [ true, %3 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %42 = bitcast %struct.bfa_meminfo_s* %41 to i8*
  %43 = call i32 @memset(i8* %42, i32 0, i32 8)
  %44 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfa_meminfo_s, %struct.bfa_meminfo_s* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_meminfo_s, %struct.bfa_meminfo_s* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %53 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %54 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %55 = call i32 @bfa_iocfc_meminfo(%struct.bfa_iocfc_cfg_s* %52, %struct.bfa_meminfo_s* %53, %struct.bfa_s* %54)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %75, %37
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @hal_mods, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %57, i64 %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = icmp ne %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @hal_mods, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %64, i64 %66
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32 (%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*)*, i32 (%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*)** %69, align 8
  %71 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %72 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %73 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %74 = call i32 %70(%struct.bfa_iocfc_cfg_s* %71, %struct.bfa_meminfo_s* %72, %struct.bfa_s* %73)
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %56

78:                                               ; preds = %56
  %79 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %80 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %8, align 8
  %81 = call i32 (...) @bfa_port_meminfo()
  %82 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %79, %struct.bfa_mem_dma_s* %80, i32 %81)
  %83 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %84 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %9, align 8
  %85 = call i32 (...) @bfa_ablk_meminfo()
  %86 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %83, %struct.bfa_mem_dma_s* %84, i32 %85)
  %87 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %88 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %10, align 8
  %89 = call i32 (...) @bfa_cee_meminfo()
  %90 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %87, %struct.bfa_mem_dma_s* %88, i32 %89)
  %91 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %92 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %11, align 8
  %93 = call i32 (...) @bfa_sfp_meminfo()
  %94 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %91, %struct.bfa_mem_dma_s* %92, i32 %93)
  %95 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %96 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %12, align 8
  %97 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %98 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @bfa_flash_meminfo(i32 %100)
  %102 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %95, %struct.bfa_mem_dma_s* %96, i32 %101)
  %103 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %104 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %13, align 8
  %105 = call i32 (...) @bfa_diag_meminfo()
  %106 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %103, %struct.bfa_mem_dma_s* %104, i32 %105)
  %107 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %108 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %14, align 8
  %109 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %110 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @bfa_phy_meminfo(i32 %112)
  %114 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %107, %struct.bfa_mem_dma_s* %108, i32 %113)
  %115 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %116 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %15, align 8
  %117 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %118 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bfa_fru_meminfo(i32 %120)
  %122 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %115, %struct.bfa_mem_dma_s* %116, i32 %121)
  ret void
}

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_PORT_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_ABLK_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_CEE_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_SFP_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_FLASH_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_DIAG_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_PHY_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_FRU_DMA(%struct.bfa_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bfa_iocfc_meminfo(%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s*, %struct.bfa_mem_dma_s*, i32) #1

declare dso_local i32 @bfa_port_meminfo(...) #1

declare dso_local i32 @bfa_ablk_meminfo(...) #1

declare dso_local i32 @bfa_cee_meminfo(...) #1

declare dso_local i32 @bfa_sfp_meminfo(...) #1

declare dso_local i32 @bfa_flash_meminfo(i32) #1

declare dso_local i32 @bfa_diag_meminfo(...) #1

declare dso_local i32 @bfa_phy_meminfo(i32) #1

declare dso_local i32 @bfa_fru_meminfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
