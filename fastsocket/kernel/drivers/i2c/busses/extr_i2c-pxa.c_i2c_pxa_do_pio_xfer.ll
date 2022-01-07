; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_do_pio_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_do_pio_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { i32, i32, i64, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_i2c*, %struct.i2c_msg*, i32)* @i2c_pxa_do_pio_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_do_pio_xfer(%struct.pxa_i2c* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.pxa_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 500000, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %10 = call i32 @i2c_pxa_pio_set_master(%struct.pxa_i2c* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %16 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %17 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %16, i32 0, i32 4
  store %struct.i2c_msg* %15, %struct.i2c_msg** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %20 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %22 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %24 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %26 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %28 = call i32 @i2c_pxa_start_message(%struct.pxa_i2c* %27)
  br label %29

29:                                               ; preds = %40, %14
  %30 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %31 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ false, %29 ], [ %37, %34 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %42 = call i32 @i2c_pxa_handler(i32 0, %struct.pxa_i2c* %41)
  %43 = call i32 @udelay(i32 10)
  br label %29

44:                                               ; preds = %38
  %45 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %46 = call i32 @i2c_pxa_stop_message(%struct.pxa_i2c* %45)
  %47 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %48 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %13
  %51 = load i64, i64* %7, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %55 = call i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @i2c_pxa_pio_set_master(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_start_message(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_handler(i32, %struct.pxa_i2c*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_pxa_stop_message(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
