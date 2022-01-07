; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epia.c_epia_test_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epia.c_epia_test_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s: epia: port 0x%x, mode %d, test=(%d,%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @epia_test_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epia_test_proto(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @epia_connect(%struct.TYPE_6__* %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %49, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 16
  %20 = add nsw i32 160, %19
  %21 = call i32 @WR(i32 6, i32 %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %43, %17
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = xor i32 %26, 170
  %28 = call i32 @WR(i32 2, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = xor i32 %29, 85
  %31 = call i32 @WR(i32 3, i32 %30)
  %32 = call i32 @RR(i32 2)
  %33 = load i32, i32* %8, align 4
  %34 = xor i32 %33, 170
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %25
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %22

46:                                               ; preds = %22
  %47 = call i32 @WR(i32 2, i32 1)
  %48 = call i32 @WR(i32 3, i32 1)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %14

52:                                               ; preds = %14
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = call i32 @epia_disconnect(%struct.TYPE_6__* %53)
  store i32 0, i32* %9, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = call i32 @epia_connect(%struct.TYPE_6__* %55)
  %57 = call i32 @WR(i32 132, i32 8)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @epia_read_block(%struct.TYPE_6__* %58, i8* %59, i32 512)
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %98, %52
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 256
  br i1 %63, label %64, label %101

64:                                               ; preds = %61
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 2, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = and i32 %71, 255
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  %75 = and i32 %74, 255
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %64
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 2, %82
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = and i32 %88, 255
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 -2, %90
  %92 = and i32 %91, 255
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %80
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %61

101:                                              ; preds = %61
  %102 = call i32 @WR(i32 132, i32 0)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = call i32 @epia_disconnect(%struct.TYPE_6__* %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %101
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %113, i32 %116, i32 %118, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %107, %101
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br label %134

134:                                              ; preds = %131, %127
  %135 = phi i1 [ true, %127 ], [ %133, %131 ]
  %136 = zext i1 %135 to i32
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @epia_connect(%struct.TYPE_6__*) #2

declare dso_local i32 @WR(i32, i32) #2

declare dso_local i32 @RR(i32) #2

declare dso_local i32 @epia_disconnect(%struct.TYPE_6__*) #2

declare dso_local i32 @epia_read_block(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
