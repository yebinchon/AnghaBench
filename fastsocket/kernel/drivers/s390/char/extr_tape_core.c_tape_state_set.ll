; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_state_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32, i8*, i32 }

@TS_NOT_OPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ts_set err: not oper\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ts. dev:\09%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"old ts:\09\0A\00", align 1
@TS_SIZE = common dso_local global i32 0, align 4
@tape_state_verbose = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"UNKNOWN TS\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"new ts:\09\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tape_state_set(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %7 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @TS_NOT_OPER, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %15 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %20 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TS_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %13
  %25 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %26 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i8**, i8*** @tape_state_verbose, align 8
  %31 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %32 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %30, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %5, align 8
  br label %38

37:                                               ; preds = %24, %13
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TS_SIZE, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = icmp uge i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i8**, i8*** @tape_state_verbose, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %5, align 8
  br label %55

54:                                               ; preds = %45, %38
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %60 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %62 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %61, i32 0, i32 2
  %63 = call i32 @wake_up(i32* %62)
  br label %64

64:                                               ; preds = %55, %11
  ret void
}

declare dso_local i32 @DBF_EVENT(i32, i8*, ...) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
