; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_update_nvm_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_update_nvm_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i64, i32, i64*)*, i64 (%struct.e1000_hw.1*, i64, i32, i64*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"NVM Read Error while updating checksum.\0A\00", align 1
@NVM_SUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"NVM Write Error while updating checksum.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_update_nvm_checksum(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64 (%struct.e1000_hw.1*, i64, i32, i64*)*, i64 (%struct.e1000_hw.1*, i64, i32, i64*)** %15, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = bitcast %struct.e1000_hw* %17 to %struct.e1000_hw.1*
  %19 = load i64, i64* %5, align 8
  %20 = call i64 %16(%struct.e1000_hw.1* %18, i64 %19, i32 1, i64* %6)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = call i32 @hw_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %50

25:                                               ; preds = %11
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %7

32:                                               ; preds = %7
  %33 = load i64, i64* @NVM_SUM, align 8
  %34 = load i64, i64* %4, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %4, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64 (%struct.e1000_hw.0*, i64, i32, i64*)*, i64 (%struct.e1000_hw.0*, i64, i32, i64*)** %39, align 8
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = bitcast %struct.e1000_hw* %41 to %struct.e1000_hw.0*
  %43 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %44 = call i64 %40(%struct.e1000_hw.0* %42, i64 %43, i32 1, i64* %4)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = call i32 @hw_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %32
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
