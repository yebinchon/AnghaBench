; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_hwinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_hwinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BFI_IOC_UNINIT = common dso_local global i32 0, align 4
@BFI_FWBOOT_ENV_OS = common dso_local global i32 0, align 4
@BFI_FWBOOT_TYPE_NORMAL = common dso_local global i32 0, align 4
@BFI_IOC_INITING = common dso_local global i32 0, align 4
@BFI_IOC_DISABLED = common dso_local global i32 0, align 4
@BFI_IOC_OP = common dso_local global i32 0, align 4
@IOCPF_E_FWREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*, i32)* @bfa_ioc_hwinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_hwinit(%struct.bfa_ioc* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @BFI_IOC_UNINIT, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* @BFI_FWBOOT_ENV_OS, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %27

23:                                               ; preds = %17
  %24 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @bfa_ioc_fwver_valid(%struct.bfa_ioc* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i32 [ 0, %22 ], [ %26, %23 ]
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %33 = load i32, i32* @BFI_FWBOOT_TYPE_NORMAL, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @bfa_ioc_boot(%struct.bfa_ioc* %32, i32 %33, i32 %34)
  %36 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %37 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc* %36)
  br label %67

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @BFI_IOC_INITING, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %44 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc* %43)
  br label %67

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @BFI_IOC_DISABLED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @BFI_IOC_OP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49, %45
  %54 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %55 = call i32 @bfa_ioc_msgflush(%struct.bfa_ioc* %54)
  %56 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %56, i32 0, i32 0
  %58 = load i32, i32* @IOCPF_E_FWREADY, align 4
  %59 = call i32 @bfa_fsm_send_event(i32* %57, i32 %58)
  br label %67

60:                                               ; preds = %49
  %61 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %62 = load i32, i32* @BFI_FWBOOT_TYPE_NORMAL, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @bfa_ioc_boot(%struct.bfa_ioc* %61, i32 %62, i32 %63)
  %65 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %66 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc* %65)
  br label %67

67:                                               ; preds = %60, %53, %42, %31
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @bfa_ioc_fwver_valid(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_ioc_boot(%struct.bfa_ioc*, i32, i32) #1

declare dso_local i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_msgflush(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
