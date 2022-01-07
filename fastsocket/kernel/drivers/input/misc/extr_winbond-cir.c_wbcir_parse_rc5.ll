; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_parse_rc5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_parse_rc5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wbcir_data = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"RC5 - Invalid start bit\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"RC5 - Invalid message\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"IR-RC5 ad %u cm %u t %u s %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.wbcir_data*)* @wbcir_parse_rc5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_parse_rc5(%struct.device* %0, %struct.wbcir_data* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wbcir_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.wbcir_data* %1, %struct.wbcir_data** %4, align 8
  %9 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %10 = call i32 @get_bits(%struct.wbcir_data* %9, i32 1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %17 = call i32 @wbcir_get_rc5bits(%struct.wbcir_data* %16, i32 1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 64, i32* %7, align 4
  br label %21

20:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %23 = call i32 @wbcir_get_rc5bits(%struct.wbcir_data* %22, i32 1)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %25 = call i32 @wbcir_get_rc5bits(%struct.wbcir_data* %24, i32 5)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %27 = call i32 @wbcir_get_rc5bits(%struct.wbcir_data* %26, i32 6)
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 7
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %35 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %52

41:                                               ; preds = %21
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @wbcir_keydown(%struct.wbcir_data* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %38, %12
  ret void
}

declare dso_local i32 @get_bits(%struct.wbcir_data*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @wbcir_get_rc5bits(%struct.wbcir_data*, i32) #1

declare dso_local i32 @wbcir_keydown(%struct.wbcir_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
