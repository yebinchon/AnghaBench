; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_find_cip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_find_cip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@cip_bc = common dso_local global i32** null, align 8
@cip_hlc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32*, i32*)* @find_cip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_cip(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 9, i64* %8, align 8
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i32*, i32** %6, align 8
  %15 = load i32**, i32*** @cip_bc, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ie_compare(i32* %14, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %13, %10
  %28 = phi i1 [ false, %10 ], [ %26, %13 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %8, align 8
  br label %10

33:                                               ; preds = %27
  store i64 16, i64* %9, align 8
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %35, 29
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = load i32**, i32*** @cip_bc, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ie_compare(i32* %38, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %37
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** @cip_hlc, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ie_compare(i32* %51, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %50, %37
  %60 = phi i1 [ true, %37 ], [ %58, %50 ]
  br label %61

61:                                               ; preds = %59, %34
  %62 = phi i1 [ false, %34 ], [ %60, %59 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %34

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  %69 = icmp eq i64 %68, 29
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %4, align 8
  br label %74

72:                                               ; preds = %67
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i32 @ie_compare(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
