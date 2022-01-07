; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_generate_and_check_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_generate_and_check_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@TASK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32, i32, i64*)* @generate_and_check_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_and_check_address(%struct.pt_regs* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = ashr i32 %18, 20
  %20 = and i32 %19, 63
  store i32 %20, i32* %14, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 10
  %33 = and i32 %32, 1023
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = shl i32 %34, 54
  %36 = ashr i32 %35, 54
  store i32 %36, i32* %15, align 4
  %37 = load i64, i64* %12, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %39, %40
  %42 = add nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %13, align 8
  br label %58

44:                                               ; preds = %5
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 10
  %47 = and i32 %46, 63
  store i32 %47, i32* %17, align 4
  %48 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %16, align 8
  %57 = add nsw i64 %55, %56
  store i64 %57, i64* %13, align 8
  br label %58

58:                                               ; preds = %44, %30
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @address_is_sign_extended(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i32 -1, i32* %6, align 4
  br label %76

63:                                               ; preds = %58
  %64 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %65 = call i64 @user_mode(%struct.pt_regs* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @TASK_SIZE, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 -1, i32* %6, align 4
  br label %76

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i64, i64* %13, align 8
  %75 = load i64*, i64** %11, align 8
  store i64 %74, i64* %75, align 8
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %71, %62
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @address_is_sign_extended(i64) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
