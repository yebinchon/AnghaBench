; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru3.c_abituguru3_synchronize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru3.c_abituguru3_synchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru3_data = type { i64 }

@ABIT_UGURU3_SYNCHRONIZE_TIMEOUT = common dso_local global i32 0, align 4
@ABIT_UGURU3_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"synchronize timeout during initial busy wait, status: 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ABIT_UGURU3_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"synchronize timeout after sending 0x20, status: 0x%02x\0A\00", align 1
@ABIT_UGURU3_CMD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"synchronize timeout after sending 0x10, status: 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"synchronize timeout after sending 0x00, status: 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"synchronize timeout waiting for read, status: 0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"synchronize timeout cmd does not hold 0xAC after synchronize, cmd: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru3_data*)* @abituguru3_synchronize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru3_synchronize(%struct.abituguru3_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.abituguru3_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.abituguru3_data* %0, %struct.abituguru3_data** %3, align 8
  %6 = load i32, i32* @ABIT_UGURU3_SYNCHRONIZE_TIMEOUT, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %8 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %96

16:                                               ; preds = %1
  %17 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %18 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ABIT_UGURU3_DATA, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 32, i64 %21)
  %23 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %24 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %96

32:                                               ; preds = %16
  %33 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %34 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 16, i64 %37)
  %39 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %40 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %96

48:                                               ; preds = %32
  %49 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %50 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb(i32 0, i64 %53)
  %55 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %56 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %96

64:                                               ; preds = %48
  %65 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %66 = call i32 @abituguru3_wait_for_read(%struct.abituguru3_data* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %96

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %93, %74
  %76 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %77 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @inb(i64 %80)
  store i32 %81, i32* %4, align 4
  %82 = icmp ne i32 %81, 172
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %96

93:                                               ; preds = %83
  %94 = call i32 @msleep(i32 1)
  br label %75

95:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %88, %69, %59, %43, %27, %11
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @abituguru3_wait_while_busy(%struct.abituguru3_data*) #1

declare dso_local i32 @ABIT_UGURU3_DEBUG(i8*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @abituguru3_wait_for_read(%struct.abituguru3_data*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
