; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_FRMR_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_FRMR_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32, i32 }
%struct.sk_buff = type { i32*, i32 }

@FLG_ORIG = common dso_local global i32 0, align 4
@FLG_MOD128 = common dso_local global i32 0, align 4
@debug = common dso_local global i32* null, align 8
@DEBUG_L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FRMR information %2x %2x %2x %2x %2x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"FRMR information %2x %2x %2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.layer2*, %struct.sk_buff*)* @FRMR_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FRMR_error(%struct.layer2* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.layer2*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.layer2* %0, %struct.layer2** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.layer2*, %struct.layer2** %4, align 8
  %10 = call i32 @l2addrsize(%struct.layer2* %9)
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 2
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @FLG_ORIG, align 4
  %24 = load %struct.layer2*, %struct.layer2** %4, align 8
  %25 = getelementptr inbounds %struct.layer2, %struct.layer2* %24, i32 0, i32 1
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 76, i32* %3, align 4
  br label %108

37:                                               ; preds = %33
  %38 = load i32, i32* @FLG_MOD128, align 4
  %39 = load %struct.layer2*, %struct.layer2** %4, align 8
  %40 = getelementptr inbounds %struct.layer2, %struct.layer2* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 5
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 78, i32* %3, align 4
  br label %108

51:                                               ; preds = %43
  %52 = load i32*, i32** @debug, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DEBUG_L2, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %51
  %58 = load %struct.layer2*, %struct.layer2** %4, align 8
  %59 = getelementptr inbounds %struct.layer2, %struct.layer2* %58, i32 0, i32 0
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32*, i8*, i32, i32, i32, ...) @l2m_debug(i32* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %57, %51
  br label %77

77:                                               ; preds = %76
  br label %107

78:                                               ; preds = %37
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 3
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 78, i32* %3, align 4
  br label %108

86:                                               ; preds = %78
  %87 = load i32*, i32** @debug, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DEBUG_L2, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load %struct.layer2*, %struct.layer2** %4, align 8
  %94 = getelementptr inbounds %struct.layer2, %struct.layer2* %93, i32 0, i32 0
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32*, i8*, i32, i32, i32, ...) @l2m_debug(i32* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %92, %86
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %77
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %85, %50, %36
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @l2addrsize(%struct.layer2*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @l2m_debug(i32*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
