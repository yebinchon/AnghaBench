; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_recv_abts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_recv_abts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, %struct.fc_seq, i32, i32 }
%struct.fc_seq = type { i32, i32, i32 }
%struct.fc_frame = type { i32 }
%struct.fc_ba_acc = type { i8*, i8*, i32, i32 }
%struct.fc_frame_header = type { i8* }

@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@ESB_ST_REC_QUAL = common dso_local global i32 0, align 4
@ESB_ST_ABNORMAL = common dso_local global i32 0, align 4
@SSB_ST_RESP = common dso_local global i32 0, align 4
@FC_BA_SEQ_ID_VAL = common dso_local global i32 0, align 4
@FC_RCTL_BA_ACC = common dso_local global i32 0, align 4
@FC_TYPE_BLS = common dso_local global i32 0, align 4
@FC_BA_RJT_UNABLE = common dso_local global i32 0, align 4
@FC_BA_RJT_INV_XID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*, %struct.fc_frame*)* @fc_exch_recv_abts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_recv_abts(%struct.fc_exch* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_exch*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca %struct.fc_ba_acc*, align 8
  %7 = alloca %struct.fc_frame_header*, align 8
  %8 = alloca %struct.fc_seq*, align 8
  store %struct.fc_exch* %0, %struct.fc_exch** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %9 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %10 = icmp ne %struct.fc_exch* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %110

12:                                               ; preds = %2
  %13 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %14 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %17 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %24 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock_bh(i32* %24)
  br label %110

26:                                               ; preds = %12
  %27 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %28 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %35 = call i32 @fc_exch_hold(%struct.fc_exch* %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* @ESB_ST_ABNORMAL, align 4
  %38 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %41 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %45 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %46 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fc_exch_timer_set_locked(%struct.fc_exch* %44, i32 %47)
  %49 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %50 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.fc_frame* @fc_frame_alloc(i32 %51, i32 24)
  store %struct.fc_frame* %52, %struct.fc_frame** %5, align 8
  %53 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %54 = icmp ne %struct.fc_frame* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %36
  %56 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %57 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_bh(i32* %57)
  br label %115

59:                                               ; preds = %36
  %60 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %61 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %60)
  store %struct.fc_frame_header* %61, %struct.fc_frame_header** %7, align 8
  %62 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %63 = call %struct.fc_ba_acc* @fc_frame_payload_get(%struct.fc_frame* %62, i32 24)
  store %struct.fc_ba_acc* %63, %struct.fc_ba_acc** %6, align 8
  %64 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %65 = call i32 @memset(%struct.fc_ba_acc* %64, i32 0, i32 24)
  %66 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %67 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %66, i32 0, i32 2
  store %struct.fc_seq* %67, %struct.fc_seq** %8, align 8
  %68 = call i8* @htons(i32 65535)
  %69 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %70 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %72 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SSB_ST_RESP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %59
  %78 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %79 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %82 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @FC_BA_SEQ_ID_VAL, align 4
  %84 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %85 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %87 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %90 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %92 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @htons(i32 %93)
  %95 = load %struct.fc_ba_acc*, %struct.fc_ba_acc** %6, align 8
  %96 = getelementptr inbounds %struct.fc_ba_acc, %struct.fc_ba_acc* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %77, %59
  %98 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %99 = call %struct.fc_seq* @fc_seq_start_next_locked(%struct.fc_seq* %98)
  store %struct.fc_seq* %99, %struct.fc_seq** %8, align 8
  %100 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %101 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %102 = load i32, i32* @FC_RCTL_BA_ACC, align 4
  %103 = load i32, i32* @FC_TYPE_BLS, align 4
  %104 = call i32 @fc_seq_send_last(%struct.fc_seq* %100, %struct.fc_frame* %101, i32 %102, i32 %103)
  %105 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %106 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %105, i32 0, i32 1
  %107 = call i32 @spin_unlock_bh(i32* %106)
  %108 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %109 = call i32 @fc_frame_free(%struct.fc_frame* %108)
  br label %118

110:                                              ; preds = %22, %11
  %111 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %112 = load i32, i32* @FC_BA_RJT_UNABLE, align 4
  %113 = load i32, i32* @FC_BA_RJT_INV_XID, align 4
  %114 = call i32 @fc_exch_send_ba_rjt(%struct.fc_frame* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %55
  %116 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %117 = call i32 @fc_frame_free(%struct.fc_frame* %116)
  br label %118

118:                                              ; preds = %115, %97
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_exch_hold(%struct.fc_exch*) #1

declare dso_local i32 @fc_exch_timer_set_locked(%struct.fc_exch*, i32) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(i32, i32) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local %struct.fc_ba_acc* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @memset(%struct.fc_ba_acc*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.fc_seq* @fc_seq_start_next_locked(%struct.fc_seq*) #1

declare dso_local i32 @fc_seq_send_last(%struct.fc_seq*, %struct.fc_frame*, i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @fc_exch_send_ba_rjt(%struct.fc_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
