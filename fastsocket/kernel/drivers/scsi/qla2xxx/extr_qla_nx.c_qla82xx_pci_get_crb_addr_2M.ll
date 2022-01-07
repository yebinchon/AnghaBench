; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pci_get_crb_addr_2M.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pci_get_crb_addr_2M.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.crb_128M_2M_sub_block_map* }
%struct.crb_128M_2M_sub_block_map = type { i64, i64, i64, i64 }
%struct.qla_hw_data = type { i64 }

@QLA82XX_CRB_MAX = common dso_local global i64 0, align 8
@QLA82XX_PCI_CAMQM = common dso_local global i64 0, align 8
@QLA82XX_PCI_CAMQM_2M_END = common dso_local global i64 0, align 8
@QLA82XX_PCI_CAMQM_2M_BASE = common dso_local global i64 0, align 8
@QLA82XX_PCI_CRBSPACE = common dso_local global i64 0, align 8
@crb_128M_2M_map = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i64*)* @qla82xx_pci_get_crb_addr_2M to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_pci_get_crb_addr_2M(%struct.qla_hw_data* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.crb_128M_2M_sub_block_map*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %5, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QLA82XX_CRB_MAX, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %91

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QLA82XX_PCI_CAMQM, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QLA82XX_PCI_CAMQM_2M_END, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QLA82XX_PCI_CAMQM, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load i64, i64* @QLA82XX_PCI_CAMQM_2M_BASE, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load i64*, i64** %5, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %3, align 4
  br label %91

34:                                               ; preds = %17, %12
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QLA82XX_PCI_CRBSPACE, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %91

40:                                               ; preds = %34
  %41 = load i64, i64* @QLA82XX_PCI_CRBSPACE, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, %41
  store i64 %44, i64* %42, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @crb_128M_2M_map, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @CRB_BLK(i64 %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.crb_128M_2M_sub_block_map*, %struct.crb_128M_2M_sub_block_map** %50, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @CRB_SUBBLK(i64 %53)
  %55 = getelementptr inbounds %struct.crb_128M_2M_sub_block_map, %struct.crb_128M_2M_sub_block_map* %51, i64 %54
  store %struct.crb_128M_2M_sub_block_map* %55, %struct.crb_128M_2M_sub_block_map** %6, align 8
  %56 = load %struct.crb_128M_2M_sub_block_map*, %struct.crb_128M_2M_sub_block_map** %6, align 8
  %57 = getelementptr inbounds %struct.crb_128M_2M_sub_block_map, %struct.crb_128M_2M_sub_block_map* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %40
  %61 = load %struct.crb_128M_2M_sub_block_map*, %struct.crb_128M_2M_sub_block_map** %6, align 8
  %62 = getelementptr inbounds %struct.crb_128M_2M_sub_block_map, %struct.crb_128M_2M_sub_block_map* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %63, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %60
  %68 = load %struct.crb_128M_2M_sub_block_map*, %struct.crb_128M_2M_sub_block_map** %6, align 8
  %69 = getelementptr inbounds %struct.crb_128M_2M_sub_block_map, %struct.crb_128M_2M_sub_block_map* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %5, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %70, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %67
  %75 = load i64*, i64** %5, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.crb_128M_2M_sub_block_map*, %struct.crb_128M_2M_sub_block_map** %6, align 8
  %78 = getelementptr inbounds %struct.crb_128M_2M_sub_block_map, %struct.crb_128M_2M_sub_block_map* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.crb_128M_2M_sub_block_map*, %struct.crb_128M_2M_sub_block_map** %6, align 8
  %82 = getelementptr inbounds %struct.crb_128M_2M_sub_block_map, %struct.crb_128M_2M_sub_block_map* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %86 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load i64*, i64** %5, align 8
  store i64 %88, i64* %89, align 8
  store i32 0, i32* %3, align 4
  br label %91

90:                                               ; preds = %67, %60, %40
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %74, %39, %22, %11
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @CRB_BLK(i64) #1

declare dso_local i64 @CRB_SUBBLK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
