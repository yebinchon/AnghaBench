; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_lightning.c_l4_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_lightning.c_l4_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { %struct.l4* }
%struct.l4 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i32*, i32*)* @l4_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l4_calibrate(%struct.gameport* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gameport*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca %struct.l4*, align 8
  store %struct.gameport* %0, %struct.gameport** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.gameport*, %struct.gameport** %5, align 8
  %13 = getelementptr inbounds %struct.gameport, %struct.gameport* %12, i32 0, i32 0
  %14 = load %struct.l4*, %struct.l4** %13, align 8
  store %struct.l4* %14, %struct.l4** %11, align 8
  %15 = load %struct.l4*, %struct.l4** %11, align 8
  %16 = getelementptr inbounds %struct.l4, %struct.l4* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %19 = call i64 @l4_getcal(i32 %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %112

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %100, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %103

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %31, %35
  %37 = sdiv i32 %36, 200
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %49

41:                                               ; preds = %26
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 255
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ 255, %44 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %40
  %50 = phi i32 [ 1, %40 ], [ %48, %47 ]
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %71

58:                                               ; preds = %49
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %63, %67
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %68, %69
  br label %71

71:                                               ; preds = %58, %57
  %72 = phi i32 [ -1, %57 ], [ %70, %58 ]
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 252
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %90

84:                                               ; preds = %71
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  br label %90

90:                                               ; preds = %84, %83
  %91 = phi i32 [ 252, %83 ], [ %89, %84 ]
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %98
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %23

103:                                              ; preds = %23
  %104 = load %struct.l4*, %struct.l4** %11, align 8
  %105 = getelementptr inbounds %struct.l4, %struct.l4* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %108 = call i64 @l4_setcal(i32 %106, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %112

111:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %110, %21
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @l4_getcal(i32, i32*) #1

declare dso_local i64 @l4_setcal(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
