; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_els_rrq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_els_rrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fc_exch = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.fc_els_rrq = type { i32, i32, i32 }

@ELS_EXPL_INV_LEN = common dso_local global i32 0, align 4
@ELS_EXPL_OXID_RXID = common dso_local global i32 0, align 4
@FC_XID_UNKNOWN = common dso_local global i64 0, align 8
@ELS_EXPL_SID = common dso_local global i32 0, align 4
@ESB_ST_REC_QUAL = common dso_local global i32 0, align 4
@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@ELS_RJT_LOGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_frame*)* @fc_exch_els_rrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_els_rrq(%struct.fc_frame* %0) #0 {
  %2 = alloca %struct.fc_frame*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_exch*, align 8
  %5 = alloca %struct.fc_els_rrq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fc_frame* %0, %struct.fc_frame** %2, align 8
  store %struct.fc_exch* null, %struct.fc_exch** %4, align 8
  %9 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %10 = call %struct.fc_lport* @fr_dev(%struct.fc_frame* %9)
  store %struct.fc_lport* %10, %struct.fc_lport** %3, align 8
  %11 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %12 = call %struct.fc_els_rrq* @fc_frame_payload_get(%struct.fc_frame* %11, i32 12)
  store %struct.fc_els_rrq* %12, %struct.fc_els_rrq** %5, align 8
  %13 = load i32, i32* @ELS_EXPL_INV_LEN, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %15 = icmp ne %struct.fc_els_rrq* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %128

17:                                               ; preds = %1
  %18 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %19 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ntoh24(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %23 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @fc_host_port_id(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %30 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohs(i32 %31)
  br label %38

33:                                               ; preds = %17
  %34 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %35 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ntohs(i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i64 [ %32, %28 ], [ %37, %33 ]
  store i64 %39, i64* %7, align 8
  %40 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call %struct.fc_exch* @fc_exch_lookup(%struct.fc_lport* %40, i64 %41)
  store %struct.fc_exch* %42, %struct.fc_exch** %4, align 8
  %43 = load i32, i32* @ELS_EXPL_OXID_RXID, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %45 = icmp ne %struct.fc_exch* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %128

47:                                               ; preds = %38
  %48 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %49 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %48, i32 0, i32 4
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %52 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %55 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ntohs(i32 %56)
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %124

60:                                               ; preds = %47
  %61 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %62 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fc_els_rrq*, %struct.fc_els_rrq** %5, align 8
  %65 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ntohs(i32 %66)
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %71 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %124

76:                                               ; preds = %69, %60
  %77 = load i32, i32* @ELS_EXPL_SID, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %79 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %124

84:                                               ; preds = %76
  %85 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %86 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %95 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %99 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %98, i32 0, i32 5
  %100 = call i32 @atomic_dec(i32* %99)
  br label %101

101:                                              ; preds = %91, %84
  %102 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %103 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %110 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %109, i32 0, i32 6
  %111 = call i64 @cancel_delayed_work(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %115 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %114, i32 0, i32 5
  %116 = call i32 @atomic_dec(i32* %115)
  br label %117

117:                                              ; preds = %113, %108
  br label %118

118:                                              ; preds = %117, %101
  %119 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %120 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %119, i32 0, i32 4
  %121 = call i32 @spin_unlock_bh(i32* %120)
  %122 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %123 = call i32 @fc_seq_ls_acc(%struct.fc_frame* %122)
  br label %133

124:                                              ; preds = %83, %75, %59
  %125 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %126 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %125, i32 0, i32 4
  %127 = call i32 @spin_unlock_bh(i32* %126)
  br label %128

128:                                              ; preds = %124, %46, %16
  %129 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %130 = load i32, i32* @ELS_RJT_LOGIC, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @fc_seq_ls_rjt(%struct.fc_frame* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %118
  %134 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %135 = icmp ne %struct.fc_exch* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %138 = call i32 @fc_exch_release(%struct.fc_exch* %137)
  br label %139

139:                                              ; preds = %136, %133
  ret void
}

declare dso_local %struct.fc_lport* @fr_dev(%struct.fc_frame*) #1

declare dso_local %struct.fc_els_rrq* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i64 @fc_host_port_id(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.fc_exch* @fc_exch_lookup(%struct.fc_lport*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @cancel_delayed_work(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_seq_ls_acc(%struct.fc_frame*) #1

declare dso_local i32 @fc_seq_ls_rjt(%struct.fc_frame*, i32, i32) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
