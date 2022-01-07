; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_remote.c_print_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_remote.c_print_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_input = type { i64, i8, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@INPUT_TYPE_MOUSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"remote mouse movement: (x,y)=(%d,%d)%s%s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" -- buttons:\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REMOTE_BUTTON_LEFT = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"left \00", align 1
@REMOTE_BUTTON_MIDDLE = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"middle \00", align 1
@REMOTE_BUTTON_RIGHT = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"remote keypress (code, flag, down):%d (0x%x) [0x%x] [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote_input*)* @print_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_input(%struct.remote_input* %0) #0 {
  %2 = alloca %struct.remote_input*, align 8
  %3 = alloca i8, align 1
  store %struct.remote_input* %0, %struct.remote_input** %2, align 8
  %4 = load %struct.remote_input*, %struct.remote_input** %2, align 8
  %5 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @INPUT_TYPE_MOUSE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %53

9:                                                ; preds = %1
  %10 = load %struct.remote_input*, %struct.remote_input** %2, align 8
  %11 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  store i8 %12, i8* %3, align 1
  %13 = load %struct.remote_input*, %struct.remote_input** %2, align 8
  %14 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.remote_input*, %struct.remote_input** %2, align 8
  %19 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @REMOTE_BUTTON_LEFT, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i8, i8* %3, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @REMOTE_BUTTON_MIDDLE, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i8, i8* %3, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @REMOTE_BUTTON_RIGHT, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 (i8*, i32, i32, i8*, i8*, ...) @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22, i8* %27, i8* %35, i8* %43, i8* %51)
  br label %79

53:                                               ; preds = %1
  %54 = load %struct.remote_input*, %struct.remote_input** %2, align 8
  %55 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.remote_input*, %struct.remote_input** %2, align 8
  %60 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.remote_input*, %struct.remote_input** %2, align 8
  %65 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.remote_input*, %struct.remote_input** %2, align 8
  %72 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 (i8*, i32, i32, i8*, i8*, ...) @dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %58, i32 %63, i8* %70, i8* %77)
  br label %79

79:                                               ; preds = %53, %9
  ret void
}

declare dso_local i32 @dbg(i8*, i32, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
