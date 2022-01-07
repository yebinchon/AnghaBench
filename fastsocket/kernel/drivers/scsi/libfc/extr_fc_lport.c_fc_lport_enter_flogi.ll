; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_flogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i32, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport.0*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Entered FLOGI state from %s state\0A\00", align 1
@LPORT_ST_FLOGI = common dso_local global i32 0, align 4
@FC_FID_FLOGI = common dso_local global i32 0, align 4
@ELS_FDISC = common dso_local global i32 0, align 4
@ELS_FLOGI = common dso_local global i32 0, align 4
@fc_lport_flogi_resp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fc_lport_enter_flogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_enter_flogi(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fc_frame.1*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %4 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %5 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %6 = call i32 @fc_lport_state(%struct.fc_lport* %5)
  %7 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %9 = load i32, i32* @LPORT_ST_FLOGI, align 4
  %10 = call i32 @fc_lport_state_enter(%struct.fc_lport* %8, i32 %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %12 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %17 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %22 = call i32 @fc_lport_enter_ready(%struct.fc_lport* %21)
  br label %23

23:                                               ; preds = %20, %15
  br label %74

24:                                               ; preds = %1
  %25 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %26 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %25, i32 4)
  store %struct.fc_frame.1* %26, %struct.fc_frame.1** %3, align 8
  %27 = load %struct.fc_frame.1*, %struct.fc_frame.1** %3, align 8
  %28 = icmp ne %struct.fc_frame.1* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %31 = load %struct.fc_frame.1*, %struct.fc_frame.1** %3, align 8
  call void @fc_lport_error(%struct.fc_lport* %30, %struct.fc_frame.1* %31)
  br label %74

32:                                               ; preds = %24
  %33 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %34 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport.0*, i32)*, i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport.0*, i32)** %35, align 8
  %37 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %38 = bitcast %struct.fc_lport* %37 to %struct.fc_lport.0*
  %39 = load i32, i32* @FC_FID_FLOGI, align 4
  %40 = load %struct.fc_frame.1*, %struct.fc_frame.1** %3, align 8
  %41 = bitcast %struct.fc_frame.1* %40 to %struct.fc_frame*
  %42 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %43 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @ELS_FDISC, align 4
  br label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @ELS_FLOGI, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* @fc_lport_flogi_resp, align 4
  %53 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %54 = bitcast %struct.fc_lport* %53 to %struct.fc_lport.0*
  %55 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %56 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %61 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 2, %62
  br label %68

64:                                               ; preds = %50
  %65 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %66 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = phi i32 [ %63, %59 ], [ %67, %64 ]
  %70 = call i32 %36(%struct.fc_lport.0* %38, i32 %39, %struct.fc_frame* %41, i32 %51, i32 %52, %struct.fc_lport.0* %54, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  call void @fc_lport_error(%struct.fc_lport* %73, %struct.fc_frame.1* null)
  br label %74

74:                                               ; preds = %23, %29, %72, %68
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_state_enter(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_lport_enter_ready(%struct.fc_lport*) #1

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local void @fc_lport_error(%struct.fc_lport*, %struct.fc_frame.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
