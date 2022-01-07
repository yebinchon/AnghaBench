; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_reset_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.virtqueue*, i64, i32 }
%struct.virtqueue = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, %struct.virtqueue* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"Resetting device %s\0A\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i8* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@LGUEST_VRING_ALIGN = common dso_local global i32 0, align 4
@kill_launcher = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i64 @get_feature_bits(%struct.device* %9)
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @memset(i64 %14, i32 0, i64 %17)
  %19 = load i32, i32* @SIGCHLD, align 4
  %20 = load i8*, i8** @SIG_IGN, align 8
  %21 = call i32 @signal(i32 %19, i8* %20)
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 1
  %24 = load %struct.virtqueue*, %struct.virtqueue** %23, align 8
  store %struct.virtqueue* %24, %struct.virtqueue** %3, align 8
  br label %25

25:                                               ; preds = %57, %1
  %26 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %27 = icmp ne %struct.virtqueue* %26, null
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %30 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, -1
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %35 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @SIGTERM, align 4
  %38 = call i32 @kill(i64 %36, i32 %37)
  %39 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %40 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @waitpid(i64 %41, i32* null, i32 0)
  %43 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %44 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %43, i32 0, i32 0
  store i64 -1, i64* %44, align 8
  br label %45

45:                                               ; preds = %33, %28
  %46 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %47 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %51 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @LGUEST_VRING_ALIGN, align 4
  %55 = call i64 @vring_size(i32 %53, i32 %54)
  %56 = call i32 @memset(i64 %49, i32 0, i64 %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %45
  %58 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %59 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %58, i32 0, i32 3
  %60 = load %struct.virtqueue*, %struct.virtqueue** %59, align 8
  store %struct.virtqueue* %60, %struct.virtqueue** %3, align 8
  br label %25

61:                                               ; preds = %25
  %62 = load %struct.device*, %struct.device** %2, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* @SIGCHLD, align 4
  %65 = load i64, i64* @kill_launcher, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @signal(i32 %64, i8* %66)
  ret void
}

declare dso_local i32 @verbose(i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i64 @get_feature_bits(%struct.device*) #1

declare dso_local i32 @signal(i32, i8*) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @vring_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
