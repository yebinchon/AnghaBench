; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_rng_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_rng_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.rng_info* }
%struct.rng_info = type { i32 }
%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Output buffers in rng?\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Read from /dev/random gave %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @rng_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rng_input(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rng_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %12 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.rng_info*, %struct.rng_info** %14, align 8
  store %struct.rng_info* %15, %struct.rng_info** %8, align 8
  %16 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %17 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca %struct.iovec, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %24 = call i32 @wait_for_vq_desc(%struct.virtqueue* %23, %struct.iovec* %22, i32* %6, i32* %5)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %1
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @iov_empty(%struct.iovec* %22, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.rng_info*, %struct.rng_info** %8, align 8
  %37 = getelementptr inbounds %struct.rng_info, %struct.rng_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @readv(i32 %38, %struct.iovec* %22, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @iov_consume(%struct.iovec* %22, i32 %47, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @add_used(%struct.virtqueue* %54, i32 %55, i32 %56)
  %58 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wait_for_vq_desc(%struct.virtqueue*, %struct.iovec*, i32*, i32*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @iov_empty(%struct.iovec*, i32) #2

declare dso_local i32 @readv(i32, %struct.iovec*, i32) #2

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
