; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_flogi_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_flogi_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_logi_s = type { %struct.TYPE_6__, i32*, i8*, i8*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@FC_FABRIC_PORT = common dso_local global i32 0, align 4
@plogi_tmpl = common dso_local global i32 0, align 4
@FC_ELS_FLOGI = common dso_local global i32 0, align 4
@FLOGI_VVL_BRCD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_flogi_build(%struct.fchs_s* %0, %struct.fc_logi_s* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6, i8* %7, i8* %8, i32 %9) #0 {
  %11 = alloca %struct.fchs_s*, align 8
  %12 = alloca %struct.fc_logi_s*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %11, align 8
  store %struct.fc_logi_s* %1, %struct.fc_logi_s** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i32 %9, i32* %20, align 4
  %23 = load i32, i32* @FC_FABRIC_PORT, align 4
  %24 = call i32 @bfa_hton3b(i32 %23)
  store i32 %24, i32* %21, align 4
  %25 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %26 = call i32 @memcpy(%struct.fc_logi_s* %25, i32* @plogi_tmpl, i32 80)
  %27 = load i32, i32* @FC_ELS_FLOGI, align 4
  %28 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %29 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.fchs_s*, %struct.fchs_s** %11, align 8
  %32 = load i32, i32* %21, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @fc_els_req_build(%struct.fchs_s* %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %17, align 4
  %37 = call i8* @cpu_to_be16(i32 %36)
  %38 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %39 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %42 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  store i8* %37, i8** %43, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %46 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %49 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %52 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** %19, align 8
  %55 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %56 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* %20, align 4
  %59 = call i8* @cpu_to_be16(i32 %58)
  %60 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %61 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %64 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32* %66, i32** %22, align 8
  %67 = load %struct.fc_logi_s*, %struct.fc_logi_s** %12, align 8
  %68 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* @FLOGI_VVL_BRCD, align 4
  %71 = call i32 @cpu_to_be32(i32 %70)
  %72 = load i32*, i32** %22, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  ret i32 80
}

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @memcpy(%struct.fc_logi_s*, i32*, i32) #1

declare dso_local i32 @fc_els_req_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
