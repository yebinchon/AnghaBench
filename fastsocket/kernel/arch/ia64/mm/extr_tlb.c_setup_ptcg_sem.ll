; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_tlb.c_setup_ptcg_sem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_tlb.c_setup_ptcg_sem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@setup_ptcg_sem.kp_override = internal global i32 0, align 4
@setup_ptcg_sem.palo_override = internal global i32 0, align 4
@setup_ptcg_sem.firstcpu = internal global i32 1, align 4
@toolatetochangeptcgsem = common dso_local global i64 0, align 8
@NPTCG_FROM_PAL = common dso_local global i32 0, align 4
@nptcg = common dso_local global i32 0, align 4
@NPTCG_FROM_KERNEL_PARAMETER = common dso_local global i32 0, align 4
@need_ptcg_sem = common dso_local global i32 0, align 4
@NPTCG_FROM_PALO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Whoa! Platform does not support global TLB purges.\0A\00", align 1
@PALO_MAX_TLB_PURGES = common dso_local global i32 0, align 4
@PAL_MAX_PURGES = common dso_local global i32 0, align 4
@ptcg_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_ptcg_sem(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @toolatetochangeptcgsem, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NPTCG_FROM_PAL, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @nptcg, align 4
  %16 = icmp slt i32 1, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  br label %25

19:                                               ; preds = %11, %7
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @nptcg, align 4
  %22 = icmp slt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  br label %25

25:                                               ; preds = %19, %14
  br label %98

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NPTCG_FROM_KERNEL_PARAMETER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  store i32 1, i32* @setup_ptcg_sem.kp_override, align 4
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* @nptcg, align 4
  br label %95

32:                                               ; preds = %26
  %33 = load i32, i32* @setup_ptcg_sem.kp_override, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = call i32 (...) @num_possible_cpus()
  %37 = load i32, i32* @nptcg, align 4
  %38 = icmp sgt i32 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* @need_ptcg_sem, align 4
  br label %98

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @NPTCG_FROM_PALO, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  store i32 1, i32* @setup_ptcg_sem.palo_override, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* @nptcg, align 4
  %51 = load i32, i32* @nptcg, align 4
  %52 = load i32, i32* @PALO_MAX_TLB_PURGES, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* @need_ptcg_sem, align 4
  br label %98

55:                                               ; preds = %49
  br label %95

56:                                               ; preds = %40
  %57 = load i32, i32* @setup_ptcg_sem.palo_override, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* @nptcg, align 4
  %61 = load i32, i32* @PALO_MAX_TLB_PURGES, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = call i32 (...) @num_possible_cpus()
  %65 = load i32, i32* @nptcg, align 4
  %66 = icmp sgt i32 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* @need_ptcg_sem, align 4
  br label %68

68:                                               ; preds = %63, %59
  br label %98

69:                                               ; preds = %56
  %70 = load i32, i32* %3, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* @setup_ptcg_sem.firstcpu, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  store i32 %77, i32* @nptcg, align 4
  store i32 0, i32* @setup_ptcg_sem.firstcpu, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @nptcg, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %3, align 4
  store i32 %83, i32* @nptcg, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i32, i32* @nptcg, align 4
  %86 = load i32, i32* @PAL_MAX_PURGES, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 0, i32* @need_ptcg_sem, align 4
  br label %98

89:                                               ; preds = %84
  %90 = call i32 (...) @num_possible_cpus()
  %91 = load i32, i32* @nptcg, align 4
  %92 = icmp sgt i32 %90, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* @need_ptcg_sem, align 4
  br label %94

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %55, %30
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @spinaphore_init(i32* @ptcg_sem, i32 %96)
  br label %98

98:                                               ; preds = %95, %88, %68, %54, %35, %25
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @spinaphore_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
