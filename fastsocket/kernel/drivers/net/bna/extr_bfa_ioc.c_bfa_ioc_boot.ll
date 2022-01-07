; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_boot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ioc_boots = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFI_FWBOOT_TYPE_MEMTEST = common dso_local global i32 0, align 4
@BFI_IOC_MEMTEST = common dso_local global i32 0, align 4
@BFI_IOC_INITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*, i32, i32)* @bfa_ioc_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_boot(%struct.bfa_ioc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_ioc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %8 = load i32, i32* @ioc_boots, align 4
  %9 = call i32 @bfa_ioc_stats(%struct.bfa_ioc* %7, i32 %8)
  %10 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %11 = call i64 @bfa_ioc_pll_init(%struct.bfa_ioc* %10)
  %12 = load i64, i64* @BFA_STATUS_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %54

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BFI_FWBOOT_TYPE_MEMTEST, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* @BFI_IOC_MEMTEST, align 4
  %21 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @writel(i32 %20, i32 %24)
  %26 = load i32, i32* @BFI_IOC_MEMTEST, align 4
  %27 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %28 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @writel(i32 %26, i32 %30)
  br label %45

32:                                               ; preds = %15
  %33 = load i32, i32* @BFI_IOC_INITING, align 4
  %34 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %35 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @writel(i32 %33, i32 %37)
  %39 = load i32, i32* @BFI_IOC_INITING, align 4
  %40 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %41 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @writel(i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %32, %19
  %46 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %47 = call i32 @bfa_ioc_msgflush(%struct.bfa_ioc* %46)
  %48 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @bfa_ioc_download_fw(%struct.bfa_ioc* %48, i32 %49, i32 %50)
  %52 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %53 = call i32 @bfa_ioc_lpu_start(%struct.bfa_ioc* %52)
  br label %54

54:                                               ; preds = %45, %14
  ret void
}

declare dso_local i32 @bfa_ioc_stats(%struct.bfa_ioc*, i32) #1

declare dso_local i64 @bfa_ioc_pll_init(%struct.bfa_ioc*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_ioc_msgflush(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_download_fw(%struct.bfa_ioc*, i32, i32) #1

declare dso_local i32 @bfa_ioc_lpu_start(%struct.bfa_ioc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
