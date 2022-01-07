; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_program_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_program_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.ezusb_priv* }
%struct.ezusb_priv = type { i32 }
%struct.request_context = type { i32 }

@EZUSB_RID_PROG_INIT = common dso_local global i32 0, align 4
@EZUSB_RID_ACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EZUSB_FRAME_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32)* @ezusb_program_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezusb_program_init(%struct.hermes* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hermes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ezusb_priv*, align 8
  %7 = alloca %struct.request_context*, align 8
  %8 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hermes*, %struct.hermes** %4, align 8
  %10 = getelementptr inbounds %struct.hermes, %struct.hermes* %9, i32 0, i32 0
  %11 = load %struct.ezusb_priv*, %struct.ezusb_priv** %10, align 8
  store %struct.ezusb_priv* %11, %struct.ezusb_priv** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ezusb_priv*, %struct.ezusb_priv** %6, align 8
  %15 = load i32, i32* @EZUSB_RID_PROG_INIT, align 4
  %16 = load i32, i32* @EZUSB_RID_ACK, align 4
  %17 = call %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv* %14, i32 %15, i32 %16)
  store %struct.request_context* %17, %struct.request_context** %7, align 8
  %18 = load %struct.request_context*, %struct.request_context** %7, align 8
  %19 = icmp ne %struct.request_context* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.ezusb_priv*, %struct.ezusb_priv** %6, align 8
  %25 = load %struct.request_context*, %struct.request_context** %7, align 8
  %26 = load i32, i32* @EZUSB_FRAME_CONTROL, align 4
  %27 = call i32 @ezusb_access_ltv(%struct.ezusb_priv* %24, %struct.request_context* %25, i32 4, i32* %8, i32 %26, i32* null, i32 0, i32* null)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv*, i32, i32) #1

declare dso_local i32 @ezusb_access_ltv(%struct.ezusb_priv*, %struct.request_context*, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
