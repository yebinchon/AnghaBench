; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_scr_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_scr_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_scr_s = type { i32, i32, i32 }

@FC_FABRIC_CONTROLLER = common dso_local global i32 0, align 4
@FC_ELS_SCR = common dso_local global i32 0, align 4
@FC_SCR_REG_FUNC_FULL = common dso_local global i32 0, align 4
@FC_VU_SCR_REG_FUNC_FABRIC_NAME_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_scr_build(%struct.fchs_s* %0, %struct.fc_scr_s* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fchs_s*, align 8
  %7 = alloca %struct.fc_scr_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %6, align 8
  store %struct.fc_scr_s* %1, %struct.fc_scr_s** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @FC_FABRIC_CONTROLLER, align 4
  %13 = call i32 @bfa_hton3b(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @fc_els_req_build(%struct.fchs_s* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.fc_scr_s*, %struct.fc_scr_s** %7, align 8
  %20 = call i32 @memset(%struct.fc_scr_s* %19, i32 0, i32 12)
  %21 = load i32, i32* @FC_ELS_SCR, align 4
  %22 = load %struct.fc_scr_s*, %struct.fc_scr_s** %7, align 8
  %23 = getelementptr inbounds %struct.fc_scr_s, %struct.fc_scr_s* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @FC_SCR_REG_FUNC_FULL, align 4
  %25 = load %struct.fc_scr_s*, %struct.fc_scr_s** %7, align 8
  %26 = getelementptr inbounds %struct.fc_scr_s, %struct.fc_scr_s* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @FC_VU_SCR_REG_FUNC_FABRIC_NAME_CHANGE, align 4
  %31 = load %struct.fc_scr_s*, %struct.fc_scr_s** %7, align 8
  %32 = getelementptr inbounds %struct.fc_scr_s, %struct.fc_scr_s* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %5
  ret i32 12
}

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @fc_els_req_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.fc_scr_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
