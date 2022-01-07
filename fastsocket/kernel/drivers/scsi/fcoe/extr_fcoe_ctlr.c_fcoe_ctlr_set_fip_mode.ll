; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_set_fip_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_set_fip_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr_device = type { i32 }
%struct.fcoe_ctlr = type { i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i32 }

@FIP_MODE_VN2VN = common dso_local global i32 0, align 4
@FIP_MODE_FABRIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcoe_ctlr_set_fip_mode(%struct.fcoe_ctlr_device* %0) #0 {
  %2 = alloca %struct.fcoe_ctlr_device*, align 8
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  store %struct.fcoe_ctlr_device* %0, %struct.fcoe_ctlr_device** %2, align 8
  %5 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %6 = call %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device* %5)
  store %struct.fcoe_ctlr* %6, %struct.fcoe_ctlr** %3, align 8
  %7 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %8 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %7, i32 0, i32 2
  %9 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  store %struct.fc_lport* %9, %struct.fc_lport** %4, align 8
  %10 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %11 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %14 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %21 [
    i32 128, label %16
    i32 129, label %20
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @FIP_MODE_VN2VN, align 4
  %18 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %19 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %25

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %1, %20
  %22 = load i32, i32* @FIP_MODE_FABRIC, align 4
  %23 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %24 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %27 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %30 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %31 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %32 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @fcoe_ctlr_mode_set(%struct.fc_lport* %29, %struct.fcoe_ctlr* %30, i32 %33)
  ret void
}

declare dso_local %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fcoe_ctlr_mode_set(%struct.fc_lport*, %struct.fcoe_ctlr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
