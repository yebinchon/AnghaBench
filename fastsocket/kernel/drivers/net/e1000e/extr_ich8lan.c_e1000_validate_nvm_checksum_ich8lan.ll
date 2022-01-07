; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_validate_nvm_checksum_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_validate_nvm_checksum_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NVM_COMPAT = common dso_local global i32 0, align 4
@NVM_COMPAT_VALID_CSUM = common dso_local global i32 0, align 4
@NVM_FUTURE_INIT_WORD1 = common dso_local global i32 0, align 4
@NVM_FUTURE_INIT_WORD1_VALID_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_validate_nvm_checksum_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_validate_nvm_checksum_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %15 [
    i32 128, label %12
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @NVM_COMPAT, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @NVM_COMPAT_VALID_CSUM, align 4
  store i32 %14, i32* %7, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @NVM_FUTURE_INIT_WORD1, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @NVM_FUTURE_INIT_WORD1_VALID_CSUM, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @e1000_read_nvm(%struct.e1000_hw* %19, i32 %20, i32 1, i32* %5)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %2, align 8
  br label %53

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @e1000_write_nvm(%struct.e1000_hw* %35, i32 %36, i32 1, i32* %5)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %53

42:                                               ; preds = %31
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = call i64 @e1000e_update_nvm_checksum(%struct.e1000_hw* %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %2, align 8
  br label %53

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = call i64 @e1000e_validate_nvm_checksum_generic(%struct.e1000_hw* %51)
  store i64 %52, i64* %2, align 8
  br label %53

53:                                               ; preds = %50, %47, %40, %24
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_write_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000e_update_nvm_checksum(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_validate_nvm_checksum_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
