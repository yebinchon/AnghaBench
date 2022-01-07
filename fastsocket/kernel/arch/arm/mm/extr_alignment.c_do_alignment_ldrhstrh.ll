; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_alignment.c_do_alignment_ldrhstrh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_alignment.c_do_alignment_ldrhstrh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@ai_half = common dso_local global i32 0, align 4
@TYPE_LDST = common dso_local global i32 0, align 4
@TYPE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.pt_regs*)* @do_alignment_ldrhstrh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_alignment_ldrhstrh(i64 %0, i64 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @RD_BITS(i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @ai_half, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @ai_half, align 4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %16 = call i64 @user_mode(%struct.pt_regs* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %54

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @LDST_L_BIT(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @get16_unaligned_check(i64 %24, i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = and i64 %27, 64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i16
  %33 = sext i16 %32 to i64
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 %35, i64* %41, align 8
  br label %52

42:                                               ; preds = %19
  %43 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @put16_unaligned_check(i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %42, %34
  %53 = load i32, i32* @TYPE_LDST, align 4
  store i32 %53, i32* %4, align 4
  br label %91

54:                                               ; preds = %18
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @LDST_L_BIT(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @get16t_unaligned_check(i64 %59, i64 %60)
  %62 = load i64, i64* %6, align 8
  %63 = and i64 %62, 64
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i64, i64* %10, align 8
  %67 = trunc i64 %66 to i16
  %68 = sext i16 %67 to i64
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %65, %58
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %70, i64* %76, align 8
  br label %87

77:                                               ; preds = %54
  %78 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %79 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @put16t_unaligned_check(i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %77, %69
  %88 = load i32, i32* @TYPE_LDST, align 4
  store i32 %88, i32* %4, align 4
  br label %91

89:                                               ; No predecessors!
  %90 = load i32, i32* @TYPE_FAULT, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %87, %52
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @RD_BITS(i64) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @LDST_L_BIT(i64) #1

declare dso_local i32 @get16_unaligned_check(i64, i64) #1

declare dso_local i32 @put16_unaligned_check(i64, i64) #1

declare dso_local i32 @get16t_unaligned_check(i64, i64) #1

declare dso_local i32 @put16t_unaligned_check(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
