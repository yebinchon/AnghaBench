; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-drv.c__iwl_op_mode_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-drv.c__iwl_op_mode_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { i32 }
%struct.iwl_drv = type { %struct.dentry*, i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.iwlwifi_opmode_table = type { i32, %struct.iwl_op_mode_ops* }
%struct.iwl_op_mode_ops = type { %struct.iwl_op_mode* (i32, i32, i32*, %struct.dentry.0*)* }
%struct.dentry.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_op_mode* (%struct.iwl_drv*, %struct.iwlwifi_opmode_table*)* @_iwl_op_mode_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_op_mode* @_iwl_op_mode_start(%struct.iwl_drv* %0, %struct.iwlwifi_opmode_table* %1) #0 {
  %3 = alloca %struct.iwl_drv*, align 8
  %4 = alloca %struct.iwlwifi_opmode_table*, align 8
  %5 = alloca %struct.iwl_op_mode_ops*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.iwl_op_mode*, align 8
  store %struct.iwl_drv* %0, %struct.iwl_drv** %3, align 8
  store %struct.iwlwifi_opmode_table* %1, %struct.iwlwifi_opmode_table** %4, align 8
  %8 = load %struct.iwlwifi_opmode_table*, %struct.iwlwifi_opmode_table** %4, align 8
  %9 = getelementptr inbounds %struct.iwlwifi_opmode_table, %struct.iwlwifi_opmode_table* %8, i32 0, i32 1
  %10 = load %struct.iwl_op_mode_ops*, %struct.iwl_op_mode_ops** %9, align 8
  store %struct.iwl_op_mode_ops* %10, %struct.iwl_op_mode_ops** %5, align 8
  store %struct.dentry* null, %struct.dentry** %6, align 8
  store %struct.iwl_op_mode* null, %struct.iwl_op_mode** %7, align 8
  %11 = load %struct.iwl_op_mode_ops*, %struct.iwl_op_mode_ops** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_op_mode_ops, %struct.iwl_op_mode_ops* %11, i32 0, i32 0
  %13 = load %struct.iwl_op_mode* (i32, i32, i32*, %struct.dentry.0*)*, %struct.iwl_op_mode* (i32, i32, i32*, %struct.dentry.0*)** %12, align 8
  %14 = load %struct.iwl_drv*, %struct.iwl_drv** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.iwl_drv*, %struct.iwl_drv** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iwl_drv*, %struct.iwl_drv** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %20, i32 0, i32 1
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = bitcast %struct.dentry* %22 to %struct.dentry.0*
  %24 = call %struct.iwl_op_mode* %13(i32 %16, i32 %19, i32* %21, %struct.dentry.0* %23)
  store %struct.iwl_op_mode* %24, %struct.iwl_op_mode** %7, align 8
  %25 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %7, align 8
  ret %struct.iwl_op_mode* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
