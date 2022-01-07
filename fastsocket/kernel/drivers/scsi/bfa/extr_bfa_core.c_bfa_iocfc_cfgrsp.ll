; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_cfgrsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_cfgrsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.bfa_iocfc_s, %struct.TYPE_5__ }
%struct.bfa_iocfc_s = type { %struct.bfi_iocfc_cfgrsp_s* }
%struct.bfi_iocfc_cfgrsp_s = type { %struct.TYPE_6__, i32, %struct.bfa_iocfc_fwcfg_s }
%struct.TYPE_6__ = type { i64, i32 }
%struct.bfa_iocfc_fwcfg_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@IOCFC_E_CFG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*)* @bfa_iocfc_cfgrsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_cfgrsp(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca %struct.bfa_iocfc_s*, align 8
  %4 = alloca %struct.bfi_iocfc_cfgrsp_s*, align 8
  %5 = alloca %struct.bfa_iocfc_fwcfg_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %6 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %6, i32 0, i32 0
  store %struct.bfa_iocfc_s* %7, %struct.bfa_iocfc_s** %3, align 8
  %8 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %8, i32 0, i32 0
  %10 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %9, align 8
  store %struct.bfi_iocfc_cfgrsp_s* %10, %struct.bfi_iocfc_cfgrsp_s** %4, align 8
  %11 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %11, i32 0, i32 2
  store %struct.bfa_iocfc_fwcfg_s* %12, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %13 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @be16_to_cpu(i8* %20)
  %22 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %24, i32 0, i32 4
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @be16_to_cpu(i8* %26)
  %28 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @be16_to_cpu(i8* %32)
  %34 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %35 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %37 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @be16_to_cpu(i8* %38)
  %40 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @be16_to_cpu(i8* %44)
  %46 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @be16_to_cpu(i8* %50)
  %52 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_fwcfg_s* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %55 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %55, i32 0, i32 1
  %57 = call i32 @bfa_iocfc_qreg(%struct.bfa_s* %54, i32* %56)
  %58 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %59 = load %struct.bfa_iocfc_fwcfg_s*, %struct.bfa_iocfc_fwcfg_s** %5, align 8
  %60 = call i32 @bfa_iocfc_res_recfg(%struct.bfa_s* %58, %struct.bfa_iocfc_fwcfg_s* %59)
  %61 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %62 = call i32 @bfa_msix_queue_install(%struct.bfa_s* %61)
  %63 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %64 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %64, i32 0, i32 0
  %66 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %65, align 8
  %67 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %1
  %72 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %73 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %73, i32 0, i32 0
  %75 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %74, align 8
  %76 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %80 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %78, i64* %83, align 8
  %84 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %85 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %85, i32 0, i32 0
  %87 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %86, align 8
  %88 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %92 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %90, i32* %95, align 8
  %96 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %97 = load i32, i32* @IOCFC_E_CFG_DONE, align 4
  %98 = call i32 @bfa_fsm_send_event(%struct.bfa_iocfc_s* %96, i32 %97)
  br label %99

99:                                               ; preds = %71, %1
  ret void
}

declare dso_local i8* @be16_to_cpu(i8*) #1

declare dso_local i32 @bfa_iocfc_qreg(%struct.bfa_s*, i32*) #1

declare dso_local i32 @bfa_iocfc_res_recfg(%struct.bfa_s*, %struct.bfa_iocfc_fwcfg_s*) #1

declare dso_local i32 @bfa_msix_queue_install(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_iocfc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
