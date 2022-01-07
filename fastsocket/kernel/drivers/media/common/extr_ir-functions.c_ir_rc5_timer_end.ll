; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_ir-functions.c_ir_rc5_timer_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_ir-functions.c_ir_rc5_timer_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card_ir = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"ir-common: spurious timer_end\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ir-common: short code: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"ir-common: rc5 start bits invalid: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ir-common: instruction %x, toggle %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ir_rc5_timer_end(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.card_ir*, align 8
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.card_ir*
  store %struct.card_ir* %12, %struct.card_ir** %3, align 8
  store i32 0, i32* %8, align 4
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %5, align 8
  %14 = call i32 @do_gettimeofday(%struct.timeval* %4)
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %18 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %16, %20
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 200000, i32* %7, align 4
  br label %41

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %28 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %26, %30
  %32 = mul nsw i32 1000000, %31
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %32, %34
  %36 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %37 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %35, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %24, %23
  %42 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %43 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %42, i32 0, i32 10
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 28000
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %142

48:                                               ; preds = %41
  %49 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %50 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 20
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %55 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %142

58:                                               ; preds = %48
  %59 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %60 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %63 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 %61, %64
  %66 = or i32 %65, 1
  %67 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %68 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %70 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ir_rc5_decode(i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @RC5_START(i32 %73)
  %75 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %76 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %58
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @RC5_START(i32 %80)
  %82 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  br label %141

83:                                               ; preds = %58
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @RC5_ADDR(i32 %84)
  %86 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %87 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %140

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @RC5_TOGGLE(i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @RC5_INSTR(i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %97 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @RC5_TOGGLE(i32 %98)
  %100 = icmp ne i32 %95, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %104 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @RC5_INSTR(i32 %105)
  %107 = icmp ne i32 %102, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %101, %90
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %113 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %116 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %115, i32 0, i32 8
  %117 = call i32 @ir_input_nokey(i32 %114, i32* %116)
  %118 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %119 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %122 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %121, i32 0, i32 8
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @ir_input_keydown(i32 %120, i32* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %108, %101
  %127 = load i64, i64* %5, align 8
  %128 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %129 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @msecs_to_jiffies(i32 %130)
  %132 = add i64 %127, %131
  store i64 %132, i64* %6, align 8
  %133 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %134 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %133, i32 0, i32 6
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @mod_timer(i32* %134, i64 %135)
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.card_ir*, %struct.card_ir** %3, align 8
  %139 = getelementptr inbounds %struct.card_ir, %struct.card_ir* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %126, %83
  br label %141

141:                                              ; preds = %140, %79
  br label %142

142:                                              ; preds = %46, %141, %53
  ret void
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @ir_rc5_decode(i32) #1

declare dso_local i64 @RC5_START(i32) #1

declare dso_local i64 @RC5_ADDR(i32) #1

declare dso_local i32 @RC5_TOGGLE(i32) #1

declare dso_local i32 @RC5_INSTR(i32) #1

declare dso_local i32 @ir_input_nokey(i32, i32*) #1

declare dso_local i32 @ir_input_keydown(i32, i32*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
