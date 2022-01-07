; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_complete_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_complete_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i64, i64, i32, i64, i64, %struct.fc_lport*, %struct.fc_seq*, i64, i64 }
%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_seq*)*, i32 (%struct.fc_lport.0*, %struct.fc_seq*, %struct.fc_frame*)*, %struct.fc_seq* (%struct.fc_seq*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_seq = type { i32 }
%struct.fc_exch = type { i32, i32 }
%struct.fc_frame.1 = type { i32 }

@FC_SRB_ABORT_PENDING = common dso_local global i32 0, align 4
@FC_SRB_ABORTED = common dso_local global i32 0, align 4
@FC_CMD_ABORTED = common dso_local global i64 0, align 8
@FCP_RESID_UNDER = common dso_local global i32 0, align 4
@FC_DATA_UNDRUN = common dso_local global i64 0, align 8
@FCP_CONF_REQ = common dso_local global i32 0, align 4
@FC_FC_SEQ_INIT = common dso_local global i32 0, align 4
@FC_FC_LAST_SEQ = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@FC_RCTL_DD_SOL_CTL = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*)* @fc_fcp_complete_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca %struct.fc_fcp_pkt*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_exch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_frame.1*, align 8
  %8 = alloca %struct.fc_seq*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %2, align 8
  %9 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %10 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %9, i32 0, i32 6
  %11 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  store %struct.fc_lport* %11, %struct.fc_lport** %3, align 8
  %12 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %13 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FC_SRB_ABORT_PENDING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %150

19:                                               ; preds = %1
  %20 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %21 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FC_SRB_ABORTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %28 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* @FC_CMD_ABORTED, align 8
  %33 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %34 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %33, i32 0, i32 9
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %26
  br label %75

36:                                               ; preds = %19
  %37 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %38 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %41 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %36
  %45 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %46 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %44
  %50 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %51 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FCP_RESID_UNDER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %58 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %61 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %64 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = icmp slt i64 %59, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %56, %49
  %69 = load i64, i64* @FC_DATA_UNDRUN, align 8
  %70 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %71 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %70, i32 0, i32 9
  store i64 %69, i64* %71, align 8
  %72 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %73 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %72, i32 0, i32 8
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %68, %56, %44, %36
  br label %75

75:                                               ; preds = %74, %35
  %76 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %77 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %76, i32 0, i32 7
  %78 = load %struct.fc_seq*, %struct.fc_seq** %77, align 8
  store %struct.fc_seq* %78, %struct.fc_seq** %4, align 8
  %79 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %80 = icmp ne %struct.fc_seq* %79, null
  br i1 %80, label %81, label %142

81:                                               ; preds = %75
  %82 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %83 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %82, i32 0, i32 7
  store %struct.fc_seq* null, %struct.fc_seq** %83, align 8
  %84 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %85 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FCP_CONF_REQ, align 4
  %88 = and i32 %86, %87
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %135

91:                                               ; preds = %81
  %92 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %93 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load %struct.fc_seq* (%struct.fc_seq*)*, %struct.fc_seq* (%struct.fc_seq*)** %94, align 8
  %96 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %97 = call %struct.fc_seq* %95(%struct.fc_seq* %96)
  store %struct.fc_seq* %97, %struct.fc_seq** %8, align 8
  %98 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %99 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %98, i32 0, i32 6
  %100 = load %struct.fc_lport*, %struct.fc_lport** %99, align 8
  %101 = call %struct.fc_frame.1* @fc_fcp_frame_alloc(%struct.fc_lport* %100, i32 0)
  store %struct.fc_frame.1* %101, %struct.fc_frame.1** %7, align 8
  %102 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %103 = icmp ne %struct.fc_frame.1* %102, null
  br i1 %103, label %104, label %134

104:                                              ; preds = %91
  %105 = load i32, i32* @FC_FC_SEQ_INIT, align 4
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @FC_FC_LAST_SEQ, align 4
  %107 = load i32, i32* @FC_FC_END_SEQ, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %112 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %111)
  store %struct.fc_exch* %112, %struct.fc_exch** %5, align 8
  %113 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %114 = load i32, i32* @FC_RCTL_DD_SOL_CTL, align 4
  %115 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %116 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %119 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FC_TYPE_FCP, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @fc_fill_fc_hdr(%struct.fc_frame.1* %113, i32 %114, i32 %117, i32 %120, i32 %121, i32 %122, i32 0)
  %124 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %125 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32 (%struct.fc_lport.0*, %struct.fc_seq*, %struct.fc_frame*)*, i32 (%struct.fc_lport.0*, %struct.fc_seq*, %struct.fc_frame*)** %126, align 8
  %128 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %129 = bitcast %struct.fc_lport* %128 to %struct.fc_lport.0*
  %130 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %131 = load %struct.fc_frame.1*, %struct.fc_frame.1** %7, align 8
  %132 = bitcast %struct.fc_frame.1* %131 to %struct.fc_frame*
  %133 = call i32 %127(%struct.fc_lport.0* %129, %struct.fc_seq* %130, %struct.fc_frame* %132)
  br label %134

134:                                              ; preds = %104, %91
  br label %135

135:                                              ; preds = %134, %81
  %136 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %137 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32 (%struct.fc_seq*)*, i32 (%struct.fc_seq*)** %138, align 8
  %140 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %141 = call i32 %139(%struct.fc_seq* %140)
  br label %142

142:                                              ; preds = %135, %75
  %143 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %144 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %149 = call i32 @fc_io_compl(%struct.fc_fcp_pkt* %148)
  br label %150

150:                                              ; preds = %18, %147, %142
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.fc_frame.1* @fc_fcp_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local i32 @fc_fill_fc_hdr(%struct.fc_frame.1*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fc_io_compl(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
