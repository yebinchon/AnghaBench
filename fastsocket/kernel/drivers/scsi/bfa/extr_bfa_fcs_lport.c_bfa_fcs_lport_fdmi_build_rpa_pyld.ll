; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_fdmi_build_rpa_pyld.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_fdmi_build_rpa_pyld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_fdmi_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.fdmi_rpa_s = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_fcs_lport_fdmi_s*, i32*)* @bfa_fcs_lport_fdmi_build_rpa_pyld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_fcs_lport_fdmi_build_rpa_pyld(%struct.bfa_fcs_lport_fdmi_s* %0, i32* %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_fdmi_s*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  %6 = alloca %struct.fdmi_rpa_s*, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_fcs_lport_fdmi_s* %0, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_lport_fdmi_s, %struct.bfa_fcs_lport_fdmi_s* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %11, align 8
  store %struct.bfa_fcs_lport_s* %12, %struct.bfa_fcs_lport_s** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.fdmi_rpa_s*
  store %struct.fdmi_rpa_s* %14, %struct.fdmi_rpa_s** %6, align 8
  %15 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %16 = call i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %15)
  %17 = load %struct.fdmi_rpa_s*, %struct.fdmi_rpa_s** %6, align 8
  %18 = getelementptr inbounds %struct.fdmi_rpa_s, %struct.fdmi_rpa_s* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %20 = load %struct.fdmi_rpa_s*, %struct.fdmi_rpa_s** %6, align 8
  %21 = getelementptr inbounds %struct.fdmi_rpa_s, %struct.fdmi_rpa_s* %20, i32 0, i32 0
  %22 = call i32 @bfa_fcs_lport_fdmi_build_portattr_block(%struct.bfa_fcs_lport_fdmi_s* %19, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_fdmi_build_portattr_block(%struct.bfa_fcs_lport_fdmi_s*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
