; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_sysfs.c_b43legacy_attr_interfmode_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_sysfs.c_b43legacy_attr_interfmode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.b43legacy_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@B43legacy_INTERFMODE_NONE = common dso_local global i32 0, align 4
@B43legacy_INTERFMODE_NONWLAN = common dso_local global i32 0, align 4
@B43legacy_INTERFMODE_MANUALWLAN = common dso_local global i32 0, align 4
@B43legacy_INTERFMODE_AUTOWLAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Interference Mitigation not supported by device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @b43legacy_attr_interfmode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_attr_interfmode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.b43legacy_wldev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.b43legacy_wldev* @dev_to_b43legacy_wldev(%struct.device* %14)
  store %struct.b43legacy_wldev* %15, %struct.b43legacy_wldev** %10, align 8
  %16 = load i32, i32* @CAP_NET_ADMIN, align 4
  %17 = call i32 @capable(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %83

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @get_integer(i8* %23, i64 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  switch i32 %26, label %35 [
    i32 0, label %27
    i32 1, label %29
    i32 2, label %31
    i32 3, label %33
  ]

27:                                               ; preds = %22
  %28 = load i32, i32* @B43legacy_INTERFMODE_NONE, align 4
  store i32 %28, i32* %13, align 4
  br label %38

29:                                               ; preds = %22
  %30 = load i32, i32* @B43legacy_INTERFMODE_NONWLAN, align 4
  store i32 %30, i32* %13, align 4
  br label %38

31:                                               ; preds = %22
  %32 = load i32, i32* @B43legacy_INTERFMODE_MANUALWLAN, align 4
  store i32 %32, i32* %13, align 4
  br label %38

33:                                               ; preds = %22
  %34 = load i32, i32* @B43legacy_INTERFMODE_AUTOWLAN, align 4
  store i32 %34, i32* %13, align 4
  br label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %83

38:                                               ; preds = %33, %31, %29, %27
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %40 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %45 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @b43legacy_radio_set_interference_mitigation(%struct.b43legacy_wldev* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %38
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %57 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @b43legacyerr(%struct.TYPE_2__* %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %38
  %61 = call i32 (...) @mmiowb()
  %62 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %63 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %10, align 8
  %69 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  br label %80

78:                                               ; preds = %60
  %79 = load i64, i64* %9, align 8
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi i64 [ %77, %75 ], [ %79, %78 ]
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %35, %19
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.b43legacy_wldev* @dev_to_b43legacy_wldev(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @get_integer(i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @b43legacy_radio_set_interference_mitigation(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacyerr(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
