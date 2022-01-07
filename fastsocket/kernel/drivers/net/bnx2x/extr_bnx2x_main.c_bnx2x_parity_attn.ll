; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_parity_attn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_parity_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@HW_PRTY_ASSERT_SET_0 = common dso_local global i32 0, align 4
@HW_PRTY_ASSERT_SET_1 = common dso_local global i32 0, align 4
@HW_PRTY_ASSERT_SET_2 = common dso_local global i32 0, align 4
@HW_PRTY_ASSERT_SET_3 = common dso_local global i32 0, align 4
@HW_PRTY_ASSERT_SET_4 = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"Was parity error: HW block parity attention:\0A[0]:0x%08x [1]:0x%08x [2]:0x%08x [3]:0x%08x [4]:0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Parity errors detected in blocks: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32*, i32, i32*)* @bnx2x_parity_attn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_parity_attn(%struct.bnx2x* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HW_PRTY_ASSERT_SET_0, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HW_PRTY_ASSERT_SET_1, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %17
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HW_PRTY_ASSERT_SET_2, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HW_PRTY_ASSERT_SET_3, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HW_PRTY_ASSERT_SET_4, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %132

45:                                               ; preds = %38, %31, %24, %17, %4
  store i32 0, i32* %10, align 4
  %46 = load i32, i32* @NETIF_MSG_HW, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HW_PRTY_ASSERT_SET_0, align 4
  %51 = and i32 %49, %50
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HW_PRTY_ASSERT_SET_1, align 4
  %56 = and i32 %54, %55
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HW_PRTY_ASSERT_SET_2, align 4
  %61 = and i32 %59, %60
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HW_PRTY_ASSERT_SET_3, align 4
  %66 = and i32 %64, %65
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HW_PRTY_ASSERT_SET_4, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @DP(i32 %46, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %56, i32 %61, i32 %66, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %45
  %76 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %77 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netdev_err(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %45
  %81 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @HW_PRTY_ASSERT_SET_0, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @bnx2x_check_blocks_with_parity0(%struct.bnx2x* %81, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @HW_PRTY_ASSERT_SET_1, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @bnx2x_check_blocks_with_parity1(%struct.bnx2x* %90, i32 %95, i32 %96, i32* %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @HW_PRTY_ASSERT_SET_2, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @bnx2x_check_blocks_with_parity2(%struct.bnx2x* %100, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HW_PRTY_ASSERT_SET_3, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* %10, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @bnx2x_check_blocks_with_parity3(i32 %113, i32 %114, i32* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @HW_PRTY_ASSERT_SET_4, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @bnx2x_check_blocks_with_parity4(%struct.bnx2x* %118, i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %80
  %130 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %80
  store i32 1, i32* %5, align 4
  br label %133

132:                                              ; preds = %38
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %131
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @bnx2x_check_blocks_with_parity0(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_check_blocks_with_parity1(%struct.bnx2x*, i32, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_check_blocks_with_parity2(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_check_blocks_with_parity3(i32, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_check_blocks_with_parity4(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
