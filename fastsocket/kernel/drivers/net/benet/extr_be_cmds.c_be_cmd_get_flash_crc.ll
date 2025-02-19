; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_flash_crc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_flash_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_read_flash_crc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_READ_FLASHROM = common dso_local global i32 0, align 4
@OPTYPE_REDBOOT = common dso_local global i32 0, align 4
@FLASHROM_OPER_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_flash_crc(%struct.be_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_read_flash_crc*, align 8
  %9 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %14 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %13)
  store %struct.be_mcc_wrb* %14, %struct.be_mcc_wrb** %7, align 8
  %15 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %16 = icmp ne %struct.be_mcc_wrb* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %22 = call %struct.be_cmd_read_flash_crc* @embedded_payload(%struct.be_mcc_wrb* %21)
  store %struct.be_cmd_read_flash_crc* %22, %struct.be_cmd_read_flash_crc** %8, align 8
  %23 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %8, align 8
  %24 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %23, i32 0, i32 2
  %25 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %26 = load i32, i32* @OPCODE_COMMON_READ_FLASHROM, align 4
  %27 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %28 = call i32 @be_wrb_cmd_hdr_prepare(i32* %24, i32 %25, i32 %26, i32 48, %struct.be_mcc_wrb* %27, i32* null)
  %29 = load i32, i32* @OPTYPE_REDBOOT, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %8, align 8
  %32 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* @FLASHROM_OPER_REPORT, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %8, align 8
  %37 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %8, align 8
  %42 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = call i8* @cpu_to_le32(i32 4)
  %45 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %8, align 8
  %46 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %49 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %20
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %8, align 8
  %55 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(i32* %53, i32 %56, i32 4)
  br label %58

58:                                               ; preds = %52, %20
  br label %59

59:                                               ; preds = %58, %17
  %60 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_read_flash_crc* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
