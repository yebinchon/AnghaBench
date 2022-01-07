; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_insert_watchpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_insert_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@output_buffer = common dso_local global i64* null, align 8
@sreg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@error_message = common dso_local global i8** null, align 8
@E04 = common dso_local global i64 0, align 8
@S_CCS_BITNR = common dso_local global i32 0, align 4
@CCS_SHIFT = common dso_local global i32 0, align 4
@reg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32, i32)* @insert_watchpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_watchpoint(i8 signext %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8, i8* %4, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp slt i32 %10, 49
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sgt i32 %14, 52
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %3
  %17 = load i64*, i64** @output_buffer, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 0, i64* %18, align 8
  br label %130

19:                                               ; preds = %12
  %20 = load i8, i8* %4, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 51
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8 52, i8* %4, align 1
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i8, i8* %4, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 49
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 0), align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64*, i64** @output_buffer, align 8
  %34 = load i8**, i8*** @error_message, align 8
  %35 = load i64, i64* @E04, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @gdb_cris_strcpy(i64* %33, i8* %37)
  br label %130

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 1), align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 2), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 0), align 4
  %46 = or i32 %45, 1
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 0), align 4
  br label %121

47:                                               ; preds = %24
  store i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 3), i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 6
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 0), align 4
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 4
  %55 = add nsw i32 2, %54
  %56 = shl i32 3, %55
  %57 = and i32 %52, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %64

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %48

64:                                               ; preds = %59, %48
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 5
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i64*, i64** @output_buffer, align 8
  %69 = load i8**, i8*** @error_message, align 8
  %70 = load i64, i64* @E04, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @gdb_cris_strcpy(i64* %68, i8* %72)
  br label %130

74:                                               ; preds = %64
  %75 = load i8, i8* %4, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 51
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i8, i8* %4, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 52
  br i1 %81, label %82, label %89

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 %83, 4
  %85 = add nsw i32 2, %84
  %86 = shl i32 1, %85
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 0), align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 0), align 4
  br label %89

89:                                               ; preds = %82, %78
  %90 = load i8, i8* %4, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 50
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i8, i8* %4, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 52
  br i1 %96, label %97, label %104

97:                                               ; preds = %93, %89
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 %98, 4
  %100 = add nsw i32 2, %99
  %101 = shl i32 2, %100
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 0), align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sreg, i32 0, i32 0), align 4
  br label %104

104:                                              ; preds = %97, %93
  %105 = load i32, i32* %5, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %111, %112
  %114 = sub nsw i32 %113, 1
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %116, 2
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  store i32 %114, i32* %120, align 4
  br label %121

121:                                              ; preds = %104, %39
  %122 = load i32, i32* @S_CCS_BITNR, align 4
  %123 = load i32, i32* @CCS_SHIFT, align 4
  %124 = add nsw i32 %122, %123
  %125 = shl i32 1, %124
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 0), align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @reg, i32 0, i32 0), align 4
  %128 = load i64*, i64** @output_buffer, align 8
  %129 = call i32 @gdb_cris_strcpy(i64* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %130

130:                                              ; preds = %121, %67, %32, %16
  ret void
}

declare dso_local i32 @gdb_cris_strcpy(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
