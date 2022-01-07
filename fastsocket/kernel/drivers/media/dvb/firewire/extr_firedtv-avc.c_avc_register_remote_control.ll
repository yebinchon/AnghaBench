; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_register_remote_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_register_remote_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i64 }
%struct.avc_command_frame = type { i32, i64*, i32, i32 }

@AVC_CTYPE_NOTIFY = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_UNIT = common dso_local global i32 0, align 4
@AVC_OPCODE_VENDOR = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i64 0, align 8
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i64 0, align 8
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i64 0, align 8
@SFE_VENDOR_OPCODE_REGISTER_REMOTE_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_register_remote_control(%struct.firedtv* %0) #0 {
  %2 = alloca %struct.firedtv*, align 8
  %3 = alloca %struct.avc_command_frame*, align 8
  %4 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %2, align 8
  %5 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %6 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %9, %struct.avc_command_frame** %3, align 8
  %10 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %11 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @AVC_CTYPE_NOTIFY, align 4
  %14 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %15 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @AVC_SUBUNIT_TYPE_UNIT, align 4
  %17 = or i32 %16, 7
  %18 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %19 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @AVC_OPCODE_VENDOR, align 4
  %21 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %22 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_0, align 8
  %24 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %25 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_1, align 8
  %29 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %30 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 %28, i64* %32, align 8
  %33 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_2, align 8
  %34 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %35 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  store i64 %33, i64* %37, align 8
  %38 = load i64, i64* @SFE_VENDOR_OPCODE_REGISTER_REMOTE_CONTROL, align 8
  %39 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %40 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 3
  store i64 %38, i64* %42, align 8
  %43 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %44 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %48 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %47, i32 0, i32 0
  store i32 8, i32* %48, align 8
  %49 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %50 = call i32 @avc_write(%struct.firedtv* %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %52 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
