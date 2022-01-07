; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_abort_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_abort_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, i32, i32, i32, i32 }
%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }

@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@ESB_ST_ABNORMAL = common dso_local global i32 0, align 4
@FC_EX_DONE = common dso_local global i32 0, align 4
@FC_EX_RST_CLEANUP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ESB_ST_SEQ_INIT = common dso_local global i32 0, align 4
@FC_RCTL_BA_ABTS = common dso_local global i32 0, align 4
@FC_TYPE_BLS = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@FC_FC_SEQ_INIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_exch*, i32)* @fc_exch_abort_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_exch_abort_locked(%struct.fc_exch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_exch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_seq*, align 8
  %7 = alloca %struct.fc_frame*, align 8
  %8 = alloca i32, align 4
  store %struct.fc_exch* %0, %struct.fc_exch** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %10 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %13 = load i32, i32* @ESB_ST_ABNORMAL, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %19 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FC_EX_DONE, align 4
  %22 = load i32, i32* @FC_EX_RST_CLEANUP, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17, %2
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %90

29:                                               ; preds = %17
  %30 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %31 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %30, i32 0, i32 5
  %32 = call %struct.fc_seq* @fc_seq_start_next_locked(i32* %31)
  store %struct.fc_seq* %32, %struct.fc_seq** %6, align 8
  %33 = load %struct.fc_seq*, %struct.fc_seq** %6, align 8
  %34 = icmp ne %struct.fc_seq* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %90

38:                                               ; preds = %29
  %39 = load i32, i32* @ESB_ST_SEQ_INIT, align 4
  %40 = load i32, i32* @ESB_ST_ABNORMAL, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %43 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @fc_exch_timer_set_locked(%struct.fc_exch* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %38
  %53 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %54 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %90

58:                                               ; preds = %52
  %59 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %60 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.fc_frame* @fc_frame_alloc(i32 %61, i32 0)
  store %struct.fc_frame* %62, %struct.fc_frame** %7, align 8
  %63 = load %struct.fc_frame*, %struct.fc_frame** %7, align 8
  %64 = icmp ne %struct.fc_frame* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %58
  %66 = load %struct.fc_frame*, %struct.fc_frame** %7, align 8
  %67 = load i32, i32* @FC_RCTL_BA_ABTS, align 4
  %68 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %69 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %72 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FC_TYPE_BLS, align 4
  %75 = load i32, i32* @FC_FC_END_SEQ, align 4
  %76 = load i32, i32* @FC_FC_SEQ_INIT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @fc_fill_fc_hdr(%struct.fc_frame* %66, i32 %67, i32 %70, i32 %73, i32 %74, i32 %77, i32 0)
  %79 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %80 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fc_seq*, %struct.fc_seq** %6, align 8
  %83 = load %struct.fc_frame*, %struct.fc_frame** %7, align 8
  %84 = call i32 @fc_seq_send_locked(i32 %81, %struct.fc_seq* %82, %struct.fc_frame* %83)
  store i32 %84, i32* %8, align 4
  br label %88

85:                                               ; preds = %58
  %86 = load i32, i32* @ENOBUFS, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %65
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %57, %35, %26
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.fc_seq* @fc_seq_start_next_locked(i32*) #1

declare dso_local i32 @fc_exch_timer_set_locked(%struct.fc_exch*, i32) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(i32, i32) #1

declare dso_local i32 @fc_fill_fc_hdr(%struct.fc_frame*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fc_seq_send_locked(i32, %struct.fc_seq*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
