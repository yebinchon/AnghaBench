; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { %struct.bfa_ioc_s*, %struct.TYPE_3__, i32, i32, i32*, i32*, i32*, i64, i32, i64, i64, i32*, i32*, i32*, %struct.bfa_trc_mod_s*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_ioc_s = type { i32 }
%struct.bfa_trc_mod_s = type { i32 }

@BFA_SFP_STATE_INIT = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_SFP = common dso_local global i32 0, align 4
@bfa_sfp_intr = common dso_local global i32 0, align 4
@bfa_sfp_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_sfp_attach(%struct.bfa_sfp_s* %0, %struct.bfa_ioc_s* %1, i8* %2, %struct.bfa_trc_mod_s* %3) #0 {
  %5 = alloca %struct.bfa_sfp_s*, align 8
  %6 = alloca %struct.bfa_ioc_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bfa_trc_mod_s*, align 8
  store %struct.bfa_sfp_s* %0, %struct.bfa_sfp_s** %5, align 8
  store %struct.bfa_ioc_s* %1, %struct.bfa_ioc_s** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.bfa_trc_mod_s* %3, %struct.bfa_trc_mod_s** %8, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %10, i32 0, i32 15
  store i8* %9, i8** %11, align 8
  %12 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %13 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %13, i32 0, i32 0
  store %struct.bfa_ioc_s* %12, %struct.bfa_ioc_s** %14, align 8
  %15 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %8, align 8
  %16 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %16, i32 0, i32 14
  store %struct.bfa_trc_mod_s* %15, %struct.bfa_trc_mod_s** %17, align 8
  %18 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %18, i32 0, i32 13
  store i32* null, i32** %19, align 8
  %20 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %20, i32 0, i32 12
  store i32* null, i32** %21, align 8
  %22 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %22, i32 0, i32 11
  store i32* null, i32** %23, align 8
  %24 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %24, i32 0, i32 10
  store i64 0, i64* %25, align 8
  %26 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %27 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %26, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @BFA_SFP_STATE_INIT, align 4
  %29 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %33, i32 0, i32 6
  store i32* null, i32** %34, align 8
  %35 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %35, i32 0, i32 5
  store i32* null, i32** %36, align 8
  %37 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @BFA_PORT_SPEED_UNKNOWN, align 4
  %40 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @BFA_FALSE, align 4
  %43 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %45, i32 0, i32 0
  %47 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %46, align 8
  %48 = load i32, i32* @BFI_MC_SFP, align 4
  %49 = load i32, i32* @bfa_sfp_intr, align 4
  %50 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %51 = call i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s* %47, i32 %48, i32 %49, %struct.bfa_sfp_s* %50)
  %52 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %52, i32 0, i32 1
  %54 = call i32 @bfa_q_qe_init(%struct.TYPE_3__* %53)
  %55 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %55, i32 0, i32 1
  %57 = load i32, i32* @bfa_sfp_notify, align 4
  %58 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %59 = call i32 @bfa_ioc_notify_init(%struct.TYPE_3__* %56, i32 %57, %struct.bfa_sfp_s* %58)
  %60 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %61 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %64 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %63, i32 0, i32 0
  %65 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %64, align 8
  %66 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %65, i32 0, i32 0
  %67 = call i32 @list_add_tail(i32* %62, i32* %66)
  ret void
}

declare dso_local i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s*, i32, i32, %struct.bfa_sfp_s*) #1

declare dso_local i32 @bfa_q_qe_init(%struct.TYPE_3__*) #1

declare dso_local i32 @bfa_ioc_notify_init(%struct.TYPE_3__*, i32, %struct.bfa_sfp_s*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
