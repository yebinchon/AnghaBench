; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_fw_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_fw_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.beiscsi_hba = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BC_%d : be_cmd_fw_uninit Failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_fw_uninit(%struct.be_ctrl_info* %0) #0 {
  %2 = alloca %struct.be_ctrl_info*, align 8
  %3 = alloca %struct.be_mcc_wrb*, align 8
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %2, align 8
  %7 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %2, align 8
  %8 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %7, i32 0, i32 2
  %9 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %8)
  store %struct.be_mcc_wrb* %9, %struct.be_mcc_wrb** %3, align 8
  %10 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %2, align 8
  %11 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.beiscsi_hba* @pci_get_drvdata(i32 %12)
  store %struct.beiscsi_hba* %13, %struct.beiscsi_hba** %4, align 8
  %14 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %2, align 8
  %15 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  %18 = call i32 @memset(%struct.be_mcc_wrb* %17, i32 0, i32 4)
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  %20 = bitcast %struct.be_mcc_wrb* %19 to i32*
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  store i32 255, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8
  store i32 170, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  store i32 187, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  store i32 255, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %6, align 8
  store i32 255, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  store i32 204, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %6, align 8
  store i32 221, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 255, i32* %35, align 4
  %36 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %3, align 8
  %37 = call i32 @be_dws_cpu_to_le(%struct.be_mcc_wrb* %36, i32 4)
  %38 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %2, align 8
  %39 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %1
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %46 = call i32 @beiscsi_log(%struct.beiscsi_hba* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %1
  %48 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %2, align 8
  %49 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local %struct.beiscsi_hba* @pci_get_drvdata(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @be_dws_cpu_to_le(%struct.be_mcc_wrb*, i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
