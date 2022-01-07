; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c_kgdb_correct_hw_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c_kgdb_correct_hw_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@breakinfo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kgdb_correct_hw_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_correct_hw_break() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %5 = load i64, i64* %1, align 8
  %6 = call i32 @get_debugreg(i64 %5, i32 7)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %104, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %107

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 1
  %13 = shl i32 2, %12
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* %1, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = and i64 %14, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %10
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %1, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %1, align 8
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 %32, 2
  %34 = shl i32 983040, %33
  %35 = xor i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %1, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %1, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %45, %51
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 2
  %55 = add nsw i32 %54, 16
  %56 = shl i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %1, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %1, align 8
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %27
  %63 = load i32, i32* %4, align 4
  %64 = icmp sle i32 %63, 3
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @set_debugreg(i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %62, %27
  br label %103

75:                                               ; preds = %19, %10
  %76 = load i64, i64* %1, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = and i64 %76, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %75
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %81
  store i32 1, i32* %2, align 4
  %90 = load i32, i32* %3, align 4
  %91 = xor i32 %90, -1
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %1, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %1, align 8
  %95 = load i32, i32* %4, align 4
  %96 = shl i32 %95, 2
  %97 = shl i32 983040, %96
  %98 = xor i32 %97, -1
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %1, align 8
  %101 = and i64 %100, %99
  store i64 %101, i64* %1, align 8
  br label %102

102:                                              ; preds = %89, %81, %75
  br label %103

103:                                              ; preds = %102, %74
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %7

107:                                              ; preds = %7
  %108 = load i32, i32* %2, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i64, i64* %1, align 8
  %112 = call i32 @set_debugreg(i64 %111, i32 7)
  br label %113

113:                                              ; preds = %110, %107
  ret void
}

declare dso_local i32 @get_debugreg(i64, i32) #1

declare dso_local i32 @set_debugreg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
