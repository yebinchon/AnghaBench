; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_remove_watchpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_remove_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@output_buffer = common dso_local global i64* null, align 8
@sreg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@error_message = common dso_local global i8** null, align 8
@E04 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32, i32)* @remove_watchpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_watchpoint(i8 signext %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp slt i32 %12, 49
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i8, i8* %4, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sgt i32 %16, 52
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %3
  %19 = load i64*, i64** @output_buffer, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 0, i64* %20, align 8
  br label %138

21:                                               ; preds = %14
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 51
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8 52, i8* %4, align 1
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 49
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sreg, i32 0, i32 0), align 8
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load i64*, i64** @output_buffer, align 8
  %36 = load i8**, i8*** @error_message, align 8
  %37 = load i64, i64* @E04, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @gdb_cris_strcpy(i64* %35, i8* %39)
  br label %138

41:                                               ; preds = %30
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sreg, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sreg, i32 0, i32 2), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sreg, i32 0, i32 0), align 8
  %43 = and i32 %42, -2
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sreg, i32 0, i32 0), align 8
  br label %135

44:                                               ; preds = %26
  store i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sreg, i32 0, i32 1), i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %103, %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 6
  br i1 %47, label %48, label %106

48:                                               ; preds = %45
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %48
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, 2
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = icmp eq i32 %64, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 4
  %73 = add nsw i32 2, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sreg, i32 0, i32 0), align 8
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 3, %75
  %77 = and i32 %74, %76
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %10, align 4
  %80 = load i8, i8* %4, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 51
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %100, label %86

86:                                               ; preds = %83, %70
  %87 = load i8, i8* %4, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 50
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %100, label %93

93:                                               ; preds = %90, %86
  %94 = load i8, i8* %4, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 52
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %90, %83
  br label %106

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %57, %48
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %45

106:                                              ; preds = %100, %45
  %107 = load i32, i32* %7, align 4
  %108 = icmp sgt i32 %107, 5
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i64*, i64** @output_buffer, align 8
  %111 = load i8**, i8*** @error_message, align 8
  %112 = load i64, i64* @E04, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @gdb_cris_strcpy(i64* %110, i8* %114)
  br label %138

116:                                              ; preds = %106
  %117 = load i32, i32* %7, align 4
  %118 = mul nsw i32 %117, 4
  %119 = add nsw i32 2, %118
  %120 = shl i32 3, %119
  %121 = xor i32 %120, -1
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sreg, i32 0, i32 0), align 8
  %123 = and i32 %122, %121
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sreg, i32 0, i32 0), align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %7, align 4
  %126 = mul nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 0, i32* %128, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %7, align 4
  %131 = mul nsw i32 %130, 2
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %116, %41
  %136 = load i64*, i64** @output_buffer, align 8
  %137 = call i32 @gdb_cris_strcpy(i64* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %109, %34, %18
  ret void
}

declare dso_local i32 @gdb_cris_strcpy(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
