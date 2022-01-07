; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_paride.c_default_test_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_paride.c_default_test_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)* }

@.str = private unnamed_addr constant [43 x i8] c"%s: %s: port 0x%x, mode  %d, test=(%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @default_test_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_test_proto(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = call i32 %15(%struct.TYPE_9__* %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %55, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %58

21:                                               ; preds = %18
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %23, 16
  %25 = add nsw i32 160, %24
  %26 = call i32 @pi_write_regr(%struct.TYPE_9__* %22, i32 0, i32 6, i32 %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %51, %21
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %32, 170
  %34 = call i32 @pi_write_regr(%struct.TYPE_9__* %31, i32 0, i32 2, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = xor i32 %36, 85
  %38 = call i32 @pi_write_regr(%struct.TYPE_9__* %35, i32 0, i32 3, i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i32 @pi_read_regr(%struct.TYPE_9__* %39, i32 0, i32 2)
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %41, 170
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %27

54:                                               ; preds = %27
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %18

58:                                               ; preds = %18
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = call i32 %63(%struct.TYPE_9__* %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %58
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %76, i32 %79, i32 %82, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %68, %58
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i1 [ false, %88 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pi_write_regr(%struct.TYPE_9__*, i32, i32, i32) #2

declare dso_local i32 @pi_read_regr(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
