; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_pcc_setkeycode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_pcc_setkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.pcc_acpi = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32)* @pcc_setkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcc_setkeycode(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcc_acpi*, align 8
  %9 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = call %struct.pcc_acpi* @input_get_drvdata(%struct.input_dev* %10)
  store %struct.pcc_acpi* %11, %struct.pcc_acpi** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.pcc_acpi*, %struct.pcc_acpi** %8, align 8
  %14 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp sge i32 %12, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %62

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @KEY_MAX, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %62

31:                                               ; preds = %24
  %32 = load %struct.pcc_acpi*, %struct.pcc_acpi** %8, align 8
  %33 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.pcc_acpi*, %struct.pcc_acpi** %8, align 8
  %41 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_bit(i32 %46, i32 %49)
  %51 = load %struct.pcc_acpi*, %struct.pcc_acpi** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @keymap_get_by_keycode(%struct.pcc_acpi* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %31
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clear_bit(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %31
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %28, %18
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.pcc_acpi* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @keymap_get_by_keycode(%struct.pcc_acpi*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
