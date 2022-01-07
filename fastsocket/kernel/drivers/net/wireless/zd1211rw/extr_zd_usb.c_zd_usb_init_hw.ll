; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32 }
%struct.zd_mac = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"couldn't load firmware. Error number %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"couldn't reset configuration. Error number %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"couldn't initialize mac. Error number %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_usb_init_hw(%struct.zd_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_mac*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %3, align 8
  %6 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %7 = call %struct.zd_mac* @zd_usb_to_mac(%struct.zd_usb* %6)
  store %struct.zd_mac* %7, %struct.zd_mac** %5, align 8
  %8 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %9 = call i32 @zd_usb_dev(%struct.zd_usb* %8)
  %10 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %12 = call i32 @upload_firmware(%struct.zd_usb* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %17 = call i32 @zd_usb_dev(%struct.zd_usb* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %23 = call i32 @zd_usb_to_usbdev(%struct.zd_usb* %22)
  %24 = call i32 @usb_reset_configuration(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %29 = call i32 @zd_usb_dev(%struct.zd_usb* %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %21
  %34 = load %struct.zd_mac*, %struct.zd_mac** %5, align 8
  %35 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @zd_mac_init_hw(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %42 = call i32 @zd_usb_dev(%struct.zd_usb* %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %33
  %47 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %48 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %40, %27, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.zd_mac* @zd_usb_to_mac(%struct.zd_usb*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, ...) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @upload_firmware(%struct.zd_usb*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @usb_reset_configuration(i32) #1

declare dso_local i32 @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local i32 @zd_mac_init_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
