; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_enable_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_enable_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_enable_disable_vf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_ENABLE_DISABLE_VF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_enable_vf(%struct.be_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca %struct.be_cmd_enable_disable_vf*, align 8
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %10 = call i64 @BEx_chip(%struct.be_adapter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %18 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %17)
  store %struct.be_mcc_wrb* %18, %struct.be_mcc_wrb** %6, align 8
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %20 = icmp ne %struct.be_mcc_wrb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %41

24:                                               ; preds = %13
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %26 = call %struct.be_cmd_enable_disable_vf* @embedded_payload(%struct.be_mcc_wrb* %25)
  store %struct.be_cmd_enable_disable_vf* %26, %struct.be_cmd_enable_disable_vf** %7, align 8
  %27 = load %struct.be_cmd_enable_disable_vf*, %struct.be_cmd_enable_disable_vf** %7, align 8
  %28 = getelementptr inbounds %struct.be_cmd_enable_disable_vf, %struct.be_cmd_enable_disable_vf* %27, i32 0, i32 1
  %29 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %30 = load i32, i32* @OPCODE_COMMON_ENABLE_DISABLE_VF, align 4
  %31 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %32 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %28, i32 %29, i32 %30, i32 8, %struct.be_mcc_wrb* %31, i32* null)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.be_cmd_enable_disable_vf*, %struct.be_cmd_enable_disable_vf** %7, align 8
  %35 = getelementptr inbounds %struct.be_cmd_enable_disable_vf, %struct.be_cmd_enable_disable_vf* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.be_cmd_enable_disable_vf*, %struct.be_cmd_enable_disable_vf** %7, align 8
  %38 = getelementptr inbounds %struct.be_cmd_enable_disable_vf, %struct.be_cmd_enable_disable_vf* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %40 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %24, %21
  %42 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_enable_disable_vf* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
