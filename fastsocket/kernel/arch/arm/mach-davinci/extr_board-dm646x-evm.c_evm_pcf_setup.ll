; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm646x-evm.c_evm_pcf_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm646x-evm.c_evm_pcf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i8*)* @evm_pcf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evm_pcf_setup(%struct.i2c_client* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %31

16:                                               ; preds = %4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @evm_sw_setup(%struct.i2c_client* %17, i32 %18, i32 4, i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %31

25:                                               ; preds = %16
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @evm_led_setup(%struct.i2c_client* %26, i32 %28, i32 4, i8* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %23, %13
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @evm_sw_setup(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @evm_led_setup(%struct.i2c_client*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
