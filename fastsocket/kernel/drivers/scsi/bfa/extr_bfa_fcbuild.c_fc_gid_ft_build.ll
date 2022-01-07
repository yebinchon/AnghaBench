; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_gid_ft_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_gid_ft_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.ct_hdr_s = type { i32 }
%struct.fcgs_gidft_req_s = type { i64, i64, i32 }

@FC_NAME_SERVER = common dso_local global i32 0, align 4
@GS_GID_FT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_gid_ft_build(%struct.fchs_s* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ct_hdr_s*, align 8
  %10 = alloca %struct.fcgs_gidft_req_s*, align 8
  %11 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ct_hdr_s*
  store %struct.ct_hdr_s* %13, %struct.ct_hdr_s** %9, align 8
  %14 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %9, align 8
  %15 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %14, i64 1
  %16 = bitcast %struct.ct_hdr_s* %15 to %struct.fcgs_gidft_req_s*
  store %struct.fcgs_gidft_req_s* %16, %struct.fcgs_gidft_req_s** %10, align 8
  %17 = load i32, i32* @FC_NAME_SERVER, align 4
  %18 = call i32 @bfa_hton3b(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @fc_gs_fchdr_build(%struct.fchs_s* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GS_GID_FT, align 4
  %26 = call i32 @fc_gs_cthdr_build(%struct.ct_hdr_s* %23, i32 %24, i32 %25)
  %27 = load %struct.fcgs_gidft_req_s*, %struct.fcgs_gidft_req_s** %10, align 8
  %28 = call i32 @memset(%struct.fcgs_gidft_req_s* %27, i32 0, i32 24)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.fcgs_gidft_req_s*, %struct.fcgs_gidft_req_s** %10, align 8
  %31 = getelementptr inbounds %struct.fcgs_gidft_req_s, %struct.fcgs_gidft_req_s* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.fcgs_gidft_req_s*, %struct.fcgs_gidft_req_s** %10, align 8
  %33 = getelementptr inbounds %struct.fcgs_gidft_req_s, %struct.fcgs_gidft_req_s* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.fcgs_gidft_req_s*, %struct.fcgs_gidft_req_s** %10, align 8
  %35 = getelementptr inbounds %struct.fcgs_gidft_req_s, %struct.fcgs_gidft_req_s* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  ret i32 28
}

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @fc_gs_fchdr_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @fc_gs_cthdr_build(%struct.ct_hdr_s*, i32, i32) #1

declare dso_local i32 @memset(%struct.fcgs_gidft_req_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
