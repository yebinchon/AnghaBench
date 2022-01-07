; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_misalignment.c_misalignment_MOV_Lcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_misalignment.c_misalignment_MOV_Lcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"MOV_Lcc %x [flags=%lx]\00", align 1
@EPSW_FLAG_Z = common dso_local global i64 0, align 8
@EPSW_FLAG_C = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"loop LAR=%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @misalignment_MOV_Lcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @misalignment_MOV_Lcc(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 15
  %13 = call i32 (i8*, i32, ...) @kdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = lshr i64 %14, 3
  %16 = load i64, i64* %5, align 8
  %17 = lshr i64 %16, 1
  %18 = xor i64 %15, %17
  %19 = and i64 %18, 1
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 15
  switch i32 %21, label %97 [
    i32 0, label %22
    i32 1, label %27
    i32 2, label %36
    i32 3, label %41
    i32 4, label %50
    i32 5, label %57
    i32 6, label %66
    i32 7, label %73
    i32 8, label %82
    i32 9, label %89
    i32 10, label %96
  ]

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %100

26:                                               ; preds = %22
  br label %112

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @EPSW_FLAG_Z, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* %6, align 8
  %32 = or i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %100

35:                                               ; preds = %27
  br label %112

36:                                               ; preds = %2
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %100

40:                                               ; preds = %36
  br label %112

41:                                               ; preds = %2
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @EPSW_FLAG_Z, align 8
  %44 = and i64 %42, %43
  %45 = load i64, i64* %6, align 8
  %46 = or i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %100

49:                                               ; preds = %41
  br label %112

50:                                               ; preds = %2
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @EPSW_FLAG_C, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %100

56:                                               ; preds = %50
  br label %112

57:                                               ; preds = %2
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @EPSW_FLAG_C, align 8
  %60 = load i64, i64* @EPSW_FLAG_Z, align 8
  %61 = or i64 %59, %60
  %62 = and i64 %58, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %100

65:                                               ; preds = %57
  br label %112

66:                                               ; preds = %2
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @EPSW_FLAG_C, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %100

72:                                               ; preds = %66
  br label %112

73:                                               ; preds = %2
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @EPSW_FLAG_C, align 8
  %76 = load i64, i64* @EPSW_FLAG_Z, align 8
  %77 = or i64 %75, %76
  %78 = and i64 %74, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %100

81:                                               ; preds = %73
  br label %112

82:                                               ; preds = %2
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @EPSW_FLAG_Z, align 8
  %85 = and i64 %83, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %100

88:                                               ; preds = %82
  br label %112

89:                                               ; preds = %2
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @EPSW_FLAG_Z, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %100

95:                                               ; preds = %89
  br label %112

96:                                               ; preds = %2
  br label %100

97:                                               ; preds = %2
  %98 = call i32 (...) @BUG()
  br label %99

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %96, %94, %87, %80, %71, %64, %55, %48, %39, %34, %25
  %101 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %102 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 (i8*, i32, ...) @kdebug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %107 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %108, 4
  %110 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %100, %95, %88, %81, %72, %65, %56, %49, %40, %35, %26
  ret void
}

declare dso_local i32 @kdebug(i8*, i32, ...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
