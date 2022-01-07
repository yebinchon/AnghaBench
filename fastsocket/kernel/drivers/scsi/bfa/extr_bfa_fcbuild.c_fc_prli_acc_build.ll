; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prli_acc_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prli_acc_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_prli_s = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@prli_tmpl = common dso_local global i32 0, align 4
@FC_ELS_ACC = common dso_local global i32 0, align 4
@FC_PRLI_ACC_XQTD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_prli_acc_build(%struct.fchs_s* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fchs_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fc_prli_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.fc_prli_s*
  store %struct.fc_prli_s* %15, %struct.fc_prli_s** %13, align 8
  %16 = load %struct.fchs_s*, %struct.fchs_s** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @fc_els_rsp_build(%struct.fchs_s* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.fc_prli_s*, %struct.fc_prli_s** %13, align 8
  %22 = call i32 @memcpy(%struct.fc_prli_s* %21, i32* @prli_tmpl, i32 12)
  %23 = load i32, i32* @FC_ELS_ACC, align 4
  %24 = load %struct.fc_prli_s*, %struct.fc_prli_s** %13, align 8
  %25 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.fc_prli_s*, %struct.fc_prli_s** %13, align 8
  %27 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* @FC_PRLI_ACC_XQTD, align 4
  %31 = load %struct.fc_prli_s*, %struct.fc_prli_s** %13, align 8
  %32 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  ret i32 12
}

declare dso_local i32 @fc_els_rsp_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.fc_prli_s*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
