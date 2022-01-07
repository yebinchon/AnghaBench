; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_tskim_s = type { i32, i32, i32, i32, %struct.scsi_lun, %struct.bfa_itnim_s* }
%struct.scsi_lun = type { i32 }
%struct.bfa_itnim_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@tm_cmnds = common dso_local global i32 0, align 4
@BFA_TSKIM_SM_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_tskim_start(%struct.bfa_tskim_s* %0, %struct.bfa_itnim_s* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.scsi_lun, align 4
  %7 = alloca %struct.bfa_tskim_s*, align 8
  %8 = alloca %struct.bfa_itnim_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.bfa_tskim_s* %0, %struct.bfa_tskim_s** %7, align 8
  store %struct.bfa_itnim_s* %1, %struct.bfa_itnim_s** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %13 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %14 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %13, i32 0, i32 5
  store %struct.bfa_itnim_s* %12, %struct.bfa_itnim_s** %14, align 8
  %15 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %16 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %15, i32 0, i32 4
  %17 = bitcast %struct.scsi_lun* %16 to i8*
  %18 = bitcast %struct.scsi_lun* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %21 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %24 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @BFA_FALSE, align 4
  %26 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %27 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %29 = load i32, i32* @tm_cmnds, align 4
  %30 = call i32 @bfa_stats(%struct.bfa_itnim_s* %28, i32 %29)
  %31 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %32 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %31, i32 0, i32 1
  %33 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %34 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %33, i32 0, i32 0
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %37 = load i32, i32* @BFA_TSKIM_SM_START, align 4
  %38 = call i32 @bfa_sm_send_event(%struct.bfa_tskim_s* %36, i32 %37)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bfa_stats(%struct.bfa_itnim_s*, i32) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_tskim_s*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
