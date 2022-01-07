; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_stv0900_get_demod_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_stv0900_get_demod_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

@HEADER_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Demod State = %d\0A\00", align 1
@LOCK_DEFINITIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"DEMOD LOCK OK\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"DEMOD LOCK FAIL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stv0900_get_demod_lock(%struct.stv0900_internal* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.stv0900_internal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ]
  br i1 %18, label %19, label %42

19:                                               ; preds = %17
  %20 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %21 = load i32, i32* @HEADER_MODE, align 4
  %22 = call i8* @stv0900_get_bits(%struct.stv0900_internal* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %28 [
    i32 128, label %27
    i32 129, label %27
    i32 131, label %29
    i32 130, label %29
  ]

27:                                               ; preds = %19, %19
  br label %28

28:                                               ; preds = %19, %27
  store i64 0, i64* %8, align 8
  br label %34

29:                                               ; preds = %19, %19
  %30 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %31 = load i32, i32* @LOCK_DEFINITIF, align 4
  %32 = call i8* @stv0900_get_bits(%struct.stv0900_internal* %30, i32 %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @msleep(i32 10)
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 10
  store i64 %41, i64* %7, align 8
  br label %10

42:                                               ; preds = %17
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %49

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  ret i32 %51
}

declare dso_local i8* @stv0900_get_bits(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
