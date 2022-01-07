; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_validate_nvm_checksum_with_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_validate_nvm_checksum_with_offset.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64)* @igb_validate_nvm_checksum_with_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_validate_nvm_checksum_with_offset(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add nsw i64 %12, %13
  %15 = add nsw i64 %14, 1
  %16 = icmp slt i64 %11, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.e1000_hw.0*, i64, i32, i64*)*, i32 (%struct.e1000_hw.0*, i64, i32, i64*)** %21, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = bitcast %struct.e1000_hw* %23 to %struct.e1000_hw.0*
  %25 = load i64, i64* %7, align 8
  %26 = call i32 %22(%struct.e1000_hw.0* %24, i64 %25, i32 1, i64* %8)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 @hw_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %47

31:                                               ; preds = %17
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %10

38:                                               ; preds = %10
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @NVM_SUM, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = call i32 @hw_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @E1000_ERR_NVM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %42, %29
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
