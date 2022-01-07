; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_show_lunid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_show_lunid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ctlr_info = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"0x%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cciss_show_lunid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cciss_show_lunid(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.ctlr_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [8 x i8], align 1
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.TYPE_5__* @to_drv(%struct.device* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ctlr_info* @to_hba(i32 %17)
  store %struct.ctlr_info* %18, %struct.ctlr_info** %9, align 8
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %20 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %19, i32 0, i32 0
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %24 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %29 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %28, i32 0, i32 0
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %74

34:                                               ; preds = %3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %41 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %40, i32 0, i32 0
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* @ENOTTY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %74

46:                                               ; preds = %34
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i8* %47, i32 %50, i32 8)
  %52 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %53 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %52, i32 0, i32 0
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 5
  %68 = load i8, i8* %67, align 1
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 6
  %70 = load i8, i8* %69, align 1
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 7
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @snprintf(i8* %56, i32 20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 zeroext %58, i8 zeroext %60, i8 zeroext %62, i8 zeroext %64, i8 zeroext %66, i8 zeroext %68, i8 zeroext %70, i8 zeroext %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %46, %39, %27
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_5__* @to_drv(%struct.device*) #1

declare dso_local %struct.ctlr_info* @to_hba(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
