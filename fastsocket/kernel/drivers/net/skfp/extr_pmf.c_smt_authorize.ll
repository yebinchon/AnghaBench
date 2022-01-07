; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pmf.c_smt_authorize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pmf.c_smt_authorize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.smt_header = type { i32 }
%struct.smt_para = type { i32 }

@SMT_P_AUTHOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_smc*, %struct.smt_header*)* @smt_authorize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smt_authorize(%struct.s_smc* %0, %struct.smt_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca %struct.smt_header*, align 8
  %6 = alloca %struct.smt_para*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store %struct.smt_header* %1, %struct.smt_header** %5, align 8
  %9 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %10 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = bitcast i32* %11 to i8*
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %16, %13
  %25 = phi i1 [ false, %13 ], [ %23, %16 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %13

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 8
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.smt_header*, %struct.smt_header** %5, align 8
  %35 = getelementptr inbounds %struct.smt_header, %struct.smt_header* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to i8*
  %37 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %38 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = bitcast i32* %39 to i8*
  %41 = call i64 @memcmp(i8* %36, i8* %40, i32 8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %100

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %47 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %65, %45
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %54, %51
  %63 = phi i1 [ false, %51 ], [ %61, %54 ]
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %51

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 8
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  %72 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %73 = load %struct.smt_header*, %struct.smt_header** %5, align 8
  %74 = load i32, i32* @SMT_P_AUTHOR, align 4
  %75 = call i64 @sm_to_para(%struct.s_smc* %72, %struct.smt_header* %73, i32 %74)
  %76 = inttoptr i64 %75 to %struct.smt_para*
  store %struct.smt_para* %76, %struct.smt_para** %6, align 8
  %77 = load %struct.smt_para*, %struct.smt_para** %6, align 8
  %78 = icmp ne %struct.smt_para* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %100

80:                                               ; preds = %71
  %81 = load %struct.smt_para*, %struct.smt_para** %6, align 8
  %82 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 8
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %100

86:                                               ; preds = %80
  %87 = load %struct.smt_para*, %struct.smt_para** %6, align 8
  %88 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %87, i64 1
  %89 = bitcast %struct.smt_para* %88 to i8*
  %90 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %91 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = call i64 @memcmp(i8* %89, i8* %94, i32 8)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  store i32 1, i32* %3, align 4
  br label %100

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %68
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %97, %85, %79, %43
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @sm_to_para(%struct.s_smc*, %struct.smt_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
