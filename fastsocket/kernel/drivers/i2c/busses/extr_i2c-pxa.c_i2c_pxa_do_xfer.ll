; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_do_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_do_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { i32, i32, i32, i32, i64, i64, %struct.i2c_msg*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"i2c_pxa: timeout waiting for bus free\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"i2c_pxa_set_master: error %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_i2c*, %struct.i2c_msg*, i32)* @i2c_pxa_do_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_do_xfer(%struct.pxa_i2c* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.pxa_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %10 = call i32 @i2c_pxa_wait_bus_not_busy(%struct.pxa_i2c* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %15 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %72

18:                                               ; preds = %3
  %19 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %20 = call i32 @i2c_pxa_set_master(%struct.pxa_i2c* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %25 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %72

29:                                               ; preds = %18
  %30 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %31 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %30, i32 0, i32 3
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %34 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %35 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %34, i32 0, i32 6
  store %struct.i2c_msg* %33, %struct.i2c_msg** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %38 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %40 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %42 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %44 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %46 = call i32 @i2c_pxa_start_message(%struct.pxa_i2c* %45)
  %47 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %48 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %47, i32 0, i32 3
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %51 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %54 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* @HZ, align 4
  %59 = mul nsw i32 %58, 5
  %60 = call i64 @wait_event_timeout(i32 %52, i32 %57, i32 %59)
  store i64 %60, i64* %7, align 8
  %61 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %62 = call i32 @i2c_pxa_stop_message(%struct.pxa_i2c* %61)
  %63 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %64 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  %66 = load i64, i64* %7, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %29
  %69 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %70 = call i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %29
  br label %72

72:                                               ; preds = %71, %23, %13
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @i2c_pxa_wait_bus_not_busy(%struct.pxa_i2c*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_pxa_set_master(%struct.pxa_i2c*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @i2c_pxa_start_message(%struct.pxa_i2c*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @i2c_pxa_stop_message(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
