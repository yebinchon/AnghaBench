; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_set_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_set_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_mcc_wrb = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BG_%d : VLAN Setting Failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"BS_%d : VLAN MBX Cmd Failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_set_vlan(%struct.beiscsi_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_mcc_wrb*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.be_mcc_wrb* null, %struct.be_mcc_wrb** %8, align 8
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @be_cmd_set_vlan(%struct.beiscsi_hba* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %18 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @beiscsi_log(%struct.beiscsi_hba* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %24, i32 %25, %struct.be_mcc_wrb** %8, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %33 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @beiscsi_log(%struct.beiscsi_hba* %30, i32 %31, i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %29, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @be_cmd_set_vlan(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_mccq_compl(%struct.beiscsi_hba*, i32, %struct.be_mcc_wrb**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
