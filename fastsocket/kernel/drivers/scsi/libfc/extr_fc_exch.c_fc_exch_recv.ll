; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64 }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i32, i32, i32, i32 }
%struct.fc_exch_mgr_anchor = type { i32 }

@LPORT_ST_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"Receiving frames for an lport that has not been initialized correctly\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Unable to find Exchange Manager Anchor,fc_ctl <0x%x>, xid <0x%x>\0A\00", align 1
@FC_FC_EX_CTX = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@FC_TYPE_BLS = common dso_local global i32 0, align 4
@FC_FC_SEQ_CTX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"dropping invalid frame (eof %x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_exch_recv(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_frame_header*, align 8
  %6 = alloca %struct.fc_exch_mgr_anchor*, align 8
  %7 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %8 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %9 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %8)
  store %struct.fc_frame_header* %9, %struct.fc_frame_header** %5, align 8
  %10 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %11 = icmp ne %struct.fc_lport* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LPORT_ST_DISABLED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12, %2
  %19 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %20 = call i32 (%struct.fc_lport*, i8*, ...) @FC_LPORT_DBG(%struct.fc_lport* %19, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %22 = call i32 @fc_frame_free(%struct.fc_frame* %21)
  br label %128

23:                                               ; preds = %12
  %24 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %25 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntoh24(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %30 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %31 = call %struct.fc_exch_mgr_anchor* @fc_find_ema(i32 %28, %struct.fc_lport* %29, %struct.fc_frame_header* %30)
  store %struct.fc_exch_mgr_anchor* %31, %struct.fc_exch_mgr_anchor** %6, align 8
  %32 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %6, align 8
  %33 = icmp ne %struct.fc_exch_mgr_anchor* %32, null
  br i1 %33, label %56, label %34

34:                                               ; preds = %23
  %35 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @FC_FC_EX_CTX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %43 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohs(i32 %44)
  br label %51

46:                                               ; preds = %34
  %47 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %48 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i32 [ %45, %41 ], [ %50, %46 ]
  %53 = call i32 (%struct.fc_lport*, i8*, ...) @FC_LPORT_DBG(%struct.fc_lport* %35, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %52)
  %54 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %55 = call i32 @fc_frame_free(%struct.fc_frame* %54)
  br label %128

56:                                               ; preds = %23
  %57 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %58 = call i32 @fr_eof(%struct.fc_frame* %57)
  switch i32 %58, label %121 [
    i32 128, label %59
    i32 129, label %74
  ]

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @FC_FC_END_SEQ, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %66 = call i32 @fp_skb(%struct.fc_frame* %65)
  %67 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %68 = call i64 @fr_len(%struct.fc_frame* %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @FC_FC_FILL(i32 %69)
  %71 = sub nsw i64 %68, %70
  %72 = call i32 @skb_trim(i32 %66, i64 %71)
  br label %73

73:                                               ; preds = %64, %59
  br label %74

74:                                               ; preds = %56, %73
  %75 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %76 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FC_TYPE_BLS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %6, align 8
  %82 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %85 = call i32 @fc_exch_recv_bls(i32 %83, %struct.fc_frame* %84)
  br label %120

86:                                               ; preds = %74
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @FC_FC_EX_CTX, align 4
  %89 = load i32, i32* @FC_FC_SEQ_CTX, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = load i32, i32* @FC_FC_EX_CTX, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %6, align 8
  %96 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %99 = call i32 @fc_exch_recv_seq_resp(i32 %97, %struct.fc_frame* %98)
  br label %119

100:                                              ; preds = %86
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @FC_FC_SEQ_CTX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %6, align 8
  %107 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %110 = call i32 @fc_exch_recv_resp(i32 %108, %struct.fc_frame* %109)
  br label %118

111:                                              ; preds = %100
  %112 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %113 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %6, align 8
  %114 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %117 = call i32 @fc_exch_recv_req(%struct.fc_lport* %112, i32 %115, %struct.fc_frame* %116)
  br label %118

118:                                              ; preds = %111, %105
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119, %80
  br label %128

121:                                              ; preds = %56
  %122 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %123 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %124 = call i32 @fr_eof(%struct.fc_frame* %123)
  %125 = call i32 (%struct.fc_lport*, i8*, ...) @FC_LPORT_DBG(%struct.fc_lport* %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %127 = call i32 @fc_frame_free(%struct.fc_frame* %126)
  br label %128

128:                                              ; preds = %18, %51, %121, %120
  ret void
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, ...) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local %struct.fc_exch_mgr_anchor* @fc_find_ema(i32, %struct.fc_lport*, %struct.fc_frame_header*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @fr_eof(%struct.fc_frame*) #1

declare dso_local i32 @skb_trim(i32, i64) #1

declare dso_local i32 @fp_skb(%struct.fc_frame*) #1

declare dso_local i64 @fr_len(%struct.fc_frame*) #1

declare dso_local i64 @FC_FC_FILL(i32) #1

declare dso_local i32 @fc_exch_recv_bls(i32, %struct.fc_frame*) #1

declare dso_local i32 @fc_exch_recv_seq_resp(i32, %struct.fc_frame*) #1

declare dso_local i32 @fc_exch_recv_resp(i32, %struct.fc_frame*) #1

declare dso_local i32 @fc_exch_recv_req(%struct.fc_lport*, i32, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
