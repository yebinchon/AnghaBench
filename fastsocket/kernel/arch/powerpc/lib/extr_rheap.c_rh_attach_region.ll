; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/lib/extr_rheap.c_rh_attach_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/lib/extr_rheap.c_rh_attach_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32* }

@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rh_attach_region(%struct.TYPE_9__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %14, %16
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %11, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* %11, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = xor i64 %30, -1
  %32 = and i64 %29, %31
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @IS_ERR_VALUE(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %3
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %3
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %69

43:                                               ; preds = %36
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = call i32 @assure_empty(%struct.TYPE_9__* %49, i32 1)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %69

55:                                               ; preds = %43
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = call %struct.TYPE_10__* @get_slot(%struct.TYPE_9__* %56)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = call i32 @attach_free_block(%struct.TYPE_9__* %66, %struct.TYPE_10__* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %55, %53, %40
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @assure_empty(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_10__* @get_slot(%struct.TYPE_9__*) #1

declare dso_local i32 @attach_free_block(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
