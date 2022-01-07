; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_topstar-laptop.c_topstar_setkeycode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_topstar-laptop.c_topstar_setkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.tps_key_entry = type { i32 }

@KEY_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32)* @topstar_setkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @topstar_setkeycode(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tps_key_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @KEY_MAX, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.tps_key_entry* @tps_get_key_by_scancode(i32 %20)
  store %struct.tps_key_entry* %21, %struct.tps_key_entry** %8, align 8
  %22 = load %struct.tps_key_entry*, %struct.tps_key_entry** %8, align 8
  %23 = icmp ne %struct.tps_key_entry* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %19
  %28 = load %struct.tps_key_entry*, %struct.tps_key_entry** %8, align 8
  %29 = getelementptr inbounds %struct.tps_key_entry, %struct.tps_key_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.tps_key_entry*, %struct.tps_key_entry** %8, align 8
  %33 = getelementptr inbounds %struct.tps_key_entry, %struct.tps_key_entry* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_bit(i32 %34, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @tps_get_key_by_keycode(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clear_bit(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %27
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %24, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.tps_key_entry* @tps_get_key_by_scancode(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @tps_get_key_by_keycode(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
