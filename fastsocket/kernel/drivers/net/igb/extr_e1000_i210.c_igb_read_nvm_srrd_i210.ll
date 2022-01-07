; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c_igb_read_nvm_srrd_i210.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c_igb_read_nvm_srrd_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_EERD_EEWR_MAX_COUNT = common dso_local global i64 0, align 8
@E1000_ERR_SWFW_SYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_read_nvm_srrd_i210(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %12, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %66, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load i64, i64* @E1000_EERD_EEWR_MAX_COUNT, align 8
  %22 = sdiv i64 %20, %21
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @E1000_EERD_EEWR_MAX_COUNT, align 8
  br label %30

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %10, align 8
  %29 = sub nsw i64 %27, %28
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i64 [ %25, %24 ], [ %29, %26 ]
  store i64 %31, i64* %11, align 8
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %35, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %38 = bitcast %struct.e1000_hw* %37 to %struct.e1000_hw.0*
  %39 = call i64 %36(%struct.e1000_hw.0* %38)
  %40 = load i64, i64* @E1000_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %30
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = call i64 @igb_read_nvm_eerd(%struct.e1000_hw* %43, i64 %44, i64 %45, i64* %48)
  store i64 %49, i64* %9, align 8
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %53, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %56 = bitcast %struct.e1000_hw* %55 to %struct.e1000_hw.1*
  %57 = call i32 %54(%struct.e1000_hw.1* %56)
  br label %60

58:                                               ; preds = %30
  %59 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %58, %42
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @E1000_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %70

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* @E1000_EERD_EEWR_MAX_COUNT, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %10, align 8
  br label %13

70:                                               ; preds = %64, %13
  %71 = load i64, i64* %9, align 8
  ret i64 %71
}

declare dso_local i64 @igb_read_nvm_eerd(%struct.e1000_hw*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
