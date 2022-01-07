; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@ehotk = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"eeepc-wlan\00", align 1
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@CM_ASL_WLAN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"eeepc-bluetooth\00", align 1
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@CM_ASL_BLUETOOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"eeepc-wwan3g\00", align 1
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@CM_ASL_3G = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"eeepc-wimax\00", align 1
@RFKILL_TYPE_WIMAX = common dso_local global i32 0, align 4
@CM_ASL_WIMAX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P5\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P6\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P7\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @eeepc_rfkill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_rfkill_init(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  %6 = call i32 @mutex_init(i32* %5)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %11 = load i32, i32* @CM_ASL_WLAN, align 4
  %12 = call i32 @eeepc_new_rfkill(i32* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.device* %9, i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %78

21:                                               ; preds = %15, %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %26 = load i32, i32* @CM_ASL_BLUETOOTH, align 4
  %27 = call i32 @eeepc_new_rfkill(i32* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.device* %24, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %78

36:                                               ; preds = %30, %21
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.device*, %struct.device** %2, align 8
  %40 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  %41 = load i32, i32* @CM_ASL_3G, align 4
  %42 = call i32 @eeepc_new_rfkill(i32* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.device* %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %78

51:                                               ; preds = %45, %36
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehotk, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.device*, %struct.device** %2, align 8
  %55 = load i32, i32* @RFKILL_TYPE_WIMAX, align 4
  %56 = load i32, i32* @CM_ASL_WIMAX, align 4
  %57 = call i32 @eeepc_new_rfkill(i32* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.device* %54, i32 %55, i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %78

66:                                               ; preds = %60, %51
  %67 = call i32 (...) @eeepc_setup_pci_hotplug()
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %66
  %74 = call i32 @eeepc_register_rfkill_notifier(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %75 = call i32 @eeepc_register_rfkill_notifier(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %76 = call i32 @eeepc_register_rfkill_notifier(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %77 = call i32 (...) @eeepc_rfkill_hotplug()
  br label %78

78:                                               ; preds = %73, %65, %50, %35, %20
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (...) @eeepc_rfkill_exit()
  br label %88

88:                                               ; preds = %86, %81, %78
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @eeepc_new_rfkill(i32*, i8*, %struct.device*, i32, i32) #1

declare dso_local i32 @eeepc_setup_pci_hotplug(...) #1

declare dso_local i32 @eeepc_register_rfkill_notifier(i8*) #1

declare dso_local i32 @eeepc_rfkill_hotplug(...) #1

declare dso_local i32 @eeepc_rfkill_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
