; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_misaligned_fpu_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_misaligned_fpu_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.pt_regs = type { i64, i32 }

@VERIFY_WRITE = common dso_local global i32 0, align 4
@last_task_used_math = common dso_local global %struct.TYPE_10__* null, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@SR_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Unexpected width_shift %d in misaligned_fpu_store, PC=%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Misaligned FPU load inside kernel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32, i32, i32)* @misaligned_fpu_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misaligned_fpu_store(%struct.pt_regs* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @generate_and_check_address(%struct.pt_regs* %18, i32 %19, i32 %20, i32 %21, i64* %14)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %144

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 4
  %30 = and i32 %29, 63
  store i32 %30, i32* %13, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %32 = call i64 @user_mode(%struct.pt_regs* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %141

34:                                               ; preds = %27
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %35 = load i32, i32* @VERIFY_WRITE, align 4
  %36 = load i64, i64* %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 1, %38
  %40 = call i32 @access_ok(i32 %35, i64 %36, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %144

43:                                               ; preds = %34
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @last_task_used_math, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %46 = icmp eq %struct.TYPE_10__* %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = call i32 (...) @enable_fpu()
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %51 = call i32 @save_fpu(%struct.TYPE_10__* %49, %struct.pt_regs* %50)
  %52 = call i32 (...) @disable_fpu()
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @last_task_used_math, align 8
  %53 = load i32, i32* @SR_FD, align 4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %47, %43
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %119 [
    i32 2, label %60
    i32 3, label %71
  ]

60:                                               ; preds = %58
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %16, align 4
  br label %125

71:                                               ; preds = %58
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %17, align 4
  br label %118

96:                                               ; preds = %71
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %16, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %17, align 4
  br label %118

118:                                              ; preds = %96, %74
  br label %125

119:                                              ; preds = %58
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %120, i64 %123)
  br label %125

125:                                              ; preds = %119, %118, %60
  %126 = load i32, i32* %16, align 4
  %127 = bitcast i64* %15 to i32*
  store i32 %126, i32* %127, align 8
  %128 = load i32, i32* %17, align 4
  %129 = bitcast i64* %15 to i32*
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 %128, i32* %130, align 4
  %131 = load i64, i64* %14, align 8
  %132 = trunc i64 %131 to i32
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = load i32, i32* %10, align 4
  %136 = shl i32 1, %135
  %137 = call i64 @__copy_user(i8* %134, i64* %15, i32 %136)
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  store i32 -1, i32* %6, align 4
  br label %144

140:                                              ; preds = %125
  store i32 0, i32* %6, align 4
  br label %144

141:                                              ; preds = %27
  %142 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %143 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.pt_regs* %142, i32 0)
  store i32 -1, i32* %6, align 4
  br label %144

144:                                              ; preds = %141, %140, %139, %42, %25
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @generate_and_check_address(%struct.pt_regs*, i32, i32, i32, i64*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @access_ok(i32, i64, i64) #1

declare dso_local i32 @enable_fpu(...) #1

declare dso_local i32 @save_fpu(%struct.TYPE_10__*, %struct.pt_regs*) #1

declare dso_local i32 @disable_fpu(...) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i64 @__copy_user(i8*, i64*, i32) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
