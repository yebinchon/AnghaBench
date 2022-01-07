; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cistpl.c_parse_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cistpl.c_parse_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@exponent = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_3__*)* @parse_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_timing(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %102

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 3
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32* null, i32** %4, align 8
  br label %102

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @SPEED_CVT(i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i8**, i8*** @exponent, align 8
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  br label %42

39:                                               ; preds = %13
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i8* null, i8** %41, align 8
  br label %42

42:                                               ; preds = %39, %25
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 2
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 7
  %47 = icmp ne i32 %46, 7
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32* null, i32** %4, align 8
  br label %102

54:                                               ; preds = %48
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @SPEED_CVT(i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i8**, i8*** @exponent, align 8
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 7
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %71

68:                                               ; preds = %42
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i8* null, i8** %70, align 8
  br label %71

71:                                               ; preds = %68, %54
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 %72, 3
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 7
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = icmp eq i32* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32* null, i32** %4, align 8
  br label %102

82:                                               ; preds = %76
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @SPEED_CVT(i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load i8**, i8*** @exponent, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %98

95:                                               ; preds = %71
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i8* null, i8** %97, align 8
  br label %98

98:                                               ; preds = %95, %82
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %5, align 8
  %101 = load i32*, i32** %5, align 8
  store i32* %101, i32** %4, align 8
  br label %102

102:                                              ; preds = %98, %81, %53, %24, %12
  %103 = load i32*, i32** %4, align 8
  ret i32* %103
}

declare dso_local i8* @SPEED_CVT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
