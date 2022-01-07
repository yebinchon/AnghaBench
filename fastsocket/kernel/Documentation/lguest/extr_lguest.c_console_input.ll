; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_console_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_console_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.console_abort* }
%struct.console_abort = type { i32, %struct.timeval }
%struct.timeval = type { i64 }
%struct.iovec = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"Output buffers in console in queue?\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to get console input, ignoring console.\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @console_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @console_input(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.console_abort*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %12 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %13 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.console_abort*, %struct.console_abort** %15, align 8
  store %struct.console_abort* %16, %struct.console_abort** %7, align 8
  %17 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %18 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca %struct.iovec, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %25 = call i32 @wait_for_vq_desc(%struct.virtqueue* %24, %struct.iovec* %23, i32* %6, i32* %5)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %1
  %31 = load i32, i32* @STDIN_FILENO, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @readv(i32 %31, %struct.iovec* %23, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = call i32 @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %38, %36
  %39 = call i32 (...) @pause()
  br label %38

40:                                               ; preds = %30
  %41 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @add_used_and_trigger(%struct.virtqueue* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i64 0
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 16
  %51 = inttoptr i64 %50 to i8*
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 3
  br i1 %55, label %56, label %59

56:                                               ; preds = %47, %40
  %57 = load %struct.console_abort*, %struct.console_abort** %7, align 8
  %58 = getelementptr inbounds %struct.console_abort, %struct.console_abort* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  store i32 1, i32* %10, align 4
  br label %95

59:                                               ; preds = %47
  %60 = load %struct.console_abort*, %struct.console_abort** %7, align 8
  %61 = getelementptr inbounds %struct.console_abort, %struct.console_abort* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.console_abort*, %struct.console_abort** %7, align 8
  %65 = getelementptr inbounds %struct.console_abort, %struct.console_abort* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.console_abort*, %struct.console_abort** %7, align 8
  %70 = getelementptr inbounds %struct.console_abort, %struct.console_abort* %69, i32 0, i32 1
  %71 = call i32 @gettimeofday(%struct.timeval* %70, i32* null)
  br label %94

72:                                               ; preds = %59
  %73 = load %struct.console_abort*, %struct.console_abort** %7, align 8
  %74 = getelementptr inbounds %struct.console_abort, %struct.console_abort* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = call i32 @gettimeofday(%struct.timeval* %11, i32* null)
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.console_abort*, %struct.console_abort** %7, align 8
  %82 = getelementptr inbounds %struct.console_abort, %struct.console_abort* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  %86 = icmp sle i64 %80, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i32, i32* @SIGINT, align 4
  %89 = call i32 @kill(i32 0, i32 %88)
  br label %90

90:                                               ; preds = %87, %77
  %91 = load %struct.console_abort*, %struct.console_abort** %7, align 8
  %92 = getelementptr inbounds %struct.console_abort, %struct.console_abort* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %72
  br label %94

94:                                               ; preds = %93, %68
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %56
  %96 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %10, align 4
  switch i32 %97, label %99 [
    i32 0, label %98
    i32 1, label %98
  ]

98:                                               ; preds = %95, %95
  ret void

99:                                               ; preds = %95
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wait_for_vq_desc(%struct.virtqueue*, %struct.iovec*, i32*, i32*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @readv(i32, %struct.iovec*, i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @pause(...) #2

declare dso_local i32 @add_used_and_trigger(%struct.virtqueue*, i32, i32) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @kill(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
