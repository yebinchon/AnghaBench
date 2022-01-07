; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_disabling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_disabling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.bfad_s = type { i32 }

@BFA_STRING_32 = common dso_local global i32 0, align 4
@bfa_fcport_sm_disabled = common dso_local global i32 0, align 4
@bfa_fcport_sm_enabling = common dso_local global i32 0, align 4
@bfa_fcport_sm_enabling_qwait = common dso_local global i32 0, align 4
@BFA_PL_MID_HAL = common dso_local global i32 0, align 4
@BFA_PL_EID_PORT_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Port Enable\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Base port enabled: WWN = %s\0A\00", align 1
@BFA_PORT_AEN_ENABLE = common dso_local global i32 0, align 4
@bfa_fcport_sm_stopped = common dso_local global i32 0, align 4
@bfa_fcport_sm_iocfail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*, i32)* @bfa_fcport_sm_disabling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_sm_disabling(%struct.bfa_fcport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfad_s*, align 8
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @BFA_STRING_32, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bfad_s*
  store %struct.bfad_s* %17, %struct.bfad_s** %7, align 8
  %18 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @bfa_trc(%struct.TYPE_3__* %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %70 [
    i32 132, label %24
    i32 134, label %28
    i32 133, label %29
    i32 128, label %61
    i32 129, label %65
    i32 130, label %65
    i32 131, label %66
  ]

24:                                               ; preds = %2
  %25 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %26 = load i32, i32* @bfa_fcport_sm_disabled, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %25, i32 %26)
  br label %76

28:                                               ; preds = %2
  br label %76

29:                                               ; preds = %2
  %30 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %31 = call i32 @bfa_fcport_send_enable(%struct.bfa_fcport_s* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %35 = load i32, i32* @bfa_fcport_sm_enabling, align 4
  %36 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %34, i32 %35)
  br label %41

37:                                               ; preds = %29
  %38 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %39 = load i32, i32* @bfa_fcport_sm_enabling_qwait, align 4
  %40 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %48 = load i32, i32* @BFA_PL_EID_PORT_ENABLE, align 4
  %49 = call i32 @bfa_plog_str(i32 %46, i32 %47, i32 %48, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @wwn2str(i8* %11, i32 %52)
  %54 = load i32, i32* @KERN_INFO, align 4
  %55 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %56 = load i32, i32* @bfa_log_level, align 4
  %57 = call i32 @BFA_LOG(i32 %54, %struct.bfad_s* %55, i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %58 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %59 = load i32, i32* @BFA_PORT_AEN_ENABLE, align 4
  %60 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %58, i32 %59)
  br label %76

61:                                               ; preds = %2
  %62 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %63 = load i32, i32* @bfa_fcport_sm_stopped, align 4
  %64 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %62, i32 %63)
  br label %76

65:                                               ; preds = %2, %2
  br label %76

66:                                               ; preds = %2
  %67 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %68 = load i32, i32* @bfa_fcport_sm_iocfail, align 4
  %69 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %67, i32 %68)
  br label %76

70:                                               ; preds = %2
  %71 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %72 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @bfa_sm_fault(%struct.TYPE_3__* %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %66, %65, %61, %41, %28, %24
  %77 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bfa_trc(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcport_s*, i32) #2

declare dso_local i32 @bfa_fcport_send_enable(%struct.bfa_fcport_s*) #2

declare dso_local i32 @bfa_plog_str(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @wwn2str(i8*, i32) #2

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i8*) #2

declare dso_local i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s*, i32) #2

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_3__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
