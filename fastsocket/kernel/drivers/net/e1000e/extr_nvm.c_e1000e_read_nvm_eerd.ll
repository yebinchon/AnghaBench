; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_nvm.c_e1000e_read_nvm_eerd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_nvm.c_e1000e_read_nvm_eerd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@E1000_NVM_RW_ADDR_SHIFT = common dso_local global i64 0, align 8
@E1000_NVM_RW_REG_START = common dso_local global i64 0, align 8
@EERD = common dso_local global i32 0, align 4
@E1000_NVM_POLL_READ = common dso_local global i32 0, align 4
@E1000_NVM_RW_REG_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_read_nvm_eerd(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_nvm_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  store %struct.e1000_nvm_info* %15, %struct.e1000_nvm_info** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %18 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %24 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 %25, %26
  %28 = icmp sgt i64 %22, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29, %21, %4
  %33 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @E1000_ERR_NVM, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %71

36:                                               ; preds = %29
  store i64 0, i64* %11, align 8
  br label %37

37:                                               ; preds = %66, %36
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* @E1000_NVM_RW_ADDR_SHIFT, align 8
  %46 = shl i64 %44, %45
  %47 = load i64, i64* @E1000_NVM_RW_REG_START, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %12, align 8
  %49 = load i32, i32* @EERD, align 4
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @ew32(i32 %49, i64 %50)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %53 = load i32, i32* @E1000_NVM_POLL_READ, align 4
  %54 = call i64 @e1000e_poll_eerd_eewr_done(%struct.e1000_hw* %52, i32 %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %69

58:                                               ; preds = %41
  %59 = load i32, i32* @EERD, align 4
  %60 = call i64 @er32(i32 %59)
  %61 = load i64, i64* @E1000_NVM_RW_REG_DATA, align 8
  %62 = ashr i64 %60, %61
  %63 = load i64*, i64** %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %62, i64* %65, align 8
  br label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %11, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %11, align 8
  br label %37

69:                                               ; preds = %57, %37
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %69, %32
  %72 = load i64, i64* %5, align 8
  ret i64 %72
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i64) #1

declare dso_local i64 @e1000e_poll_eerd_eewr_done(%struct.e1000_hw*, i32) #1

declare dso_local i64 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
