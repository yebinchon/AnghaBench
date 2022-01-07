; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_read_fcoe_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_read_fcoe_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32* }
%struct.lpfc_fip_param_hdr = type { i64, i64, i32 }
%struct.lpfc_fcoe_params = type { i32*, i32 }

@FIPP_VERSION = common dso_local global i64 0, align 8
@FCOE_PARAM_LENGTH = common dso_local global i64 0, align 8
@FIPP_VLAN_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, i32*)* @lpfc_read_fcoe_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_read_fcoe_param(%struct.lpfc_hba* %0, i32* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lpfc_fip_param_hdr*, align 8
  %6 = alloca %struct.lpfc_fcoe_params*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.lpfc_fip_param_hdr*
  store %struct.lpfc_fip_param_hdr* %8, %struct.lpfc_fip_param_hdr** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 24
  %11 = bitcast i32* %10 to %struct.lpfc_fcoe_params*
  store %struct.lpfc_fcoe_params* %11, %struct.lpfc_fcoe_params** %6, align 8
  %12 = load %struct.lpfc_fip_param_hdr*, %struct.lpfc_fip_param_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_fip_param_hdr, %struct.lpfc_fip_param_hdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FIPP_VERSION, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.lpfc_fip_param_hdr*, %struct.lpfc_fip_param_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_fip_param_hdr, %struct.lpfc_fip_param_hdr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FCOE_PARAM_LENGTH, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %2
  br label %69

24:                                               ; preds = %17
  %25 = load %struct.lpfc_fip_param_hdr*, %struct.lpfc_fip_param_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_fip_param_hdr, %struct.lpfc_fip_param_hdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FIPP_VLAN_VALID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.lpfc_fcoe_params*, %struct.lpfc_fcoe_params** %6, align 8
  %35 = getelementptr inbounds %struct.lpfc_fcoe_params, %struct.lpfc_fcoe_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = and i32 %37, 4095
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %31, %24
  %42 = load %struct.lpfc_fcoe_params*, %struct.lpfc_fcoe_params** %6, align 8
  %43 = getelementptr inbounds %struct.lpfc_fcoe_params, %struct.lpfc_fcoe_params* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.lpfc_fcoe_params*, %struct.lpfc_fcoe_params** %6, align 8
  %52 = getelementptr inbounds %struct.lpfc_fcoe_params, %struct.lpfc_fcoe_params* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.lpfc_fcoe_params*, %struct.lpfc_fcoe_params** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_fcoe_params, %struct.lpfc_fcoe_params* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %41, %23
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
