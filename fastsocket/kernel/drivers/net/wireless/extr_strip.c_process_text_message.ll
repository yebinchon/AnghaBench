; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_process_text_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_process_text_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strip = type { i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ate0q1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ERR_\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"No initial *\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strip*)* @process_text_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_text_message(%struct.strip* %0) #0 {
  %2 = alloca %struct.strip*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.strip* %0, %struct.strip** %2, align 8
  %5 = load %struct.strip*, %struct.strip** %2, align 8
  %6 = getelementptr inbounds %struct.strip, %struct.strip* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load %struct.strip*, %struct.strip** %2, align 8
  %9 = getelementptr inbounds %struct.strip, %struct.strip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.strip*, %struct.strip** %2, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @get_radio_address(%struct.strip* %14, i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %52

19:                                               ; preds = %13, %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @text_equal(i32* %20, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %52

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @text_equal(i32* %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %52

31:                                               ; preds = %25
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @has_prefix(i32* %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %52

37:                                               ; preds = %31
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @has_prefix(i32* %38, i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.strip*, %struct.strip** %2, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 4
  %48 = call i32 @RecvErr_Message(%struct.strip* %43, i32* null, i32* %45, i32 %47)
  br label %52

49:                                               ; preds = %37
  %50 = load %struct.strip*, %struct.strip** %2, align 8
  %51 = call i32 @RecvErr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.strip* %50)
  br label %52

52:                                               ; preds = %49, %42, %36, %30, %24, %18
  ret void
}

declare dso_local i64 @get_radio_address(%struct.strip*, i32*) #1

declare dso_local i64 @text_equal(i32*, i32, i8*) #1

declare dso_local i64 @has_prefix(i32*, i32, i8*) #1

declare dso_local i32 @RecvErr_Message(%struct.strip*, i32*, i32*, i32) #1

declare dso_local i32 @RecvErr(i8*, %struct.strip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
