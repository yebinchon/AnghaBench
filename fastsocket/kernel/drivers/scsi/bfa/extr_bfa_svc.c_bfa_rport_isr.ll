; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%union.bfi_rport_i2h_msg_u = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.bfa_rport_s = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFA_RPORT_SM_FWRSP = common dso_local global i32 0, align 4
@BFA_RPORT_SM_QOS_SCN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_rport_isr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  %5 = alloca %union.bfi_rport_i2h_msg_u, align 8
  %6 = alloca %struct.bfa_rport_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %7 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %8 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %9 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bfa_trc(%struct.bfa_s* %7, i32 %11)
  %13 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %14 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.bfi_msg_s**
  store %struct.bfi_msg_s* %13, %struct.bfi_msg_s** %14, align 8
  %15 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %105 [
    i32 133, label %19
    i32 132, label %49
    i32 128, label %67
    i32 130, label %82
    i32 131, label %91
    i32 129, label %94
  ]

19:                                               ; preds = %2
  %20 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %21 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_7__**
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.bfa_rport_s* @BFA_RPORT_FROM_TAG(%struct.bfa_s* %20, i32 %24)
  store %struct.bfa_rport_s* %25, %struct.bfa_rport_s** %6, align 8
  %26 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_7__**
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_7__**
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %37 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_7__**
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BFA_STATUS_OK, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %47 = load i32, i32* @BFA_RPORT_SM_FWRSP, align 4
  %48 = call i32 @bfa_sm_send_event(%struct.bfa_rport_s* %46, i32 %47)
  br label %113

49:                                               ; preds = %2
  %50 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %51 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_8__**
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.bfa_rport_s* @BFA_RPORT_FROM_TAG(%struct.bfa_s* %50, i32 %54)
  store %struct.bfa_rport_s* %55, %struct.bfa_rport_s** %6, align 8
  %56 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_8__**
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BFA_STATUS_OK, align 4
  %61 = icmp ne i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %65 = load i32, i32* @BFA_RPORT_SM_FWRSP, align 4
  %66 = call i32 @bfa_sm_send_event(%struct.bfa_rport_s* %64, i32 %65)
  br label %113

67:                                               ; preds = %2
  %68 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %69 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_10__**
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.bfa_rport_s* @BFA_RPORT_FROM_TAG(%struct.bfa_s* %68, i32 %72)
  store %struct.bfa_rport_s* %73, %struct.bfa_rport_s** %6, align 8
  %74 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_10__**
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %77 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %78, align 8
  %79 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %80 = load i32, i32* @BFA_RPORT_SM_QOS_SCN, align 4
  %81 = call i32 @bfa_sm_send_event(%struct.bfa_rport_s* %79, i32 %80)
  br label %113

82:                                               ; preds = %2
  %83 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %84 = call i32 @BFA_FCPORT_MOD(%struct.bfa_s* %83)
  %85 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_11__**
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = call i32 @bfa_fcport_update_loop_info(i32 %84, i32* %87)
  %89 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %90 = call i32 @bfa_cb_rport_scn_online(%struct.bfa_s* %89)
  br label %113

91:                                               ; preds = %2
  %92 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %93 = call i32 @bfa_cb_rport_scn_offline(%struct.bfa_s* %92)
  br label %113

94:                                               ; preds = %2
  %95 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %96 = bitcast %union.bfi_rport_i2h_msg_u* %5 to %struct.TYPE_11__**
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.bfa_rport_s* @BFA_RPORT_FROM_TAG(%struct.bfa_s* %95, i32 %99)
  store %struct.bfa_rport_s* %100, %struct.bfa_rport_s** %6, align 8
  %101 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %102 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @bfa_cb_rport_scn_no_dev(i32 %103)
  br label %113

105:                                              ; preds = %2
  %106 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %107 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %108 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bfa_trc(%struct.bfa_s* %106, i32 %110)
  %112 = call i32 @WARN_ON(i32 1)
  br label %113

113:                                              ; preds = %105, %94, %91, %82, %67, %49, %19
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local %struct.bfa_rport_s* @BFA_RPORT_FROM_TAG(%struct.bfa_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_fcport_update_loop_info(i32, i32*) #1

declare dso_local i32 @BFA_FCPORT_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_cb_rport_scn_online(%struct.bfa_s*) #1

declare dso_local i32 @bfa_cb_rport_scn_offline(%struct.bfa_s*) #1

declare dso_local i32 @bfa_cb_rport_scn_no_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
