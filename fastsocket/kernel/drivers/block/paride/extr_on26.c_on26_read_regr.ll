; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_on26.c_on26_read_regr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_on26.c_on26_read_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@P1 = common dso_local global i32 0, align 4
@P2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @on26_read_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on26_read_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = shl i32 %11, 2
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %70 [
    i32 0, label %19
    i32 1, label %40
    i32 2, label %54
    i32 3, label %54
    i32 4, label %54
  ]

19:                                               ; preds = %3
  %20 = call i32 @w0(i32 1)
  %21 = load i32, i32* @P1, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @w0(i32 %22)
  %24 = load i32, i32* @P2, align 4
  %25 = call i32 @w0(i32 0)
  %26 = load i32, i32* @P1, align 4
  %27 = call i32 @w2(i32 6)
  %28 = call i32 (...) @r1()
  store i32 %28, i32* %8, align 4
  %29 = call i32 @w2(i32 4)
  %30 = call i32 @w2(i32 6)
  %31 = call i32 (...) @r1()
  store i32 %31, i32* %9, align 4
  %32 = call i32 @w2(i32 4)
  %33 = call i32 @w2(i32 6)
  %34 = call i32 @w2(i32 4)
  %35 = call i32 @w2(i32 6)
  %36 = call i32 @w2(i32 4)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @j44(i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %71

40:                                               ; preds = %3
  %41 = call i32 @w0(i32 1)
  %42 = load i32, i32* @P1, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @w0(i32 %43)
  %45 = load i32, i32* @P2, align 4
  %46 = call i32 @w0(i32 0)
  %47 = load i32, i32* @P1, align 4
  %48 = call i32 @w2(i32 38)
  %49 = call i32 (...) @r0()
  store i32 %49, i32* %8, align 4
  %50 = call i32 @w2(i32 4)
  %51 = call i32 @w2(i32 38)
  %52 = call i32 @w2(i32 4)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %71

54:                                               ; preds = %3, %3, %3
  %55 = call i32 @w3(i32 1)
  %56 = call i32 @w3(i32 1)
  %57 = call i32 @w2(i32 5)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @w4(i32 %58)
  %60 = call i32 @w2(i32 4)
  %61 = call i32 @w3(i32 0)
  %62 = call i32 @w3(i32 0)
  %63 = call i32 @w2(i32 36)
  %64 = call i32 (...) @r4()
  store i32 %64, i32* %8, align 4
  %65 = call i32 @w2(i32 4)
  %66 = call i32 @w2(i32 36)
  %67 = call i32 (...) @r4()
  %68 = call i32 @w2(i32 4)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %54, %40, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @j44(i32, i32) #1

declare dso_local i32 @r0(...) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @w4(i32) #1

declare dso_local i32 @r4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
