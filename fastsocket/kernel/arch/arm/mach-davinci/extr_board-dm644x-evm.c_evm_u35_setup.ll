; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm644x-evm.c_evm_u35_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm644x-evm.c_evm_u35_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"nDRV_VBUS\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"VDDIMX_EN\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"VLYNQ_EN\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"nCF_RESET\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"WLAN_RESET\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"nATA_SEL\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"nCF_SEL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i8*)* @evm_u35_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evm_u35_setup(%struct.i2c_client* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 0
  %11 = call i32 @gpio_request(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 0
  %14 = call i32 @gpio_direction_output(i32 %13, i32 1)
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @gpio_request(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @gpio_direction_output(i32 %19, i32 1)
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i32 @gpio_request(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 2
  %26 = call i32 @gpio_direction_output(i32 %25, i32 1)
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 3
  %29 = call i32 @gpio_request(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 3
  %32 = call i32 @gpio_direction_output(i32 %31, i32 0)
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 5
  %35 = call i32 @gpio_request(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 5
  %38 = call i32 @gpio_direction_output(i32 %37, i32 1)
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 6
  %41 = call i32 @gpio_request(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 6
  %44 = call i32 @gpio_direction_output(i32 %43, i32 0)
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 7
  %47 = call i32 @gpio_request(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 7
  %50 = call i32 @gpio_direction_output(i32 %49, i32 1)
  %51 = call i32 @setup_usb(i32 500, i32 8)
  ret i32 0
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @setup_usb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
