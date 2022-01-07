; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_fadump.c_fadump_set_regval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_fadump.c_fadump_set_regval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"NIA\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"MSR\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CTR\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"LR\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"XER\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"DAR\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"DSISR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i64)* @fadump_set_regval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fadump_set_regval(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @fadump_gpr_index(i64 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 %13, i64* %19, align 8
  br label %92

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @REG_ID(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %91

28:                                               ; preds = %20
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @REG_ID(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  br label %90

36:                                               ; preds = %28
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @REG_ID(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  br label %89

44:                                               ; preds = %36
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @REG_ID(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  br label %88

52:                                               ; preds = %44
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @REG_ID(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 5
  store i64 %57, i64* %59, align 8
  br label %87

60:                                               ; preds = %52
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @REG_ID(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %67 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %66, i32 0, i32 6
  store i64 %65, i64* %67, align 8
  br label %86

68:                                               ; preds = %60
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @REG_ID(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 7
  store i64 %73, i64* %75, align 8
  br label %85

76:                                               ; preds = %68
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @REG_ID(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 8
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %86, %56
  br label %88

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %40
  br label %90

90:                                               ; preds = %89, %32
  br label %91

91:                                               ; preds = %90, %24
  br label %92

92:                                               ; preds = %91, %12
  ret void
}

declare dso_local i32 @fadump_gpr_index(i64) #1

declare dso_local i64 @REG_ID(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
