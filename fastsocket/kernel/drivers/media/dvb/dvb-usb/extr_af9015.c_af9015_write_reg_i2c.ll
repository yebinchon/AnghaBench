; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9015.c_af9015_write_reg_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9015.c_af9015_write_reg_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.dvb_usb_device = type { i32 }
%struct.req_t = type { i64, i32, i32, i32, i64*, i32, i32, i32 }

@WRITE_I2C = common dso_local global i32 0, align 4
@af9015_af9013_config = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i64, i32, i64)* @af9015_write_reg_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_write_reg_i2c(%struct.dvb_usb_device* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.req_t, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 0
  %11 = load i32, i32* @WRITE_I2C, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %10, align 8
  %13 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %13, align 8
  %16 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 3
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 4
  store i64* inttoptr (i64 1 to i64*), i64** %19, align 8
  %20 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 5
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 6
  %22 = ptrtoint i64* %8 to i32
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 7
  store i32 0, i32* %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @af9015_af9013_config, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @af9015_af9013_config, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30, %4
  %38 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 5
  store i32 3, i32* %38, align 8
  br label %39

39:                                               ; preds = %37, %30
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %41 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %40, %struct.req_t* %9)
  ret i32 %41
}

declare dso_local i32 @af9015_ctrl_msg(%struct.dvb_usb_device*, %struct.req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
