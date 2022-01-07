; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_mbox_tmo_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_mbox_tmo_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@LPFC_MBOX_TMO_FLASH_CMD = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@LPFC_MBOX_SLI4_CONFIG_EXTENDED_TMO = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_FCOE = common dso_local global i32 0, align 4
@LPFC_MBOX_SLI4_CONFIG_TMO = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %43 [
    i32 130, label %15
    i32 135, label %15
    i32 131, label %15
    i32 136, label %15
    i32 137, label %15
    i32 129, label %15
    i32 134, label %15
    i32 128, label %15
    i32 133, label %15
    i32 138, label %15
    i32 132, label %17
  ]

15:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %16 = load i32, i32* @LPFC_MBOX_TMO_FLASH_CMD, align 4
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = call i32 @lpfc_sli_config_mbox_subsys_get(%struct.lpfc_hba* %18, %struct.TYPE_9__* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = call i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba* %21, %struct.TYPE_9__* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_COMMON, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %31 [
    i32 147, label %29
    i32 139, label %29
    i32 146, label %29
    i32 154, label %29
    i32 149, label %29
    i32 143, label %29
    i32 150, label %29
    i32 140, label %29
    i32 152, label %29
    i32 151, label %29
    i32 144, label %29
    i32 145, label %29
    i32 142, label %29
    i32 148, label %29
    i32 141, label %29
  ]

29:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = load i32, i32* @LPFC_MBOX_SLI4_CONFIG_EXTENDED_TMO, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_FCOE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %40 [
    i32 153, label %38
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @LPFC_MBOX_SLI4_CONFIG_EXTENDED_TMO, align 4
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* @LPFC_MBOX_SLI4_CONFIG_TMO, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @LPFC_MBOX_TMO, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41, %38, %29, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @lpfc_sli_config_mbox_subsys_get(%struct.lpfc_hba*, %struct.TYPE_9__*) #1

declare dso_local i32 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
