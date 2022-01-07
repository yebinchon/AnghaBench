; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc_cb.c_bfa_ioc_cb_sync_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc_cb.c_bfa_ioc_cb_sync_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32 }

@BFI_IOC_UNINIT = common dso_local global i64 0, align 8
@BFI_IOC_INITING = common dso_local global i64 0, align 8
@BFI_IOC_DISABLED = common dso_local global i64 0, align 8
@BFI_IOC_MEMTEST = common dso_local global i64 0, align 8
@BFI_IOC_OP = common dso_local global i64 0, align 8
@BFA_TRUE = common dso_local global i32 0, align 4
@BFI_IOC_FAIL = common dso_local global i64 0, align 8
@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc_s*)* @bfa_ioc_cb_sync_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_cb_sync_complete(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  %6 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %7 = call i64 @bfa_ioc_cb_get_cur_ioc_fwstate(%struct.bfa_ioc_s* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @BFI_IOC_UNINIT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %27, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @BFI_IOC_INITING, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @BFI_IOC_DISABLED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @BFI_IOC_MEMTEST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @BFI_IOC_OP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19, %15, %11, %1
  %28 = load i32, i32* @BFA_TRUE, align 4
  store i32 %28, i32* %2, align 4
  br label %55

29:                                               ; preds = %23
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %31 = call i64 @bfa_ioc_cb_get_alt_ioc_fwstate(%struct.bfa_ioc_s* %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @BFI_IOC_FAIL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @BFI_IOC_DISABLED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @BFI_IOC_UNINIT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @BFI_IOC_INITING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @BFI_IOC_MEMTEST, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43, %39, %35, %29
  %52 = load i32, i32* @BFA_TRUE, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @BFA_FALSE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %51, %27
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @bfa_ioc_cb_get_cur_ioc_fwstate(%struct.bfa_ioc_s*) #1

declare dso_local i64 @bfa_ioc_cb_get_alt_ioc_fwstate(%struct.bfa_ioc_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
