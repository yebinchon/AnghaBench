; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_fcport_s = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcport_beacon(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_s*, align 8
  %8 = alloca %struct.bfa_fcport_s*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bfa_s*
  store %struct.bfa_s* %10, %struct.bfa_s** %7, align 8
  %11 = load %struct.bfa_s*, %struct.bfa_s** %7, align 8
  %12 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.bfa_s* %11)
  store %struct.bfa_fcport_s* %12, %struct.bfa_fcport_s** %8, align 8
  %13 = load %struct.bfa_s*, %struct.bfa_s** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @bfa_trc(%struct.bfa_s* %13, i8* %14)
  %16 = load %struct.bfa_s*, %struct.bfa_s** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @bfa_trc(%struct.bfa_s* %16, i8* %17)
  %19 = load %struct.bfa_s*, %struct.bfa_s** %7, align 8
  %20 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %21 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @bfa_trc(%struct.bfa_s* %19, i8* %22)
  %24 = load %struct.bfa_s*, %struct.bfa_s** %7, align 8
  %25 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %26 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @bfa_trc(%struct.bfa_s* %24, i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %31 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %34 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  ret void
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
