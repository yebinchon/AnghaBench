; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc_ct.c_bfa_ioc_ct_firmware_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc_ct.c_bfa_ioc_ct_firmware_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.bfi_ioc_image_hdr = type { i32 }

@BFA_IOC_FWIMG_MINSZ = common dso_local global i64 0, align 8
@BFI_IOC_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc*)* @bfa_ioc_ct_firmware_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_ct_firmware_lock(%struct.bfa_ioc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfi_ioc_image_hdr, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  %7 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %8 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %7)
  %9 = call i64 @bfa_cb_image_get_size(i32 %8)
  %10 = load i64, i64* @BFA_IOC_FWIMG_MINSZ, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %79

13:                                               ; preds = %1
  %14 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_nw_ioc_sem_get(i32 %17)
  %19 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @readl(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %13
  %27 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @writel(i32 1, i32 %30)
  %32 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bfa_nw_ioc_sem_release(i32 %35)
  %37 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @writel(i32 0, i32 %40)
  store i32 1, i32* %2, align 4
  br label %79

42:                                               ; preds = %13
  %43 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @readl(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %50 = icmp ne i32 %48, %49
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %55 = call i32 @bfa_nw_ioc_fwver_get(%struct.bfa_ioc* %54, %struct.bfi_ioc_image_hdr* %6)
  %56 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %57 = call i32 @bfa_nw_ioc_fwver_cmp(%struct.bfa_ioc* %56, %struct.bfi_ioc_image_hdr* %6)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %42
  %60 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bfa_nw_ioc_sem_release(i32 %63)
  store i32 0, i32* %2, align 4
  br label %79

65:                                               ; preds = %42
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @writel(i32 %68, i32 %72)
  %74 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %75 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @bfa_nw_ioc_sem_release(i32 %77)
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %65, %59, %26, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @bfa_cb_image_get_size(i32) #1

declare dso_local i32 @bfa_ioc_asic_gen(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_nw_ioc_sem_get(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_nw_ioc_sem_release(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bfa_nw_ioc_fwver_get(%struct.bfa_ioc*, %struct.bfi_ioc_image_hdr*) #1

declare dso_local i32 @bfa_nw_ioc_fwver_cmp(%struct.bfa_ioc*, %struct.bfi_ioc_image_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
