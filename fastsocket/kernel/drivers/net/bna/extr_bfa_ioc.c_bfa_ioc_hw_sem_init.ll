; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_hw_sem_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_hw_sem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.bfi_ioc_image_hdr = type { i32 }

@BFI_IOC_UNINIT = common dso_local global i32 0, align 4
@BFI_FWBOOT_TYPE_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*)* @bfa_ioc_hw_sem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_hw_sem_init(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca %struct.bfi_ioc_image_hdr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %6 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %15, %1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = call i32 @udelay(i32 20)
  %17 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %18 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @readl(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %33 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @writel(i32 1, i32 %35)
  br label %81

37:                                               ; preds = %22
  %38 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %39 = call i32 @bfa_nw_ioc_fwver_get(%struct.bfa_ioc* %38, %struct.bfi_ioc_image_hdr* %3)
  %40 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @swab32(i32 %41)
  %43 = load i64, i64* @BFI_FWBOOT_TYPE_NORMAL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %47 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @writel(i32 1, i32 %49)
  br label %81

51:                                               ; preds = %37
  %52 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %53 = call i32 @bfa_ioc_fwver_clear(%struct.bfa_ioc* %52)
  %54 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %55 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %56 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @writel(i32 %54, i32 %58)
  %60 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %61 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %62 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @writel(i32 %60, i32 %64)
  %66 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %67 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @readl(i32 %69)
  %71 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %72 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @writel(i32 1, i32 %74)
  %76 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %77 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @writel(i32 1, i32 %79)
  br label %81

81:                                               ; preds = %51, %45, %31
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_nw_ioc_fwver_get(%struct.bfa_ioc*, %struct.bfi_ioc_image_hdr*) #1

declare dso_local i64 @swab32(i32) #1

declare dso_local i32 @bfa_ioc_fwver_clear(%struct.bfa_ioc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
