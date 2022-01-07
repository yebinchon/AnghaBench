; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_console_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_console_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Input buffers in console output queue?\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Write to stdout gave %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @console_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @console_output(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %9 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %10 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.iovec, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %17 = call i32 @wait_for_vq_desc(%struct.virtqueue* %16, %struct.iovec* %15, i32* %4, i32* %5)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @iov_empty(%struct.iovec* %15, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i32, i32* @STDOUT_FILENO, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @writev(i32 %29, %struct.iovec* %15, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @iov_consume(%struct.iovec* %15, i32 %38, i32 %39)
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @add_used(%struct.virtqueue* %42, i32 %43, i32 0)
  %45 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wait_for_vq_desc(%struct.virtqueue*, %struct.iovec*, i32*, i32*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @iov_empty(%struct.iovec*, i32) #2

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #2

declare dso_local i32 @err(i32, i8*, i32) #2

declare dso_local i32 @iov_consume(%struct.iovec*, i32, i32) #2

declare dso_local i32 @add_used(%struct.virtqueue*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
