; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"BRB\00", align 1
@BRB1_REG_BRB1_PRTY_STS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"PARSER\00", align 1
@PRS_REG_PRS_PRTY_STS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"TSDM\00", align 1
@TSDM_REG_TSDM_PRTY_STS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"SEARCHER\00", align 1
@SRC_REG_SRC_PRTY_STS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"TCM\00", align 1
@TCM_REG_TCM_PRTY_STS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"TSEMI\00", align 1
@TSEM_REG_TSEM_PRTY_STS_0 = common dso_local global i64 0, align 8
@TSEM_REG_TSEM_PRTY_STS_1 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"XPB\00", align 1
@GRCBASE_XPB = common dso_local global i64 0, align 8
@PB_REG_PB_PRTY_STS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32, i32)* @bnx2x_check_blocks_with_parity0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_check_blocks_with_parity0(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %111, %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %114

14:                                               ; preds = %11
  %15 = load i32, i32* %9, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %110

21:                                               ; preds = %14
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %105 [
    i32 134, label %23
    i32 133, label %34
    i32 129, label %45
    i32 131, label %56
    i32 130, label %67
    i32 128, label %78
    i32 132, label %92
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = call i32 @_print_next_block(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %31 = load i64, i64* @BRB1_REG_BRB1_PRTY_STS, align 8
  %32 = call i32 @_print_parity(%struct.bnx2x* %30, i64 %31)
  br label %33

33:                                               ; preds = %26, %23
  br label %105

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = call i32 @_print_next_block(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %42 = load i64, i64* @PRS_REG_PRS_PRTY_STS, align 8
  %43 = call i32 @_print_parity(%struct.bnx2x* %41, i64 %42)
  br label %44

44:                                               ; preds = %37, %34
  br label %105

45:                                               ; preds = %21
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = call i32 @_print_next_block(i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %53 = load i64, i64* @TSDM_REG_TSDM_PRTY_STS, align 8
  %54 = call i32 @_print_parity(%struct.bnx2x* %52, i64 %53)
  br label %55

55:                                               ; preds = %48, %45
  br label %105

56:                                               ; preds = %21
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = call i32 @_print_next_block(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %64 = load i64, i64* @SRC_REG_SRC_PRTY_STS, align 8
  %65 = call i32 @_print_parity(%struct.bnx2x* %63, i64 %64)
  br label %66

66:                                               ; preds = %59, %56
  br label %105

67:                                               ; preds = %21
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = call i32 @_print_next_block(i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %75 = load i64, i64* @TCM_REG_TCM_PRTY_STS, align 8
  %76 = call i32 @_print_parity(%struct.bnx2x* %74, i64 %75)
  br label %77

77:                                               ; preds = %70, %67
  br label %105

78:                                               ; preds = %21
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = call i32 @_print_next_block(i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %85 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %86 = load i64, i64* @TSEM_REG_TSEM_PRTY_STS_0, align 8
  %87 = call i32 @_print_parity(%struct.bnx2x* %85, i64 %86)
  %88 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %89 = load i64, i64* @TSEM_REG_TSEM_PRTY_STS_1, align 8
  %90 = call i32 @_print_parity(%struct.bnx2x* %88, i64 %89)
  br label %91

91:                                               ; preds = %81, %78
  br label %105

92:                                               ; preds = %21
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = call i32 @_print_next_block(i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %99 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %100 = load i64, i64* @GRCBASE_XPB, align 8
  %101 = load i64, i64* @PB_REG_PB_PRTY_STS, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @_print_parity(%struct.bnx2x* %99, i64 %102)
  br label %104

104:                                              ; preds = %95, %92
  br label %105

105:                                              ; preds = %21, %104, %91, %77, %66, %55, %44, %33
  %106 = load i32, i32* %10, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %105, %14
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %11

114:                                              ; preds = %11
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @_print_next_block(i32, i8*) #1

declare dso_local i32 @_print_parity(%struct.bnx2x*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
