; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_capi.c_actcapi_chkhdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_capi.c_actcapi_chkhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@num_valid_imsg = common dso_local global i32 0, align 4
@valid_msg = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @actcapi_chkhdr(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 9
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %59

18:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @num_valid_imsg, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @valid_msg, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %27, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %23
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @valid_msg, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %40, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 2
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %36, %23
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %19

58:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %49, %17, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
