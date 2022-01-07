; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_init_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_init_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_dconf_mod_s = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_TRUE = common dso_local global i32 0, align 4
@BFI_DCONF_SIGNATURE = common dso_local global i64 0, align 8
@BFI_DCONF_VERSION = common dso_local global i64 0, align 8
@BFA_DCONF_SM_FLASH_COMP = common dso_local global i32 0, align 4
@IOCFC_E_DCONF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @bfa_dconf_init_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dconf_init_cb(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca %struct.bfa_dconf_mod_s*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.bfa_s*
  store %struct.bfa_s* %9, %struct.bfa_s** %5, align 8
  %10 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %11 = call %struct.bfa_dconf_mod_s* @BFA_DCONF_MOD(%struct.bfa_s* %10)
  store %struct.bfa_dconf_mod_s* %11, %struct.bfa_dconf_mod_s** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @BFA_STATUS_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %2
  %16 = load i32, i32* @BFA_TRUE, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %6, align 8
  %18 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BFI_DCONF_SIGNATURE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load i64, i64* @BFI_DCONF_SIGNATURE, align 8
  %27 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %6, align 8
  %28 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %26, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %15
  %33 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %6, align 8
  %34 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BFI_DCONF_VERSION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i64, i64* @BFI_DCONF_VERSION, align 8
  %43 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %6, align 8
  %44 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %42, i64* %47, align 8
  br label %48

48:                                               ; preds = %41, %32
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %6, align 8
  %51 = load i32, i32* @BFA_DCONF_SM_FLASH_COMP, align 4
  %52 = call i32 @bfa_sm_send_event(%struct.bfa_dconf_mod_s* %50, i32 %51)
  %53 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %53, i32 0, i32 0
  %55 = load i32, i32* @IOCFC_E_DCONF_DONE, align 4
  %56 = call i32 @bfa_fsm_send_event(i32* %54, i32 %55)
  ret void
}

declare dso_local %struct.bfa_dconf_mod_s* @BFA_DCONF_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_dconf_mod_s*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
