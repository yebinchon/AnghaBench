; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, i64, %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 (%struct.fc_rport_priv*)*, %struct.fc_rport_priv* (%struct.fc_lport*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_rport_priv = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.fcoe_rport = type { i32, i64 }

@FIP_FL_REC_OR_P2P = common dso_local global i32 0, align 4
@FIP_SC_VN_PROBE_REQ = common dso_local global i32 0, align 4
@fcoe_all_vn2vn = common dso_local global i32 0, align 4
@FIP_ST_VNMP_UP = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"beacon from new rport %x. sending claim notify\0A\00", align 1
@FIP_VN_ANN_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fc_rport_priv*)* @fcoe_ctlr_vn_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_beacon(%struct.fcoe_ctlr* %0, %struct.fc_rport_priv* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fc_rport_priv*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca %struct.fcoe_rport*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %4, align 8
  %8 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %9 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %8, i32 0, i32 2
  %10 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  store %struct.fc_lport* %10, %struct.fc_lport** %5, align 8
  %11 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %12 = call %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv* %11)
  store %struct.fcoe_rport* %12, %struct.fcoe_rport** %7, align 8
  %13 = load %struct.fcoe_rport*, %struct.fcoe_rport** %7, align 8
  %14 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FIP_FL_REC_OR_P2P, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %21 = load i32, i32* @FIP_SC_VN_PROBE_REQ, align 4
  %22 = load i32, i32* @fcoe_all_vn2vn, align 4
  %23 = call i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr* %20, i32 %21, i32 %22, i32 0)
  br label %130

24:                                               ; preds = %2
  %25 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %30 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load %struct.fc_rport_priv* (%struct.fc_lport*, i32)*, %struct.fc_rport_priv* (%struct.fc_lport*, i32)** %31, align 8
  %33 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %34 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %35 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.fc_rport_priv* %32(%struct.fc_lport* %33, i32 %37)
  store %struct.fc_rport_priv* %38, %struct.fc_rport_priv** %6, align 8
  %39 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %40 = icmp ne %struct.fc_rport_priv* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %43 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %42, i32 0, i32 1
  %44 = call i32 @kref_get(i32* %43)
  br label %45

45:                                               ; preds = %41, %24
  %46 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %47 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %51 = icmp ne %struct.fc_rport_priv* %50, null
  br i1 %51, label %52, label %104

52:                                               ; preds = %45
  %53 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %54 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %58 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %56, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %52
  %63 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %64 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %68 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %66, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %62
  %73 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %74 = call %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv* %73)
  store %struct.fcoe_rport* %74, %struct.fcoe_rport** %7, align 8
  %75 = load %struct.fcoe_rport*, %struct.fcoe_rport** %7, align 8
  %76 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %72
  %80 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %81 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @FIP_ST_VNMP_UP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %87 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32 (%struct.fc_rport_priv*)*, i32 (%struct.fc_rport_priv*)** %88, align 8
  %90 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %91 = call i32 %89(%struct.fc_rport_priv* %90)
  br label %92

92:                                               ; preds = %85, %79, %72
  %93 = load i64, i64* @jiffies, align 8
  %94 = load %struct.fcoe_rport*, %struct.fcoe_rport** %7, align 8
  %95 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %62, %52
  %97 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %98 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %97, i32 0, i32 1
  %99 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %100 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @kref_put(i32* %98, i32 %102)
  br label %130

104:                                              ; preds = %45
  %105 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %106 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @FIP_ST_VNMP_UP, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %130

111:                                              ; preds = %104
  %112 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %113 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %114 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i64, i64* @jiffies, align 8
  %119 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %120 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @FIP_VN_ANN_WAIT, align 4
  %123 = call i64 @msecs_to_jiffies(i32 %122)
  %124 = add nsw i64 %121, %123
  %125 = call i64 @time_after(i64 %118, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %111
  %128 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %129 = call i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr* %128)
  br label %130

130:                                              ; preds = %19, %96, %110, %127, %111
  ret void
}

declare dso_local %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv*) #1

declare dso_local i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
