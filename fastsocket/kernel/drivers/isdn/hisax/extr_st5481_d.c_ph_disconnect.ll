; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_ph_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_ph_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_adapter = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@L1_MODE_NULL = common dso_local global i32 0, align 4
@GREEN_LED = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st5481_adapter*)* @ph_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ph_disconnect(%struct.st5481_adapter* %0) #0 {
  %2 = alloca %struct.st5481_adapter*, align 8
  store %struct.st5481_adapter* %0, %struct.st5481_adapter** %2, align 8
  %3 = call i32 @DBG(i32 8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %4, i32 0, i32 1
  %6 = load i32, i32* @L1_MODE_NULL, align 4
  %7 = call i32 @st5481_in_mode(i32* %5, i32 %6)
  %8 = load i32, i32* @GREEN_LED, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %15 = load i32, i32* @GPIO_OUT, align 4
  %16 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %14, i32 %15, i32 %18, i32* null, i32* null)
  ret void
}

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @st5481_in_mode(i32*, i32) #1

declare dso_local i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
