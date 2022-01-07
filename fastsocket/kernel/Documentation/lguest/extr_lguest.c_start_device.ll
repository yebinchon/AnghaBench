; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_start_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_start_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32, %struct.virtqueue*, i32, i32 }
%struct.virtqueue = type { i64, %struct.virtqueue* }

@.str = private unnamed_addr constant [22 x i8] c"Device %s OK: offered\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c", accepted\00", align 1
@VIRTIO_F_NOTIFY_ON_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @start_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtqueue*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32* @get_feature_bits(%struct.device* %16)
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %9

26:                                               ; preds = %9
  %27 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %46, %26
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.device*, %struct.device** %2, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %2, align 8
  %36 = call i32* @get_feature_bits(%struct.device* %35)
  %37 = load %struct.device*, %struct.device** %2, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %36, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @verbose(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load %struct.device*, %struct.device** %2, align 8
  %51 = load i32, i32* @VIRTIO_F_NOTIFY_ON_EMPTY, align 4
  %52 = call i32 @accepted_feature(%struct.device* %50, i32 %51)
  %53 = load %struct.device*, %struct.device** %2, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.device*, %struct.device** %2, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 2
  %57 = load %struct.virtqueue*, %struct.virtqueue** %56, align 8
  store %struct.virtqueue* %57, %struct.virtqueue** %4, align 8
  br label %58

58:                                               ; preds = %70, %49
  %59 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %60 = icmp ne %struct.virtqueue* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %63 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %68 = call i32 @create_thread(%struct.virtqueue* %67)
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %72 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %71, i32 0, i32 1
  %73 = load %struct.virtqueue*, %struct.virtqueue** %72, align 8
  store %struct.virtqueue* %73, %struct.virtqueue** %4, align 8
  br label %58

74:                                               ; preds = %58
  %75 = load %struct.device*, %struct.device** %2, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  ret void
}

declare dso_local i32 @verbose(i8*, ...) #1

declare dso_local i32* @get_feature_bits(%struct.device*) #1

declare dso_local i32 @accepted_feature(%struct.device*, i32) #1

declare dso_local i32 @create_thread(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
