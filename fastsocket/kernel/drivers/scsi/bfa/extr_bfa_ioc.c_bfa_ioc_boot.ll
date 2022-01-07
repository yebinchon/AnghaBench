; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_boot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32 }

@ioc_boots = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFI_FWBOOT_TYPE_MEMTEST = common dso_local global i32 0, align 4
@BFI_IOC_MEMTEST = common dso_local global i32 0, align 4
@BFI_IOC_INITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_boot(%struct.bfa_ioc_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_ioc_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %8 = load i32, i32* @ioc_boots, align 4
  %9 = call i32 @bfa_ioc_stats(%struct.bfa_ioc_s* %7, i32 %8)
  %10 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %11 = call i64 @bfa_ioc_pll_init(%struct.bfa_ioc_s* %10)
  %12 = load i64, i64* @BFA_STATUS_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %42

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BFI_FWBOOT_TYPE_MEMTEST, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %21 = load i32, i32* @BFI_IOC_MEMTEST, align 4
  %22 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc_s* %20, i32 %21)
  %23 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %24 = load i32, i32* @BFI_IOC_MEMTEST, align 4
  %25 = call i32 @bfa_ioc_set_alt_ioc_fwstate(%struct.bfa_ioc_s* %23, i32 %24)
  br label %33

26:                                               ; preds = %15
  %27 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %28 = load i32, i32* @BFI_IOC_INITING, align 4
  %29 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc_s* %27, i32 %28)
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %31 = load i32, i32* @BFI_IOC_INITING, align 4
  %32 = call i32 @bfa_ioc_set_alt_ioc_fwstate(%struct.bfa_ioc_s* %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %19
  %34 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %35 = call i32 @bfa_ioc_msgflush(%struct.bfa_ioc_s* %34)
  %36 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @bfa_ioc_download_fw(%struct.bfa_ioc_s* %36, i32 %37, i32 %38)
  %40 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %41 = call i32 @bfa_ioc_lpu_start(%struct.bfa_ioc_s* %40)
  br label %42

42:                                               ; preds = %33, %14
  ret void
}

declare dso_local i32 @bfa_ioc_stats(%struct.bfa_ioc_s*, i32) #1

declare dso_local i64 @bfa_ioc_pll_init(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_set_alt_ioc_fwstate(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_msgflush(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_download_fw(%struct.bfa_ioc_s*, i32, i32) #1

declare dso_local i32 @bfa_ioc_lpu_start(%struct.bfa_ioc_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
