; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m68k_serial = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m68k_serial*, %struct.serial_struct*)* @get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_serial_info(%struct.m68k_serial* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m68k_serial*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.serial_struct, align 4
  store %struct.m68k_serial* %0, %struct.m68k_serial** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %7 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %8 = icmp ne %struct.serial_struct* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EFAULT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %52

12:                                               ; preds = %2
  %13 = call i32 @memset(%struct.serial_struct* %6, i32 0, i32 36)
  %14 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %15 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %19 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 7
  store i32 %20, i32* %21, align 4
  %22 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %23 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 6
  store i32 %24, i32* %25, align 4
  %26 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %27 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 5
  store i32 %28, i32* %29, align 4
  %30 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %31 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  %34 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %35 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %39 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %43 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %47 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %51 = call i32 @copy_to_user(%struct.serial_struct* %50, %struct.serial_struct* %6, i32 36)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %12, %9
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @memset(%struct.serial_struct*, i32, i32) #1

declare dso_local i32 @copy_to_user(%struct.serial_struct*, %struct.serial_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
