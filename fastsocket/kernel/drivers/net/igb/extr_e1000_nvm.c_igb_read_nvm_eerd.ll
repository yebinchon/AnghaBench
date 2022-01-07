; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_read_nvm_eerd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_read_nvm_eerd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@E1000_NVM_RW_ADDR_SHIFT = common dso_local global i64 0, align 8
@E1000_NVM_RW_REG_START = common dso_local global i64 0, align 8
@E1000_EERD = common dso_local global i32 0, align 4
@E1000_NVM_POLL_READ = common dso_local global i32 0, align 4
@E1000_NVM_RW_REG_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_read_nvm_eerd(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.e1000_nvm_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  store %struct.e1000_nvm_info* %14, %struct.e1000_nvm_info** %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %17 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %23 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub nsw i64 %24, %25
  %27 = icmp sgt i64 %21, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %20, %4
  %32 = call i32 @hw_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @E1000_ERR_NVM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %69

35:                                               ; preds = %28
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* @E1000_NVM_RW_ADDR_SHIFT, align 8
  %45 = shl i64 %43, %44
  %46 = load i64, i64* @E1000_NVM_RW_REG_START, align 8
  %47 = add nsw i64 %45, %46
  store i64 %47, i64* %11, align 8
  %48 = load i32, i32* @E1000_EERD, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @wr32(i32 %48, i64 %49)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %52 = load i32, i32* @E1000_NVM_POLL_READ, align 4
  %53 = call i32 @igb_poll_eerd_eewr_done(%struct.e1000_hw* %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  br label %68

57:                                               ; preds = %40
  %58 = load i32, i32* @E1000_EERD, align 4
  %59 = call i64 @rd32(i32 %58)
  %60 = load i64, i64* @E1000_NVM_RW_REG_DATA, align 8
  %61 = ashr i64 %59, %60
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %57
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %36

68:                                               ; preds = %56, %36
  br label %69

69:                                               ; preds = %68, %31
  %70 = load i32, i32* %12, align 4
  ret i32 %70
}

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wr32(i32, i64) #1

declare dso_local i32 @igb_poll_eerd_eewr_done(%struct.e1000_hw*, i32) #1

declare dso_local i64 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
