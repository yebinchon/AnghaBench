; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_tiocx.c_store_cxdev_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_tiocx.c_store_cxdev_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cx_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@TIOCX_CORELET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_cxdev_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_cxdev_control(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cx_dev*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.cx_dev* @to_cx_dev(%struct.device* %12)
  store %struct.cx_dev* %13, %struct.cx_dev** %11, align 8
  %14 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %15 = call i32 @capable(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @EPERM, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %50

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp ule i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i64 0, i64* %5, align 8
  br label %50

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @simple_strtoul(i8* %25, i32* null, i32 0)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %47 [
    i32 1, label %28
    i32 2, label %37
    i32 3, label %40
  ]

28:                                               ; preds = %24
  %29 = load %struct.cx_dev*, %struct.cx_dev** %11, align 8
  %30 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TIOCX_CORELET, align 4
  %34 = call i32 @tio_corelet_reset(i32 %32, i32 %33)
  %35 = load %struct.cx_dev*, %struct.cx_dev** %11, align 8
  %36 = call i32 @tiocx_reload(%struct.cx_dev* %35)
  br label %48

37:                                               ; preds = %24
  %38 = load %struct.cx_dev*, %struct.cx_dev** %11, align 8
  %39 = call i32 @tiocx_reload(%struct.cx_dev* %38)
  br label %48

40:                                               ; preds = %24
  %41 = load %struct.cx_dev*, %struct.cx_dev** %11, align 8
  %42 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TIOCX_CORELET, align 4
  %46 = call i32 @tio_corelet_reset(i32 %44, i32 %45)
  br label %48

47:                                               ; preds = %24
  br label %48

48:                                               ; preds = %47, %40, %37, %28
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %48, %23, %17
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local %struct.cx_dev* @to_cx_dev(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @tio_corelet_reset(i32, i32) #1

declare dso_local i32 @tiocx_reload(%struct.cx_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
