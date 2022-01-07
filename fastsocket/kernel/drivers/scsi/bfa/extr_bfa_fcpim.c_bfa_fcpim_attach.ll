; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_fcpim_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_fcpim_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcp_mod_s = type { %struct.bfa_s*, %struct.bfa_fcpim_s }
%struct.bfa_s = type { i32 }
%struct.bfa_fcpim_s = type { i32*, i32*, i32, i32, i32, i32, %struct.bfa_s*, %struct.bfa_fcp_mod_s* }
%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.bfa_pcidev_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcp_mod_s*, i8*, %struct.bfa_iocfc_cfg_s*, %struct.bfa_pcidev_s*)* @bfa_fcpim_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcpim_attach(%struct.bfa_fcp_mod_s* %0, i8* %1, %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_pcidev_s* %3) #0 {
  %5 = alloca %struct.bfa_fcp_mod_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %8 = alloca %struct.bfa_pcidev_s*, align 8
  %9 = alloca %struct.bfa_fcpim_s*, align 8
  %10 = alloca %struct.bfa_s*, align 8
  store %struct.bfa_fcp_mod_s* %0, %struct.bfa_fcp_mod_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_iocfc_cfg_s** %7, align 8
  store %struct.bfa_pcidev_s* %3, %struct.bfa_pcidev_s** %8, align 8
  %11 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %5, align 8
  %12 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %11, i32 0, i32 1
  store %struct.bfa_fcpim_s* %12, %struct.bfa_fcpim_s** %9, align 8
  %13 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %13, i32 0, i32 0
  %15 = load %struct.bfa_s*, %struct.bfa_s** %14, align 8
  store %struct.bfa_s* %15, %struct.bfa_s** %10, align 8
  %16 = load %struct.bfa_s*, %struct.bfa_s** %10, align 8
  %17 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %18 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bfa_trc(%struct.bfa_s* %16, i32 %20)
  %22 = load %struct.bfa_s*, %struct.bfa_s** %10, align 8
  %23 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %24 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfa_trc(%struct.bfa_s* %22, i32 %26)
  %28 = load %struct.bfa_s*, %struct.bfa_s** %10, align 8
  %29 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %30 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bfa_trc(%struct.bfa_s* %28, i32 %32)
  %34 = load %struct.bfa_s*, %struct.bfa_s** %10, align 8
  %35 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %36 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bfa_trc(%struct.bfa_s* %34, i32 %38)
  %40 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %5, align 8
  %41 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %42 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %41, i32 0, i32 7
  store %struct.bfa_fcp_mod_s* %40, %struct.bfa_fcp_mod_s** %42, align 8
  %43 = load %struct.bfa_s*, %struct.bfa_s** %10, align 8
  %44 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %45 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %44, i32 0, i32 6
  store %struct.bfa_s* %43, %struct.bfa_s** %45, align 8
  %46 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %47 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %51 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %53 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %57 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %59 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %63 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %65 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %69 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %71 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %73 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %75 = call i32 @bfa_itnim_attach(%struct.bfa_fcpim_s* %74)
  %76 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %77 = call i32 @bfa_tskim_attach(%struct.bfa_fcpim_s* %76)
  %78 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %9, align 8
  %79 = call i32 @bfa_ioim_attach(%struct.bfa_fcpim_s* %78)
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_itnim_attach(%struct.bfa_fcpim_s*) #1

declare dso_local i32 @bfa_tskim_attach(%struct.bfa_fcpim_s*) #1

declare dso_local i32 @bfa_ioim_attach(%struct.bfa_fcpim_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
