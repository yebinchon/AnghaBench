; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.bfa_s = type { %struct.TYPE_7__, i32*, i32, %struct.TYPE_6__, %struct.bfa_ioc_s, i32 }
%struct.TYPE_7__ = type { i8*, i32, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.bfa_ioc_s = type { i32 }
%struct.bfa_iocfc_cfg_s = type { i32 }
%struct.bfa_pcidev_s = type { i32 }

@bfa_iocfc_enable_cbfn = common dso_local global i32 0, align 4
@bfa_iocfc_cbfn = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@bfa_iocfc_disable_cbfn = common dso_local global i32 0, align 4
@bfa_iocfc_hbfail_cbfn = common dso_local global i32 0, align 4
@bfa_iocfc_reset_cbfn = common dso_local global i32 0, align 4
@BFI_PCIFN_CLASS_FC = common dso_local global i32 0, align 4
@bfa_mbox_isrs = common dso_local global i32 0, align 4
@BFI_IOC_MAX_CQS = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i8* null, align 8
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@bfa_iocfc_sm_stopped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_iocfc_attach(%struct.bfa_s* %0, i8* %1, %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_pcidev_s* %3) #0 {
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %8 = alloca %struct.bfa_pcidev_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfa_ioc_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_iocfc_cfg_s** %7, align 8
  store %struct.bfa_pcidev_s* %3, %struct.bfa_pcidev_s** %8, align 8
  %11 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %12 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %11, i32 0, i32 4
  store %struct.bfa_ioc_s* %12, %struct.bfa_ioc_s** %10, align 8
  %13 = load i32, i32* @bfa_iocfc_enable_cbfn, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bfa_iocfc_cbfn, i32 0, i32 3), align 4
  %14 = load i32, i32* @bfa_iocfc_disable_cbfn, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bfa_iocfc_cbfn, i32 0, i32 2), align 4
  %15 = load i32, i32* @bfa_iocfc_hbfail_cbfn, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bfa_iocfc_cbfn, i32 0, i32 1), align 4
  %16 = load i32, i32* @bfa_iocfc_reset_cbfn, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bfa_iocfc_cbfn, i32 0, i32 0), align 4
  %17 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %10, align 8
  %21 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %22, i32 0, i32 4
  %24 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %25 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %25, i32 0, i32 3
  %27 = call i32 @bfa_ioc_attach(%struct.bfa_ioc_s* %23, %struct.bfa_s* %24, %struct.TYPE_5__* @bfa_iocfc_cbfn, %struct.TYPE_6__* %26)
  %28 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %28, i32 0, i32 4
  %30 = load %struct.bfa_pcidev_s*, %struct.bfa_pcidev_s** %8, align 8
  %31 = load i32, i32* @BFI_PCIFN_CLASS_FC, align 4
  %32 = call i32 @bfa_ioc_pci_init(%struct.bfa_ioc_s* %29, %struct.bfa_pcidev_s* %30, i32 %31)
  %33 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %33, i32 0, i32 4
  %35 = load i32, i32* @bfa_mbox_isrs, align 4
  %36 = call i32 @bfa_ioc_mbox_register(%struct.bfa_ioc_s* %34, i32 %35)
  %37 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %40 = load %struct.bfa_pcidev_s*, %struct.bfa_pcidev_s** %8, align 8
  %41 = call i32 @bfa_iocfc_init_mem(%struct.bfa_s* %37, i8* %38, %struct.bfa_iocfc_cfg_s* %39, %struct.bfa_pcidev_s* %40)
  %42 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %43 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %44 = call i32 @bfa_iocfc_mem_claim(%struct.bfa_s* %42, %struct.bfa_iocfc_cfg_s* %43)
  %45 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %49, i32 0, i32 2
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %64, %4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @BFI_IOC_MAX_CQS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %52

67:                                               ; preds = %52
  %68 = load i8*, i8** @BFA_FALSE, align 8
  %69 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %70 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i8* %68, i8** %71, align 8
  %72 = load i32, i32* @BFA_STATUS_OK, align 4
  %73 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %74 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load i8*, i8** @BFA_FALSE, align 8
  %77 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %78 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %81 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %80, i32 0, i32 0
  %82 = load i32, i32* @bfa_iocfc_sm_stopped, align 4
  %83 = call i32 @bfa_fsm_set_state(%struct.TYPE_7__* %81, i32 %82)
  ret void
}

declare dso_local i32 @bfa_ioc_attach(%struct.bfa_ioc_s*, %struct.bfa_s*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @bfa_ioc_pci_init(%struct.bfa_ioc_s*, %struct.bfa_pcidev_s*, i32) #1

declare dso_local i32 @bfa_ioc_mbox_register(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_iocfc_init_mem(%struct.bfa_s*, i8*, %struct.bfa_iocfc_cfg_s*, %struct.bfa_pcidev_s*) #1

declare dso_local i32 @bfa_iocfc_mem_claim(%struct.bfa_s*, %struct.bfa_iocfc_cfg_s*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
