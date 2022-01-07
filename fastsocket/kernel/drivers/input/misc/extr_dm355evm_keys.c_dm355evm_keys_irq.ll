; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_dm355evm_keys.c_dm355evm_keys_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_dm355evm_keys.c_dm355evm_keys_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.dm355evm_keys = type { i32, i32 }

@dm355evm_keys_irq.last_event = internal global i32 0, align 4
@DM355EVM_MSP_INPUT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"input high err %d\0A\00", align 1
@DM355EVM_MSP_INPUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"input low err %d\0A\00", align 1
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@dm355evm_keys = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"input event 0x%04x--> keycode %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dm355evm_keys_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm355evm_keys_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dm355evm_keys*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.dm355evm_keys*
  store %struct.dm355evm_keys* %11, %struct.dm355evm_keys** %5, align 8
  br label %12

12:                                               ; preds = %78, %47, %2
  %13 = load i32, i32* @DM355EVM_MSP_INPUT_HIGH, align 4
  %14 = call i32 @dm355evm_msp_read(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %19 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %103

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 8
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @DM355EVM_MSP_INPUT_LOW, align 4
  %27 = call i32 @dm355evm_msp_read(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %32 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %103

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 57005
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %103

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @dm355evm_keys_irq.last_event, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* @dm355evm_keys_irq.last_event, align 4
  br label %12

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* @dm355evm_keys_irq.last_event, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, -2049
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @KEY_UNKNOWN, align 4
  store i32 %52, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %75, %48
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dm355evm_keys, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dm355evm_keys, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %75

68:                                               ; preds = %58
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dm355evm_keys, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  br label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %53

78:                                               ; preds = %68, %53
  %79 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %80 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %86 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @input_report_key(i32 %87, i32 %88, i32 1)
  %90 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %91 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @input_sync(i32 %92)
  %94 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %95 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @input_report_key(i32 %96, i32 %97, i32 0)
  %99 = load %struct.dm355evm_keys*, %struct.dm355evm_keys** %5, align 8
  %100 = getelementptr inbounds %struct.dm355evm_keys, %struct.dm355evm_keys* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @input_sync(i32 %101)
  br label %12

103:                                              ; preds = %42, %30, %17
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %104
}

declare dso_local i32 @dm355evm_msp_read(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
