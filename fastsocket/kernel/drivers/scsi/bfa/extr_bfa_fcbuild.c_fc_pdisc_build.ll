; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_pdisc_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_pdisc_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_logi_s = type { i8*, i8*, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@plogi_tmpl = common dso_local global i32 0, align 4
@FC_ELS_PDISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_pdisc_build(%struct.fchs_s* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.fchs_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fc_logi_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.fchs_s*, %struct.fchs_s** %8, align 8
  %17 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %16, i64 1
  %18 = bitcast %struct.fchs_s* %17 to %struct.fc_logi_s*
  store %struct.fc_logi_s* %18, %struct.fc_logi_s** %15, align 8
  %19 = load %struct.fc_logi_s*, %struct.fc_logi_s** %15, align 8
  %20 = call i32 @memcpy(%struct.fc_logi_s* %19, i32* @plogi_tmpl, i32 32)
  %21 = load i32, i32* @FC_ELS_PDISC, align 4
  %22 = load %struct.fc_logi_s*, %struct.fc_logi_s** %15, align 8
  %23 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.fchs_s*, %struct.fchs_s** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @fc_els_req_build(%struct.fchs_s* %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @cpu_to_be16(i32 %30)
  %32 = load %struct.fc_logi_s*, %struct.fc_logi_s** %15, align 8
  %33 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.fc_logi_s*, %struct.fc_logi_s** %15, align 8
  %36 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.fc_logi_s*, %struct.fc_logi_s** %15, align 8
  %40 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.fc_logi_s*, %struct.fc_logi_s** %15, align 8
  %43 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  ret i32 32
}

declare dso_local i32 @memcpy(%struct.fc_logi_s*, i32*, i32) #1

declare dso_local i32 @fc_els_req_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
