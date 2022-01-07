; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_request_uncached_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_request_uncached_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.rtl_fw*, i32, %struct.TYPE_2__* }
%struct.rtl_fw = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unable to load firmware patch %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_request_uncached_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_request_uncached_firmware(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca %struct.rtl_fw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = call i8* @rtl_lookup_firmware_name(%struct.rtl8169_private* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %60

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.rtl_fw* @kzalloc(i32 4, i32 %14)
  store %struct.rtl_fw* %15, %struct.rtl_fw** %3, align 8
  %16 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %17 = icmp ne %struct.rtl_fw* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %51

19:                                               ; preds = %13
  %20 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %20, i32 0, i32 0
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %24 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @request_firmware(i32* %21, i8* %22, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %48

31:                                               ; preds = %19
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %33 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %34 = call i32 @rtl_check_firmware(%struct.rtl8169_private* %32, %struct.rtl_fw* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %31
  %39 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %40 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %41 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %40, i32 0, i32 0
  store %struct.rtl_fw* %39, %struct.rtl_fw** %41, align 8
  br label %42

42:                                               ; preds = %60, %38
  ret void

43:                                               ; preds = %37
  %44 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %45 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @release_firmware(i32 %46)
  br label %48

48:                                               ; preds = %43, %30
  %49 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %50 = call i32 @kfree(%struct.rtl_fw* %49)
  br label %51

51:                                               ; preds = %48, %18
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %53 = load i32, i32* @ifup, align 4
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %55 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @netif_warn(%struct.rtl8169_private* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %12
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %62 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %61, i32 0, i32 0
  store %struct.rtl_fw* null, %struct.rtl_fw** %62, align 8
  br label %42
}

declare dso_local i8* @rtl_lookup_firmware_name(%struct.rtl8169_private*) #1

declare dso_local %struct.rtl_fw* @kzalloc(i32, i32) #1

declare dso_local i32 @request_firmware(i32*, i8*, i32*) #1

declare dso_local i32 @rtl_check_firmware(%struct.rtl8169_private*, %struct.rtl_fw*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @kfree(%struct.rtl_fw*) #1

declare dso_local i32 @netif_warn(%struct.rtl8169_private*, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
