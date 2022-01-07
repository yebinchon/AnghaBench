; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_configure_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_configure_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dt9812 = type { i64 }
%struct.dt9812_rmw_byte = type { i32, i32, i32 }

@DT9812_DEVID_DT9812_10 = common dso_local global i64 0, align 8
@F020_SFR_P1 = common dso_local global i32 0, align 4
@F020_SFR_AMX0SL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_dt9812*, %struct.dt9812_rmw_byte*, i32)* @dt9812_configure_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt9812_configure_mux(%struct.usb_dt9812* %0, %struct.dt9812_rmw_byte* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_dt9812*, align 8
  %5 = alloca %struct.dt9812_rmw_byte*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_dt9812* %0, %struct.usb_dt9812** %4, align 8
  store %struct.dt9812_rmw_byte* %1, %struct.dt9812_rmw_byte** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.usb_dt9812*, %struct.usb_dt9812** %4, align 8
  %8 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DT9812_DEVID_DT9812_10, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* @F020_SFR_P1, align 4
  %14 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %5, align 8
  %15 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %5, align 8
  %17 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %16, i32 0, i32 0
  store i32 224, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 5
  %20 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %5, align 8
  %21 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %32

22:                                               ; preds = %3
  %23 = load i32, i32* @F020_SFR_AMX0SL, align 4
  %24 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %5, align 8
  %25 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %5, align 8
  %27 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %26, i32 0, i32 0
  store i32 255, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 7
  %30 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %5, align 8
  %31 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
