; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_validate_nvm_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_validate_nvm_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*, i64, i32, i64*)* }
%struct.e1000_hw.0 = type opaque

@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@NVM_SUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"NVM Checksum Invalid\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_validate_nvm_checksum(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %10 = add nsw i64 %9, 1
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %7
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.e1000_hw.0*, i64, i32, i64*)*, i32 (%struct.e1000_hw.0*, i64, i32, i64*)** %16, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = bitcast %struct.e1000_hw* %18 to %struct.e1000_hw.0*
  %20 = load i64, i64* %5, align 8
  %21 = call i32 %17(%struct.e1000_hw.0* %19, i64 %20, i32 1, i64* %6)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = call i32 @hw_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %42

26:                                               ; preds = %12
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %4, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %7

33:                                               ; preds = %7
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @NVM_SUM, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i32 @hw_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @E1000_ERR_NVM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %37, %24
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
