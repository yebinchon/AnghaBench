; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_sht15.c_sht15_update_single_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_sht15.c_sht15_update_single_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SHT15_READING_NOTHING = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sht15_data*, i32, i32)* @sht15_update_single_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_update_single_val(%struct.sht15_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sht15_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @sht15_send_cmd(%struct.sht15_data* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %85

16:                                               ; preds = %3
  %17 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %18 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpio_direction_input(i32 %21)
  %23 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %24 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %23, i32 0, i32 4
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %27 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gpio_to_irq(i32 %30)
  %32 = call i32 @enable_irq(i32 %31)
  %33 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %34 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @gpio_get_value(i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %16
  %41 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %42 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gpio_to_irq(i32 %45)
  %47 = call i32 @disable_irq_nosync(i32 %46)
  %48 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %49 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %48, i32 0, i32 4
  %50 = call i32 @atomic_read(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %54 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %53, i32 0, i32 3
  %55 = call i32 @schedule_work(i32* %54)
  br label %56

56:                                               ; preds = %52, %40
  br label %57

57:                                               ; preds = %56, %16
  %58 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %59 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %62 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SHT15_READING_NOTHING, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @msecs_to_jiffies(i32 %67)
  %69 = call i32 @wait_event_timeout(i32 %60, i32 %66, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %57
  %73 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %74 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @gpio_to_irq(i32 %77)
  %79 = call i32 @disable_irq_nosync(i32 %78)
  %80 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %81 = call i32 @sht15_connection_reset(%struct.sht15_data* %80)
  %82 = load i32, i32* @ETIME, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %72, %14
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @sht15_send_cmd(%struct.sht15_data*, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sht15_connection_reset(%struct.sht15_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
