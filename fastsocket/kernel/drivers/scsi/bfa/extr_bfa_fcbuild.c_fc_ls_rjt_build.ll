; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_ls_rjt_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_ls_rjt_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_ls_rjt_s = type { i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FC_ELS_LS_RJT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_ls_rjt_build(%struct.fchs_s* %0, %struct.fc_ls_rjt_s* %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.fchs_s*, align 8
  %9 = alloca %struct.fc_ls_rjt_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %8, align 8
  store %struct.fc_ls_rjt_s* %1, %struct.fc_ls_rjt_s** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load %struct.fchs_s*, %struct.fchs_s** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @fc_els_rsp_build(%struct.fchs_s* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %9, align 8
  %21 = call i32 @memset(%struct.fc_ls_rjt_s* %20, i32 0, i32 32)
  %22 = load i32, i32* @FC_ELS_LS_RJT, align 4
  %23 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %9, align 8
  %24 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %9, align 8
  %28 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %9, align 8
  %31 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %9, align 8
  %33 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  ret i32 32
}

declare dso_local i32 @fc_els_rsp_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.fc_ls_rjt_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
