; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_release_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_release_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.rtl8169_private = type { %struct.TYPE_4__* }

@RTL_FIRMWARE_UNKNOWN = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_release_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_release_firmware(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_4__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @release_firmware(i32 %13)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @kfree(%struct.TYPE_4__* %17)
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RTL_FIRMWARE_UNKNOWN, align 8
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %21, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %22, align 8
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_4__*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
