; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_pl_descr_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_pl_descr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64 }
%struct.i2400m_pld = type { i32 }
%struct.device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"RX: HW BUG? payload @%zu: size %zu is bigger than maximum %zu; ignoring message\0A\00", align 1
@.str.1 = private unnamed_addr constant [103 x i8] c"RX: HW BUG? payload @%zu: size %zu goes beyond the received buffer size (%zu bytes); ignoring message\0A\00", align 1
@I2400M_PT_ILLEGAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"RX: HW BUG? illegal payload type %u; ignoring message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.i2400m_pld*, i64, i64)* @i2400m_rx_pl_descr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_rx_pl_descr_check(%struct.i2400m* %0, %struct.i2400m_pld* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.i2400m_pld*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store %struct.i2400m_pld* %1, %struct.i2400m_pld** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %16 = call %struct.device* @i2400m_dev(%struct.i2400m* %15)
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.i2400m_pld*, %struct.i2400m_pld** %6, align 8
  %18 = call i64 @i2400m_pld_size(%struct.i2400m_pld* %17)
  store i64 %18, i64* %11, align 8
  %19 = load %struct.i2400m_pld*, %struct.i2400m_pld** %6, align 8
  %20 = call i32 @i2400m_pld_type(%struct.i2400m_pld* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %23 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.device*, %struct.device** %10, align 8
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %32 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %30, i64 %33)
  br label %57

35:                                               ; preds = %4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i32 %44, i64 %45, i64 %46)
  br label %57

48:                                               ; preds = %35
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @I2400M_PT_ILLEGAL, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.device*, %struct.device** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %57

56:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %52, %41, %26
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i64 @i2400m_pld_size(%struct.i2400m_pld*) #1

declare dso_local i32 @i2400m_pld_type(%struct.i2400m_pld*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
