; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_set_port_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_set_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fnic = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set port_id %x fp %p\0A\00", align 1
@FNIC_IN_ETH_MODE = common dso_local global i64 0, align 8
@FNIC_IN_FC_MODE = common dso_local global i64 0, align 8
@FNIC_IN_ETH_TRANS_FC_MODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"Unexpected fnic state %s while processing flogi resp\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_set_port_id(%struct.fc_lport* %0, i32 %1, %struct.fc_frame* %2) #0 {
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_frame*, align 8
  %7 = alloca %struct.fnic*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fc_frame* %2, %struct.fc_frame** %6, align 8
  %10 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %11 = call %struct.fnic* @lport_priv(%struct.fc_lport* %10)
  store %struct.fnic* %11, %struct.fnic** %7, align 8
  %12 = load i32, i32* @KERN_DEBUG, align 4
  %13 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %18 = call i32 (i32, i32, i8*, i32, ...) @FNIC_FCS_DBG(i32 %12, i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.fc_frame* %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %23 = load %struct.fnic*, %struct.fnic** %7, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @fnic_update_mac(%struct.fc_lport* %22, i32* %26)
  %28 = load %struct.fnic*, %struct.fnic** %7, align 8
  %29 = call i32 @fnic_set_eth_mode(%struct.fnic* %28)
  br label %111

30:                                               ; preds = %3
  %31 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %32 = icmp ne %struct.fc_frame* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %35 = call %struct.TYPE_5__* @fr_cb(%struct.fc_frame* %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @is_zero_ether_addr(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.fnic*, %struct.fnic** %7, align 8
  %43 = getelementptr inbounds %struct.fnic, %struct.fnic* %42, i32 0, i32 3
  %44 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %45 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %46 = call i32 @fcoe_ctlr_recv_flogi(%struct.TYPE_6__* %43, %struct.fc_lport* %44, %struct.fc_frame* %45)
  br label %47

47:                                               ; preds = %41, %33
  %48 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @fnic_update_mac(%struct.fc_lport* %48, i32* %49)
  br label %51

51:                                               ; preds = %47, %30
  %52 = load %struct.fnic*, %struct.fnic** %7, align 8
  %53 = getelementptr inbounds %struct.fnic, %struct.fnic* %52, i32 0, i32 1
  %54 = call i32 @spin_lock_irq(i32* %53)
  %55 = load %struct.fnic*, %struct.fnic** %7, align 8
  %56 = getelementptr inbounds %struct.fnic, %struct.fnic* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FNIC_IN_ETH_MODE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %51
  %61 = load %struct.fnic*, %struct.fnic** %7, align 8
  %62 = getelementptr inbounds %struct.fnic, %struct.fnic* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @FNIC_IN_FC_MODE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60, %51
  %67 = load i64, i64* @FNIC_IN_ETH_TRANS_FC_MODE, align 8
  %68 = load %struct.fnic*, %struct.fnic** %7, align 8
  %69 = getelementptr inbounds %struct.fnic, %struct.fnic* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %85

70:                                               ; preds = %60
  %71 = load i32, i32* @KERN_DEBUG, align 4
  %72 = load %struct.fnic*, %struct.fnic** %7, align 8
  %73 = getelementptr inbounds %struct.fnic, %struct.fnic* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fnic*, %struct.fnic** %7, align 8
  %78 = getelementptr inbounds %struct.fnic, %struct.fnic* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @fnic_state_to_str(i64 %79)
  %81 = call i32 (i32, i32, i8*, i32, ...) @FNIC_FCS_DBG(i32 %71, i32 %76, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.fnic*, %struct.fnic** %7, align 8
  %83 = getelementptr inbounds %struct.fnic, %struct.fnic* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock_irq(i32* %83)
  br label %111

85:                                               ; preds = %66
  %86 = load %struct.fnic*, %struct.fnic** %7, align 8
  %87 = getelementptr inbounds %struct.fnic, %struct.fnic* %86, i32 0, i32 1
  %88 = call i32 @spin_unlock_irq(i32* %87)
  %89 = load %struct.fnic*, %struct.fnic** %7, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @fnic_flogi_reg_handler(%struct.fnic* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %85
  %95 = load %struct.fnic*, %struct.fnic** %7, align 8
  %96 = getelementptr inbounds %struct.fnic, %struct.fnic* %95, i32 0, i32 1
  %97 = call i32 @spin_lock_irq(i32* %96)
  %98 = load %struct.fnic*, %struct.fnic** %7, align 8
  %99 = getelementptr inbounds %struct.fnic, %struct.fnic* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @FNIC_IN_ETH_TRANS_FC_MODE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i64, i64* @FNIC_IN_ETH_MODE, align 8
  %105 = load %struct.fnic*, %struct.fnic** %7, align 8
  %106 = getelementptr inbounds %struct.fnic, %struct.fnic* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %94
  %108 = load %struct.fnic*, %struct.fnic** %7, align 8
  %109 = getelementptr inbounds %struct.fnic, %struct.fnic* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock_irq(i32* %109)
  br label %111

111:                                              ; preds = %21, %70, %107, %85
  ret void
}

declare dso_local %struct.fnic* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @FNIC_FCS_DBG(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @fnic_update_mac(%struct.fc_lport*, i32*) #1

declare dso_local i32 @fnic_set_eth_mode(%struct.fnic*) #1

declare dso_local %struct.TYPE_5__* @fr_cb(%struct.fc_frame*) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @fcoe_ctlr_recv_flogi(%struct.TYPE_6__*, %struct.fc_lport*, %struct.fc_frame*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @fnic_state_to_str(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @fnic_flogi_reg_handler(%struct.fnic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
