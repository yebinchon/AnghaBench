; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_rsnn_nn_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_rsnn_nn_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.ct_hdr_s = type { i32 }
%struct.fcgs_rsnn_nn_req_s = type { i64, i64, i32 }

@FC_NAME_SERVER = common dso_local global i32 0, align 4
@GS_RSNN_NN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_rsnn_nn_build(%struct.fchs_s* %0, i8* %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.fchs_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.ct_hdr_s*, align 8
  %12 = alloca %struct.fcgs_rsnn_nn_req_s*, align 8
  %13 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.ct_hdr_s*
  store %struct.ct_hdr_s* %15, %struct.ct_hdr_s** %11, align 8
  %16 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %11, align 8
  %17 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %16, i64 1
  %18 = bitcast %struct.ct_hdr_s* %17 to %struct.fcgs_rsnn_nn_req_s*
  store %struct.fcgs_rsnn_nn_req_s* %18, %struct.fcgs_rsnn_nn_req_s** %12, align 8
  %19 = load i32, i32* @FC_NAME_SERVER, align 4
  %20 = call i32 @bfa_hton3b(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @fc_gs_fchdr_build(%struct.fchs_s* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GS_RSNN_NN, align 4
  %28 = call i32 @fc_gs_cthdr_build(%struct.ct_hdr_s* %25, i32 %26, i32 %27)
  %29 = load %struct.fcgs_rsnn_nn_req_s*, %struct.fcgs_rsnn_nn_req_s** %12, align 8
  %30 = call i32 @memset(%struct.fcgs_rsnn_nn_req_s* %29, i32 0, i32 24)
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.fcgs_rsnn_nn_req_s*, %struct.fcgs_rsnn_nn_req_s** %12, align 8
  %33 = getelementptr inbounds %struct.fcgs_rsnn_nn_req_s, %struct.fcgs_rsnn_nn_req_s* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = bitcast i64* %34 to i8*
  %36 = call i64 @strlen(i8* %35)
  %37 = load %struct.fcgs_rsnn_nn_req_s*, %struct.fcgs_rsnn_nn_req_s** %12, align 8
  %38 = getelementptr inbounds %struct.fcgs_rsnn_nn_req_s, %struct.fcgs_rsnn_nn_req_s* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.fcgs_rsnn_nn_req_s*, %struct.fcgs_rsnn_nn_req_s** %12, align 8
  %40 = getelementptr inbounds %struct.fcgs_rsnn_nn_req_s, %struct.fcgs_rsnn_nn_req_s* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i64*, i64** %10, align 8
  %44 = bitcast i64* %43 to i8*
  %45 = load %struct.fcgs_rsnn_nn_req_s*, %struct.fcgs_rsnn_nn_req_s** %12, align 8
  %46 = getelementptr inbounds %struct.fcgs_rsnn_nn_req_s, %struct.fcgs_rsnn_nn_req_s* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @strncpy(i8* %42, i8* %44, i64 %47)
  ret i32 28
}

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @fc_gs_fchdr_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @fc_gs_cthdr_build(%struct.ct_hdr_s*, i32, i32) #1

declare dso_local i32 @memset(%struct.fcgs_rsnn_nn_req_s*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
