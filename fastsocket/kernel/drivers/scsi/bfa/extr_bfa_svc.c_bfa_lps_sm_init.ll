; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_sm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_sm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_lps_s = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@bfa_lps_sm_loginwait = common dso_local global i32 0, align 4
@bfa_lps_sm_login = common dso_local global i32 0, align 4
@BFA_PL_MID_LPS = common dso_local global i32 0, align 4
@BFA_PL_EID_LOGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"FDISC Request\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"FLOGI Request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_lps_s*, i32)* @bfa_lps_sm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_sm_init(%struct.bfa_lps_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_lps_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_lps_s* %0, %struct.bfa_lps_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(%struct.TYPE_5__* %7, i32 %10)
  %12 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_trc(%struct.TYPE_5__* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %79 [
    i32 132, label %18
    i32 131, label %70
    i32 134, label %73
    i32 129, label %76
    i32 130, label %76
    i32 133, label %77
    i32 128, label %78
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bfa_reqq_full(%struct.TYPE_5__* %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %29 = load i32, i32* @bfa_lps_sm_loginwait, align 4
  %30 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %28, i32 %29)
  %31 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %37, i32 0, i32 3
  %39 = call i32 @bfa_reqq_wait(%struct.TYPE_5__* %33, i32 %36, i32* %38)
  br label %46

40:                                               ; preds = %18
  %41 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %42 = load i32, i32* @bfa_lps_sm_login, align 4
  %43 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %41, i32 %42)
  %44 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %45 = call i32 @bfa_lps_send_login(%struct.bfa_lps_s* %44)
  br label %46

46:                                               ; preds = %40, %27
  %47 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BFA_PL_MID_LPS, align 4
  %58 = load i32, i32* @BFA_PL_EID_LOGIN, align 4
  %59 = call i32 @bfa_plog_str(i32 %56, i32 %57, i32 %58, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %69

60:                                               ; preds = %46
  %61 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BFA_PL_MID_LPS, align 4
  %67 = load i32, i32* @BFA_PL_EID_LOGIN, align 4
  %68 = call i32 @bfa_plog_str(i32 %65, i32 %66, i32 %67, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %60, %51
  br label %85

70:                                               ; preds = %2
  %71 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %72 = call i32 @bfa_lps_logout_comp(%struct.bfa_lps_s* %71)
  br label %85

73:                                               ; preds = %2
  %74 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %75 = call i32 @bfa_lps_free(%struct.bfa_lps_s* %74)
  br label %85

76:                                               ; preds = %2, %2
  br label %85

77:                                               ; preds = %2
  br label %85

78:                                               ; preds = %2
  br label %85

79:                                               ; preds = %2
  %80 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %81 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @bfa_sm_fault(%struct.TYPE_5__* %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %78, %77, %76, %73, %70, %69
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bfa_reqq_full(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_lps_s*, i32) #1

declare dso_local i32 @bfa_reqq_wait(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @bfa_lps_send_login(%struct.bfa_lps_s*) #1

declare dso_local i32 @bfa_plog_str(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @bfa_lps_logout_comp(%struct.bfa_lps_s*) #1

declare dso_local i32 @bfa_lps_free(%struct.bfa_lps_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
