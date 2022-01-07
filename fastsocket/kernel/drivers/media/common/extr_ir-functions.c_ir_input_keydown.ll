; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_ir-functions.c_ir_input_keydown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_ir-functions.c_ir_input_keydown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ir_input_state = type { i32, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ir_input_keydown(%struct.input_dev* %0, %struct.ir_input_state* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.ir_input_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.ir_input_state* %1, %struct.ir_input_state** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %11 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @IR_KEYCODE(i32 %12, i64 %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %16 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %21 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %27 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %29 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %30 = call i32 @ir_input_key_event(%struct.input_dev* %28, %struct.ir_input_state* %29)
  br label %31

31:                                               ; preds = %25, %19, %4
  %32 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %33 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %39 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %42 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %45 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %47 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %50 = call i32 @ir_input_key_event(%struct.input_dev* %48, %struct.ir_input_state* %49)
  br label %51

51:                                               ; preds = %36, %31
  ret void
}

declare dso_local i64 @IR_KEYCODE(i32, i64) #1

declare dso_local i32 @ir_input_key_event(%struct.input_dev*, %struct.ir_input_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
