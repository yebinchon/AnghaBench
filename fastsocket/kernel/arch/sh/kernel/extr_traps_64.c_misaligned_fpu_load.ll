; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_misaligned_fpu_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_misaligned_fpu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.pt_regs = type { i64, i32 }

@VERIFY_READ = common dso_local global i32 0, align 4
@last_task_used_math = common dso_local global %struct.TYPE_10__* null, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@SR_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Unexpected width_shift %d in misaligned_fpu_load, PC=%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Misaligned FPU load inside kernel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32, i32, i32)* @misaligned_fpu_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misaligned_fpu_load(%struct.pt_regs* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %35 = load i32, i32* @VERIFY_READ, align 4
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
  %44 = load i64, i64* %14, align 8
  %45 = trunc i64 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 1, %48
  %50 = call i64 @__copy_user(i64* %15, i8* %47, i32 %49)
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 -1, i32* %6, align 4
  br label %144

53:                                               ; preds = %43
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @last_task_used_math, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %56 = icmp eq %struct.TYPE_10__* %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = call i32 (...) @enable_fpu()
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %60 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %61 = call i32 @save_fpu(%struct.TYPE_10__* %59, %struct.pt_regs* %60)
  %62 = call i32 (...) @disable_fpu()
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @last_task_used_math, align 8
  %63 = load i32, i32* @SR_FD, align 4
  %64 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %57, %53
  %69 = bitcast i64* %15 to i32*
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %16, align 4
  %71 = bitcast i64* %15 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %10, align 4
  switch i32 %74, label %134 [
    i32 2, label %75
    i32 3, label %86
  ]

75:                                               ; preds = %68
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %76, i32* %85, align 4
  br label %140

86:                                               ; preds = %68
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %90, i32* %99, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %100, i32* %110, align 4
  br label %133

111:                                              ; preds = %86
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %112, i32* %121, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %122, i32* %132, align 4
  br label %133

133:                                              ; preds = %111, %89
  br label %140

134:                                              ; preds = %68
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %137 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %135, i64 %138)
  br label %140

140:                                              ; preds = %134, %133, %75
  store i32 0, i32* %6, align 4
  br label %144

141:                                              ; preds = %27
  %142 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %143 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.pt_regs* %142, i32 0)
  store i32 -1, i32* %6, align 4
  br label %144

144:                                              ; preds = %141, %140, %52, %42, %25
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @generate_and_check_address(%struct.pt_regs*, i32, i32, i32, i64*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @access_ok(i32, i64, i64) #1

declare dso_local i64 @__copy_user(i64*, i8*, i32) #1

declare dso_local i32 @enable_fpu(...) #1

declare dso_local i32 @save_fpu(%struct.TYPE_10__*, %struct.pt_regs*) #1

declare dso_local i32 @disable_fpu(...) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
