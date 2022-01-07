; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_hal_online_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_hal_online_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.bfa_fcs_lport_s* }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.bfad_s = type { i32 }

@BFA_STRING_32 = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Remote port (WWN = %s) online for logical port (WWN = %s)\0A\00", align 1
@BFA_RPORT_AEN_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*)* @bfa_fcs_rport_hal_online_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_hal_online_action(%struct.bfa_fcs_rport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_rport_s*, align 8
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %2, align 8
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 5
  %10 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  store %struct.bfa_fcs_lport_s* %10, %struct.bfa_fcs_lport_s** %3, align 8
  %11 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.bfad_s*
  store %struct.bfad_s* %16, %struct.bfad_s** %4, align 8
  %17 = load i32, i32* @BFA_STRING_32, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = load i32, i32* @BFA_STRING_32, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %24 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %35 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %33, %1
  %39 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bfa_trc(i32 %41, i32 %44)
  %46 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %50 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bfa_sm_fault(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %38, %33
  %54 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %55 = call i64 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %59 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bfa_fcs_itnim_brp_online(i32 %60)
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @BFA_FCS_PID_IS_WKA(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %69 = call i32 @bfa_fcs_rpf_rport_online(%struct.bfa_fcs_rport_s* %68)
  br label %70

70:                                               ; preds = %67, %57
  br label %71

71:                                               ; preds = %70, %53
  %72 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %73 = call i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %72)
  %74 = call i32 @wwn2str(i8* %20, i32 %73)
  %75 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %76 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wwn2str(i8* %23, i32 %77)
  %79 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %80 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @BFA_FCS_PID_IS_WKA(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %71
  %85 = load i32, i32* @KERN_INFO, align 4
  %86 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %87 = load i32, i32* @bfa_log_level, align 4
  %88 = call i32 @BFA_LOG(i32 %85, %struct.bfad_s* %86, i32 %87, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %20)
  %89 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %90 = load i32, i32* @BFA_RPORT_AEN_ONLINE, align 4
  %91 = call i32 @bfa_fcs_rport_aen_post(%struct.bfa_fcs_rport_s* %89, i32 %90, i32* null)
  br label %92

92:                                               ; preds = %84, %71
  %93 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bfa_trc(i32, i32) #2

declare dso_local i32 @bfa_sm_fault(i32, i32) #2

declare dso_local i64 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s*) #2

declare dso_local i32 @bfa_fcs_itnim_brp_online(i32) #2

declare dso_local i32 @BFA_FCS_PID_IS_WKA(i32) #2

declare dso_local i32 @bfa_fcs_rpf_rport_online(%struct.bfa_fcs_rport_s*) #2

declare dso_local i32 @wwn2str(i8*, i32) #2

declare dso_local i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s*) #2

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @bfa_fcs_rport_aen_post(%struct.bfa_fcs_rport_s*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
