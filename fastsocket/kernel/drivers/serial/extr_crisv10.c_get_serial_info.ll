; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e100_serial = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e100_serial*, %struct.serial_struct*)* @get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_serial_info(%struct.e100_serial* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e100_serial*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.serial_struct, align 4
  store %struct.e100_serial* %0, %struct.e100_serial** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %7 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %8 = icmp ne %struct.serial_struct* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EFAULT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %58

12:                                               ; preds = %2
  %13 = call i32 @memset(%struct.serial_struct* %6, i32 0, i32 36)
  %14 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %15 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %19 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 7
  store i32 %20, i32* %21, align 4
  %22 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %23 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %28 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  %31 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %32 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %36 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %40 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %44 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %48 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %52 = call i64 @copy_to_user(%struct.serial_struct* %51, %struct.serial_struct* %6, i32 36)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %12
  %55 = load i32, i32* @EFAULT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %54, %9
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.serial_struct*, i32, i32) #1

declare dso_local i64 @copy_to_user(%struct.serial_struct*, %struct.serial_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
