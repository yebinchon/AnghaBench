; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_create_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_create_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@LHREQ_EVENTFD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Creating eventfd\00", align 1
@lguest_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Attaching eventfd\00", align 1
@do_thread = common dso_local global i32 0, align 4
@CLONE_VM = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Creating clone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @create_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_thread(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [3 x i64], align 16
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %5 = call i8* @malloc(i32 32768)
  store i8* %5, i8** %3, align 8
  %6 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %7 = load i64, i64* @LHREQ_EVENTFD, align 8
  store i64 %7, i64* %6, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 1
  %9 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %10 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 (...) @getpagesize()
  %14 = mul i64 %12, %13
  store i64 %14, i64* %8, align 8
  %15 = getelementptr inbounds i64, i64* %8, i64 1
  store i64 0, i64* %15, align 8
  %16 = call i64 @eventfd(i32 0, i32 0)
  %17 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %18 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %20 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %27 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 2
  store i64 %28, i64* %29, align 16
  %30 = load i32, i32* @lguest_fd, align 4
  %31 = bitcast [3 x i64]* %4 to i64**
  %32 = call i64 @write(i32 %30, i64** %31, i32 24)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i32, i32* @do_thread, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 32768
  %40 = load i32, i32* @CLONE_VM, align 4
  %41 = load i32, i32* @SIGCHLD, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %44 = call i64 @clone(i32 %37, i8* %39, i32 %42, %struct.virtqueue* %43)
  %45 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %46 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %48 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %36
  %54 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %55 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @close(i64 %56)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @getpagesize(...) #1

declare dso_local i64 @eventfd(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @write(i32, i64**, i32) #1

declare dso_local i64 @clone(i32, i8*, i32, %struct.virtqueue*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
