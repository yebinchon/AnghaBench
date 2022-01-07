; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c_igb_write_nvm_srwr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c_igb_write_nvm_srwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@E1000_NVM_RW_ADDR_SHIFT = common dso_local global i64 0, align 8
@E1000_NVM_RW_REG_DATA = common dso_local global i64 0, align 8
@E1000_NVM_RW_REG_START = common dso_local global i64 0, align 8
@E1000_SRWR = common dso_local global i32 0, align 4
@E1000_NVM_RW_REG_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Shadow RAM write EEWR timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64, i64, i64*)* @igb_write_nvm_srwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_write_nvm_srwr(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.e1000_nvm_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  store %struct.e1000_nvm_info* %16, %struct.e1000_nvm_info** %9, align 8
  store i64 0, i64* %12, align 8
  store i64 100000, i64* %13, align 8
  %17 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %20 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %26 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %27, %28
  %30 = icmp sgt i64 %24, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %23, %4
  %35 = call i32 @hw_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @E1000_ERR_NVM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %14, align 4
  br label %89

38:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  br label %39

39:                                               ; preds = %85, %38
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* @E1000_NVM_RW_ADDR_SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @E1000_NVM_RW_REG_DATA, align 8
  %54 = shl i64 %52, %53
  %55 = or i64 %48, %54
  %56 = load i64, i64* @E1000_NVM_RW_REG_START, align 8
  %57 = or i64 %55, %56
  store i64 %57, i64* %12, align 8
  %58 = load i32, i32* @E1000_SRWR, align 4
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @wr32(i32 %58, i64 %59)
  store i64 0, i64* %11, align 8
  br label %61

61:                                               ; preds = %75, %43
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load i32, i32* @E1000_NVM_RW_REG_DONE, align 4
  %67 = load i32, i32* @E1000_SRWR, align 4
  %68 = call i32 @rd32(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %72, i32* %14, align 4
  br label %78

73:                                               ; preds = %65
  %74 = call i32 @udelay(i32 5)
  br label %75

75:                                               ; preds = %73
  %76 = load i64, i64* %11, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %11, align 8
  br label %61

78:                                               ; preds = %71, %61
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @E1000_SUCCESS, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @hw_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %88

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %10, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %10, align 8
  br label %39

88:                                               ; preds = %82, %39
  br label %89

89:                                               ; preds = %88, %34
  %90 = load i32, i32* %14, align 4
  ret i32 %90
}

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wr32(i32, i64) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
