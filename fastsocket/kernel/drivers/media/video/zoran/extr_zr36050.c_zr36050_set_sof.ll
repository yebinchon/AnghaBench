; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36050.c_zr36050_set_sof.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36050.c_zr36050_set_sof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zr36050 = type { i32, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s: write SOF (%dx%d, %d components)\0A\00", align 1
@NO_OF_COMPONENTS = common dso_local global i32 0, align 4
@BASELINE_PRECISION = common dso_local global i8 0, align 1
@zr36050_tq = common dso_local global i8* null, align 8
@ZR050_SOF_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zr36050*)* @zr36050_set_sof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36050_set_sof(%struct.zr36050* %0) #0 {
  %2 = alloca %struct.zr36050*, align 8
  %3 = alloca [34 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.zr36050* %0, %struct.zr36050** %2, align 8
  %5 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %6 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %9 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %12 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %15 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i32 %14)
  %16 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 0
  store i8 -1, i8* %16, align 16
  %17 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 1
  store i8 -64, i8* %17, align 1
  %18 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 2
  store i8 0, i8* %18, align 2
  %19 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %20 = mul nsw i32 3, %19
  %21 = add nsw i32 %20, 8
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 3
  store i8 %22, i8* %23, align 1
  %24 = load i8, i8* @BASELINE_PRECISION, align 1
  %25 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 4
  store i8 %24, i8* %25, align 4
  %26 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %27 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 5
  store i8 %30, i8* %31, align 1
  %32 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %33 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 6
  store i8 %36, i8* %37, align 2
  %38 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %39 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 8
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 7
  store i8 %42, i8* %43, align 1
  %44 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %45 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 8
  store i8 %48, i8* %49, align 8
  %50 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 9
  store i8 %51, i8* %52, align 1
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %97, %1
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = trunc i32 %58 to i8
  %60 = load i32, i32* %4, align 4
  %61 = mul nsw i32 %60, 3
  %62 = add nsw i32 10, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 %63
  store i8 %59, i8* %64, align 1
  %65 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %66 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 4
  %73 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %74 = getelementptr inbounds %struct.zr36050, %struct.zr36050* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %72, %79
  %81 = trunc i32 %80 to i8
  %82 = load i32, i32* %4, align 4
  %83 = mul nsw i32 %82, 3
  %84 = add nsw i32 11, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 %85
  store i8 %81, i8* %86, align 1
  %87 = load i8*, i8** @zr36050_tq, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = load i32, i32* %4, align 4
  %93 = mul nsw i32 %92, 3
  %94 = add nsw i32 12, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 %95
  store i8 %91, i8* %96, align 1
  br label %97

97:                                               ; preds = %57
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %53

100:                                              ; preds = %53
  %101 = load %struct.zr36050*, %struct.zr36050** %2, align 8
  %102 = load i32, i32* @ZR050_SOF_IDX, align 4
  %103 = load i32, i32* @NO_OF_COMPONENTS, align 4
  %104 = mul nsw i32 3, %103
  %105 = add nsw i32 %104, 10
  %106 = getelementptr inbounds [34 x i8], [34 x i8]* %3, i64 0, i64 0
  %107 = call i32 @zr36050_pushit(%struct.zr36050* %101, i32 %102, i32 %105, i8* %106)
  ret i32 %107
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @zr36050_pushit(%struct.zr36050*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
