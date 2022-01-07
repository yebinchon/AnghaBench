; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_check_batteries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_check_batteries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardinfo = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@MEMCTRLSTATUS_BATTERY = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@DEBUG_BATTERY_POLLING = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"checking battery status, 1 = %s, 2 = %s\0A\00", align 1
@BATTERY_1_FAILURE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"FAILURE\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@BATTERY_2_FAILURE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardinfo*)* @check_batteries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_batteries(%struct.cardinfo* %0) #0 {
  %2 = alloca %struct.cardinfo*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cardinfo* %0, %struct.cardinfo** %2, align 8
  %6 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %7 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MEMCTRLSTATUS_BATTERY, align 8
  %10 = add nsw i64 %8, %9
  %11 = call zeroext i8 @readb(i64 %10)
  store i8 %11, i8* %3, align 1
  %12 = load i32, i32* @debug, align 4
  %13 = load i32, i32* @DEBUG_BATTERY_POLLING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load i32, i32* @KERN_DEBUG, align 4
  %18 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %19 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @BATTERY_1_FAILURE, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @BATTERY_2_FAILURE, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @dev_printk(i32 %17, i32* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %37)
  br label %39

39:                                               ; preds = %16, %1
  %40 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %41 = load i8, i8* %3, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @BATTERY_1_FAILURE, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @check_battery(%struct.cardinfo* %40, i32 0, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %51 = load i8, i8* %3, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @BATTERY_2_FAILURE, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @check_battery(%struct.cardinfo* %50, i32 1, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %39
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %39
  %66 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %67 = call i32 @set_fault_to_battery_status(%struct.cardinfo* %66)
  br label %68

68:                                               ; preds = %65, %62
  ret void
}

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @check_battery(%struct.cardinfo*, i32, i32) #1

declare dso_local i32 @set_fault_to_battery_status(%struct.cardinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
