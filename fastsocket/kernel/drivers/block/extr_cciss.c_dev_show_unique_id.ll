; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_dev_show_unique_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_dev_show_unique_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ctlr_info = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dev_show_unique_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_show_unique_id(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.ctlr_info*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.TYPE_5__* @to_drv(%struct.device* %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ctlr_info* @to_hba(i32 %18)
  store %struct.ctlr_info* %19, %struct.ctlr_info** %9, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %21 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %20, i32 0, i32 0
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %25 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  br label %37

31:                                               ; preds = %3
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32* %32, i32 %35, i32 64)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %39 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %38, i32 0, i32 0
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %81

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 4
  %57 = load i32, i32* %56, align 16
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 6
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 7
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 8
  %65 = load i32, i32* %64, align 16
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 9
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 10
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 11
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 12
  %73 = load i32, i32* %72, align 16
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 13
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 14
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 15
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @snprintf(i8* %47, i32 34, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51, i32 %53, i32 %55, i32 %57, i32 %59, i32 %61, i32 %63, i32 %65, i32 %67, i32 %69, i32 %71, i32 %73, i32 %75, i32 %77, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %46, %44
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_5__* @to_drv(%struct.device*) #1

declare dso_local %struct.ctlr_info* @to_hba(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
