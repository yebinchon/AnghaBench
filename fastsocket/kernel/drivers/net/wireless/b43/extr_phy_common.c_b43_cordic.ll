; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_cordic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_cordic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_c32 = type { i32, i32 }

@b43_cordic.arctg = internal constant [18 x i32] [i32 2949120, i32 1740967, i32 919879, i32 466945, i32 234379, i32 117304, i32 58666, i32 29335, i32 14668, i32 7334, i32 3667, i32 1833, i32 917, i32 458, i32 229, i32 115, i32 57, i32 29], align 16
@__const.b43_cordic.ret = private unnamed_addr constant %struct.b43_c32 { i32 39797, i32 0 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @b43_cordic(i32 %0) #0 {
  %2 = alloca %struct.b43_c32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = bitcast %struct.b43_c32* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.b43_c32* @__const.b43_cordic.ret to i8*), i64 8, i1 false)
  br label %9

9:                                                ; preds = %12, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 11796480
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 23592960
  store i32 %14, i32* %3, align 4
  br label %9

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %19, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, -11796480
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 23592960
  store i32 %21, i32* %3, align 4
  br label %16

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 5898240
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, 11796480
  store i32 %27, i32* %3, align 4
  store i32 -1, i32* %6, align 4
  br label %35

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, -5898240
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 11796480
  store i32 %33, i32* %3, align 4
  store i32 -1, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %25
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %96, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp sle i32 %37, 17
  br i1 %38, label %39, label %99

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %47, %48
  %50 = sub nsw i32 %45, %49
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %5, align 8
  %53 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = ashr i32 %54, %55
  %57 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [18 x i32], [18 x i32]* @b43_cordic.arctg, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %95

69:                                               ; preds = %39
  %70 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = ashr i32 %73, %74
  %76 = add nsw i32 %71, %75
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %5, align 8
  %79 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = ashr i32 %80, %81
  %83 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [18 x i32], [18 x i32]* @b43_cordic.arctg, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %69, %43
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %36

99:                                               ; preds = %36
  %100 = load i32, i32* %6, align 4
  %101 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, %100
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %6, align 4
  %105 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %2, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, %104
  store i32 %107, i32* %105, align 4
  %108 = bitcast %struct.b43_c32* %2 to i64*
  %109 = load i64, i64* %108, align 4
  ret i64 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
