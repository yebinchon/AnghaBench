; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-apple.c_apple_setup_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-apple.c_apple_setup_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apple_key_translation = type { i32, i64 }
%struct.input_dev = type { i32 }

@KEY_NUMLOCK = common dso_local global i32 0, align 4
@apple_fn_keys = common dso_local global %struct.apple_key_translation* null, align 8
@powerbook_fn_keys = common dso_local global %struct.apple_key_translation* null, align 8
@powerbook_numlock_keys = common dso_local global %struct.apple_key_translation* null, align 8
@apple_iso_keyboard = common dso_local global %struct.apple_key_translation* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @apple_setup_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apple_setup_input(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.apple_key_translation*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load i32, i32* @KEY_NUMLOCK, align 4
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @set_bit(i32 %4, i32 %7)
  %9 = load %struct.apple_key_translation*, %struct.apple_key_translation** @apple_fn_keys, align 8
  store %struct.apple_key_translation* %9, %struct.apple_key_translation** %3, align 8
  br label %10

10:                                               ; preds = %23, %1
  %11 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %12 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %17 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @set_bit(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %15
  %24 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %25 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %24, i32 1
  store %struct.apple_key_translation* %25, %struct.apple_key_translation** %3, align 8
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.apple_key_translation*, %struct.apple_key_translation** @powerbook_fn_keys, align 8
  store %struct.apple_key_translation* %27, %struct.apple_key_translation** %3, align 8
  br label %28

28:                                               ; preds = %41, %26
  %29 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %30 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %35 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @set_bit(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33
  %42 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %43 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %42, i32 1
  store %struct.apple_key_translation* %43, %struct.apple_key_translation** %3, align 8
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.apple_key_translation*, %struct.apple_key_translation** @powerbook_numlock_keys, align 8
  store %struct.apple_key_translation* %45, %struct.apple_key_translation** %3, align 8
  br label %46

46:                                               ; preds = %59, %44
  %47 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %48 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %53 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_bit(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %51
  %60 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %61 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %60, i32 1
  store %struct.apple_key_translation* %61, %struct.apple_key_translation** %3, align 8
  br label %46

62:                                               ; preds = %46
  %63 = load %struct.apple_key_translation*, %struct.apple_key_translation** @apple_iso_keyboard, align 8
  store %struct.apple_key_translation* %63, %struct.apple_key_translation** %3, align 8
  br label %64

64:                                               ; preds = %77, %62
  %65 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %66 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %71 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @set_bit(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %69
  %78 = load %struct.apple_key_translation*, %struct.apple_key_translation** %3, align 8
  %79 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %78, i32 1
  store %struct.apple_key_translation* %79, %struct.apple_key_translation** %3, align 8
  br label %64

80:                                               ; preds = %64
  ret void
}

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
