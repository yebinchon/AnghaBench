; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_prog_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_prog_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { %struct.lbs_private* }
%struct.lbs_private = type { i64, i64, i32, i32, i32* }

@BOOT_CMD_UPDATE_FW = common dso_local global i32 0, align 4
@FW_CAPINFO_FIRMWARE_UPGRADE = common dso_local global i64 0, align 8
@BOOT_CMD_UPDATE_BOOT2 = common dso_local global i32 0, align 4
@FW_CAPINFO_BOOT2_UPGRADE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DNLD_RES_RECEIVED = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@DNLD_BOOTCMD_SENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*, i8*, i32)* @if_usb_prog_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_prog_firmware(%struct.if_usb_card* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_usb_card*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lbs_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.if_usb_card* %0, %struct.if_usb_card** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %13 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %12, i32 0, i32 0
  %14 = load %struct.lbs_private*, %struct.lbs_private** %13, align 8
  store %struct.lbs_private* %14, %struct.lbs_private** %8, align 8
  %15 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BOOT_CMD_UPDATE_FW, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @FW_CAPINFO_FIRMWARE_UPGRADE, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BOOT_CMD_UPDATE_BOOT2, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @FW_CAPINFO_BOOT2_UPGRADE, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %21
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %114

38:                                               ; preds = %30, %26
  %39 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 3
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %82, %38
  %44 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %45 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %50 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DNLD_RES_RECEIVED, align 8
  %53 = icmp ne i64 %51, %52
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi i1 [ true, %43 ], [ %53, %48 ]
  br i1 %55, label %56, label %87

56:                                               ; preds = %54
  %57 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 3
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %62 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %70 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DNLD_RES_RECEIVED, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %68, %56
  %75 = phi i1 [ false, %56 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i64 @wait_event_interruptible(i32 %63, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @ERESTARTSYS, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %114

82:                                               ; preds = %74
  %83 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %84 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %83, i32 0, i32 3
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  br label %43

87:                                               ; preds = %54
  %88 = load i64, i64* @DNLD_BOOTCMD_SENT, align 8
  %89 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %90 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %92 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %91, i32 0, i32 3
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.if_usb_card*, %struct.if_usb_card** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @__if_usb_prog_firmware(%struct.if_usb_card* %95, i8* %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %100 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %99, i32 0, i32 3
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load i64, i64* @DNLD_RES_RECEIVED, align 8
  %104 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %105 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %107 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %106, i32 0, i32 3
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %111 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %110, i32 0, i32 2
  %112 = call i32 @wake_up_interruptible(i32* %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %87, %79, %35
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @__if_usb_prog_firmware(%struct.if_usb_card*, i8*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
