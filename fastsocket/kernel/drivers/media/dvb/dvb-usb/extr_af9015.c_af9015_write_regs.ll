; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9015.c_af9015_write_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9015.c_af9015_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.req_t = type { i32*, i32, i32, i32, i32, i32, i32 }

@WRITE_MEMORY = common dso_local global i32 0, align 4
@AF9015_I2C_DEMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32)* @af9015_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_write_regs(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.req_t, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 0
  %11 = load i32, i32* @WRITE_MEMORY, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 1
  %15 = load i32, i32* @AF9015_I2C_DEMOD, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 3
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 4
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 5
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 6
  %23 = load i32*, i32** %7, align 8
  %24 = ptrtoint i32* %23 to i32
  store i32 %24, i32* %22, align 4
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %26 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %25, %struct.req_t* %9)
  ret i32 %26
}

declare dso_local i32 @af9015_ctrl_msg(%struct.dvb_usb_device*, %struct.req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
