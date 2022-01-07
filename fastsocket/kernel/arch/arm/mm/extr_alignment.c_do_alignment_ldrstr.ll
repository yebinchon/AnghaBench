; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_alignment.c_do_alignment_ldrstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_alignment.c_do_alignment_ldrstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32* }

@ai_word = common dso_local global i32 0, align 4
@TYPE_LDST = common dso_local global i32 0, align 4
@TYPE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.pt_regs*)* @do_alignment_ldrstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_alignment_ldrstr(i64 %0, i64 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @RD_BITS(i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @ai_word, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @ai_word, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @LDST_P_BIT(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @LDST_W_BIT(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %24 = call i64 @user_mode(%struct.pt_regs* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  br label %54

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @LDST_L_BIT(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @get32_unaligned_check(i32 %32, i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  br label %52

42:                                               ; preds = %27
  %43 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @put32_unaligned_check(i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %42, %31
  %53 = load i32, i32* @TYPE_LDST, align 4
  store i32 %53, i32* %4, align 4
  br label %83

54:                                               ; preds = %26
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @LDST_L_BIT(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @get32t_unaligned_check(i32 %59, i64 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %79

69:                                               ; preds = %54
  %70 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @put32t_unaligned_check(i32 %76, i64 %77)
  br label %79

79:                                               ; preds = %69, %58
  %80 = load i32, i32* @TYPE_LDST, align 4
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; No predecessors!
  %82 = load i32, i32* @TYPE_FAULT, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %79, %52
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @RD_BITS(i64) #1

declare dso_local i32 @LDST_P_BIT(i64) #1

declare dso_local i64 @LDST_W_BIT(i64) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @LDST_L_BIT(i64) #1

declare dso_local i32 @get32_unaligned_check(i32, i64) #1

declare dso_local i32 @put32_unaligned_check(i32, i64) #1

declare dso_local i32 @get32t_unaligned_check(i32, i64) #1

declare dso_local i32 @put32t_unaligned_check(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
