; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32, i32, i32, %struct.pci_dev*, %struct.be_dma_mem, %struct.be_dma_mem }
%struct.be_dma_mem = type { i32, i8*, i8* }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.pci_dev*)* @be_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_ctrl_init(%struct.beiscsi_hba* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.be_ctrl_info*, align 8
  %7 = alloca %struct.be_dma_mem*, align 8
  %8 = alloca %struct.be_dma_mem*, align 8
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 0
  store %struct.be_ctrl_info* %11, %struct.be_ctrl_info** %6, align 8
  %12 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 5
  store %struct.be_dma_mem* %13, %struct.be_dma_mem** %7, align 8
  %14 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %15 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %14, i32 0, i32 4
  store %struct.be_dma_mem* %15, %struct.be_dma_mem** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %18 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %17, i32 0, i32 3
  store %struct.pci_dev* %16, %struct.pci_dev** %18, align 8
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i32 @beiscsi_map_pci_bars(%struct.beiscsi_hba* %19, %struct.pci_dev* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %78

26:                                               ; preds = %2
  %27 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %27, i32 0, i32 0
  store i32 20, i32* %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %34 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %33, i32 0, i32 2
  %35 = call i8* @pci_alloc_consistent(%struct.pci_dev* %29, i32 %32, i8** %34)
  %36 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %37 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %39 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %26
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %44 = call i32 @beiscsi_unmap_pci_function(%struct.beiscsi_hba* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %78

47:                                               ; preds = %26
  %48 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %49 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %48, i32 0, i32 0
  store i32 4, i32* %49, align 8
  %50 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %51 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @PTR_ALIGN(i8* %52, i32 16)
  %54 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %55 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %57 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @PTR_ALIGN(i8* %58, i32 16)
  %60 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %61 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %63 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @memset(i8* %64, i32 0, i32 4)
  %66 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %67 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %66, i32 0, i32 2
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %70 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %70, i32 0, i32 1
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %74 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %74, i32 0, i32 0
  %76 = call i32 @spin_lock_init(i32* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %47, %42, %24
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @beiscsi_map_pci_bars(%struct.beiscsi_hba*, %struct.pci_dev*) #1

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i32, i8**) #1

declare dso_local i32 @beiscsi_unmap_pci_function(%struct.beiscsi_hba*) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
