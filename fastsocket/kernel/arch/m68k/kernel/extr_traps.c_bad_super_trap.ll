; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_traps.c_bad_super_trap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_traps.c_bad_super_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i16, i32, i32 }

@vec_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"*** %s ***   FORMAT=%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"*** Exception %d ***   FORMAT=%X\0A\00", align 1
@VEC_ADDRERR = common dso_local global i32 0, align 4
@CPU_IS_020_OR_030 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"SSW=%#06x  \00", align 1
@RC = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [43 x i8] c"Pipe stage C instruction fault at %#010lx\0A\00", align 1
@RB = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [43 x i8] c"Pipe stage B instruction fault at %#010lx\0A\00", align 1
@DF = common dso_local global i16 0, align 2
@.str.5 = private unnamed_addr constant [42 x i8] c"Data %s fault at %#010lx in %s (pc=%#lx)\0A\00", align 1
@RW = common dso_local global i16 0, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@space_names = common dso_local global i32* null, align 8
@DFC = common dso_local global i16 0, align 2
@.str.8 = private unnamed_addr constant [26 x i8] c"Current process id is %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"BAD KERNEL TRAP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad_super_trap(%struct.frame* %0) #0 {
  %2 = alloca %struct.frame*, align 8
  %3 = alloca i16, align 2
  store %struct.frame* %0, %struct.frame** %2, align 8
  %4 = call i32 (...) @console_verbose()
  %5 = load %struct.frame*, %struct.frame** %2, align 8
  %6 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** @vec_names, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = mul nsw i32 4, %10
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i32*, i32** @vec_names, align 8
  %15 = load %struct.frame*, %struct.frame** %2, align 8
  %16 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %14, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.frame*, %struct.frame** %2, align 8
  %24 = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  br label %39

28:                                               ; preds = %1
  %29 = load %struct.frame*, %struct.frame** %2, align 8
  %30 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 2
  %34 = load %struct.frame*, %struct.frame** %2, align 8
  %35 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %28, %13
  %40 = load %struct.frame*, %struct.frame** %2, align 8
  %41 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 2
  %45 = load i32, i32* @VEC_ADDRERR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %151

47:                                               ; preds = %39
  %48 = load i64, i64* @CPU_IS_020_OR_030, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %151

50:                                               ; preds = %47
  %51 = load %struct.frame*, %struct.frame** %2, align 8
  %52 = getelementptr inbounds %struct.frame, %struct.frame* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i16, i16* %54, align 4
  store i16 %55, i16* %3, align 2
  %56 = load i16, i16* %3, align 2
  %57 = zext i16 %56 to i32
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i16, i16* %3, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @RC, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %50
  %66 = load %struct.frame*, %struct.frame** %2, align 8
  %67 = getelementptr inbounds %struct.frame, %struct.frame* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.frame*, %struct.frame** %2, align 8
  %73 = getelementptr inbounds %struct.frame, %struct.frame* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 2
  br label %84

77:                                               ; preds = %65
  %78 = load %struct.frame*, %struct.frame** %2, align 8
  %79 = getelementptr inbounds %struct.frame, %struct.frame* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 2
  br label %84

84:                                               ; preds = %77, %71
  %85 = phi i32 [ %76, %71 ], [ %83, %77 ]
  %86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %50
  %88 = load i16, i16* %3, align 2
  %89 = zext i16 %88 to i32
  %90 = load i16, i16* @RB, align 2
  %91 = zext i16 %90 to i32
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %87
  %95 = load %struct.frame*, %struct.frame** %2, align 8
  %96 = getelementptr inbounds %struct.frame, %struct.frame* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 10
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.frame*, %struct.frame** %2, align 8
  %102 = getelementptr inbounds %struct.frame, %struct.frame* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 4
  br label %112

106:                                              ; preds = %94
  %107 = load %struct.frame*, %struct.frame** %2, align 8
  %108 = getelementptr inbounds %struct.frame, %struct.frame* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  br label %112

112:                                              ; preds = %106, %100
  %113 = phi i32 [ %105, %100 ], [ %111, %106 ]
  %114 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %112, %87
  %116 = load i16, i16* %3, align 2
  %117 = zext i16 %116 to i32
  %118 = load i16, i16* @DF, align 2
  %119 = zext i16 %118 to i32
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %115
  %123 = load i16, i16* %3, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, i16* @RW, align 2
  %126 = zext i16 %125 to i32
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %131 = load %struct.frame*, %struct.frame** %2, align 8
  %132 = getelementptr inbounds %struct.frame, %struct.frame* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** @space_names, align 8
  %137 = load i16, i16* %3, align 2
  %138 = zext i16 %137 to i32
  %139 = load i16, i16* @DFC, align 2
  %140 = zext i16 %139 to i32
  %141 = and i32 %138, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %136, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.frame*, %struct.frame** %2, align 8
  %146 = getelementptr inbounds %struct.frame, %struct.frame* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %130, i32 %135, i32 %144, i32 %148)
  br label %150

150:                                              ; preds = %122, %115
  br label %151

151:                                              ; preds = %150, %47, %39
  %152 = load i32, i32* @current, align 4
  %153 = call i32 @task_pid_nr(i32 %152)
  %154 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %153)
  %155 = load %struct.frame*, %struct.frame** %2, align 8
  %156 = getelementptr inbounds %struct.frame, %struct.frame* %155, i32 0, i32 0
  %157 = call i32 @die_if_kernel(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_6__* %156, i32 0)
  ret void
}

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @die_if_kernel(i8*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
