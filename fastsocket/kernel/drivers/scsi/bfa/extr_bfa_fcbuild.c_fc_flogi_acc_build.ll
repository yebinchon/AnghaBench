; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_flogi_acc_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_flogi_acc_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_logi_s = type { %struct.TYPE_6__, i8*, i8*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@plogi_tmpl = common dso_local global i32 0, align 4
@FC_ELS_ACC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_flogi_acc_build(%struct.fchs_s* %0, %struct.fc_logi_s* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.fchs_s*, align 8
  %11 = alloca %struct.fc_logi_s*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %10, align 8
  store %struct.fc_logi_s* %1, %struct.fc_logi_s** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %18, align 4
  %22 = shl i32 %21, 12
  %23 = load i32, i32* %16, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %20, align 4
  %25 = load %struct.fc_logi_s*, %struct.fc_logi_s** %11, align 8
  %26 = call i32 @memcpy(%struct.fc_logi_s* %25, i32* @plogi_tmpl, i32 48)
  %27 = load %struct.fchs_s*, %struct.fchs_s** %10, align 8
  %28 = load i32, i32* %19, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @fc_els_rsp_build(%struct.fchs_s* %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @FC_ELS_ACC, align 4
  %33 = load %struct.fc_logi_s*, %struct.fc_logi_s** %11, align 8
  %34 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* %16, align 4
  %37 = call i8* @cpu_to_be16(i32 %36)
  %38 = load %struct.fc_logi_s*, %struct.fc_logi_s** %11, align 8
  %39 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* %20, align 4
  %42 = call i8* @cpu_to_be16(i32 %41)
  %43 = load %struct.fc_logi_s*, %struct.fc_logi_s** %11, align 8
  %44 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load %struct.fc_logi_s*, %struct.fc_logi_s** %11, align 8
  %48 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load %struct.fc_logi_s*, %struct.fc_logi_s** %11, align 8
  %51 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i8* @cpu_to_be16(i32 %52)
  %54 = load %struct.fc_logi_s*, %struct.fc_logi_s** %11, align 8
  %55 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  ret i32 48
}

declare dso_local i32 @memcpy(%struct.fc_logi_s*, i32*, i32) #1

declare dso_local i32 @fc_els_rsp_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
