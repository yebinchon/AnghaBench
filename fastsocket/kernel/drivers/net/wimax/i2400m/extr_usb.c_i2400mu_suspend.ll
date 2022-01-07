; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb.c_i2400mu_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb.c_i2400mu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2400mu = type { i32, %struct.i2400m, %struct.usb_device* }
%struct.i2400m = type { i64, i64 }
%struct.usb_device = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"(iface %p pm_msg %u)\0A\00", align 1
@I2400M_SS_DATA_PATH_CONNECTED = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"fw up, link up, not-idle, autosuspend: not entering powersave\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"fw up: entering powersave\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to suspend, will reset on resume\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"powersave requested\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"(iface %p pm_msg %u) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @i2400mu_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400mu_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.i2400mu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2400m*, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.i2400mu* @usb_get_intfdata(%struct.usb_interface* %13)
  store %struct.i2400mu* %14, %struct.i2400mu** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.i2400mu*, %struct.i2400mu** %7, align 8
  %16 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %15, i32 0, i32 1
  store %struct.i2400m* %16, %struct.i2400m** %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @d_fnstart(i32 3, %struct.device* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %18, i32 %20)
  %22 = load %struct.i2400m*, %struct.i2400m** %9, align 8
  %23 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %71

27:                                               ; preds = %2
  %28 = load %struct.i2400m*, %struct.i2400m** %9, align 8
  %29 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @I2400M_SS_DATA_PATH_CONNECTED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* @EBADF, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @d_printf(i32 1, %struct.device* %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %70

41:                                               ; preds = %33, %27
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @d_printf(i32 1, %struct.device* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.i2400mu*, %struct.i2400mu** %7, align 8
  %45 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %44, i32 0, i32 0
  %46 = call i32 @atomic_dec(i32* %45)
  %47 = load %struct.i2400m*, %struct.i2400m** %9, align 8
  %48 = call i32 @i2400m_cmd_enter_powersave(%struct.i2400m* %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.i2400mu*, %struct.i2400mu** %7, align 8
  %50 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %54, %41
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %69

64:                                               ; preds = %60
  %65 = load %struct.i2400mu*, %struct.i2400mu** %7, align 8
  %66 = call i32 @i2400mu_notification_release(%struct.i2400mu* %65)
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 @d_printf(i32 1, %struct.device* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %63
  br label %70

70:                                               ; preds = %69, %36
  br label %71

71:                                               ; preds = %70, %26
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @d_fnend(i32 3, %struct.device* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), %struct.usb_interface* %73, i32 %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.i2400mu* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.usb_interface*, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @i2400m_cmd_enter_powersave(%struct.i2400m*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @i2400mu_notification_release(%struct.i2400mu*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.usb_interface*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
