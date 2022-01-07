; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_fix_nvm_checksum_82571.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_fix_nvm_checksum_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64 }

@e1000_nvm_flash_hw = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_fix_nvm_checksum_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_fix_nvm_checksum_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_nvm_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_nvm_info* %8, %struct.e1000_nvm_info** %4, align 8
  %9 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_nvm_flash_hw, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = call i64 @e1000_read_nvm(%struct.e1000_hw* %16, i32 16, i32 1, i32* %6)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %2, align 8
  br label %56

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 16
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %55, label %26

26:                                               ; preds = %22
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = call i64 @e1000_read_nvm(%struct.e1000_hw* %27, i32 35, i32 1, i32* %6)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %2, align 8
  br label %56

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 32768
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, 32768
  store i32 %39, i32* %6, align 4
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = call i64 @e1000_write_nvm(%struct.e1000_hw* %40, i32 35, i32 1, i32* %6)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %2, align 8
  br label %56

46:                                               ; preds = %37
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = call i64 @e1000e_update_nvm_checksum(%struct.e1000_hw* %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %2, align 8
  br label %56

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %22
  store i64 0, i64* %2, align 8
  br label %56

56:                                               ; preds = %55, %51, %44, %31, %20, %14
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_write_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000e_update_nvm_checksum(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
