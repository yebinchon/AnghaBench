; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_handle_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_handle_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i64, i64, i64, %struct.virtqueue*, %struct.device* }
%struct.virtqueue = type { %struct.TYPE_3__, %struct.virtqueue* }
%struct.TYPE_3__ = type { i64 }

@devices = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"Notification on running %s\00", align 1
@guest_limit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Bad NOTIFY %#lx\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @handle_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_output(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @devices, i32 0, i32 0), align 8
  store %struct.device* %5, %struct.device** %3, align 8
  br label %6

6:                                                ; preds = %54, %1
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %58

9:                                                ; preds = %6
  %10 = load i64, i64* %2, align 8
  %11 = call i64 @from_guest_phys(i64 %10)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i32 @update_device_status(%struct.device* %17)
  br label %76

19:                                               ; preds = %9
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 3
  %22 = load %struct.virtqueue*, %struct.virtqueue** %21, align 8
  store %struct.virtqueue* %22, %struct.virtqueue** %4, align 8
  br label %23

23:                                               ; preds = %49, %19
  %24 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %25 = icmp ne %struct.virtqueue* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = load i64, i64* %2, align 8
  %28 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %29 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 (...) @getpagesize()
  %33 = mul i64 %31, %32
  %34 = icmp ne i64 %27, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %49

36:                                               ; preds = %26
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = call i32 @start_device(%struct.device* %47)
  br label %76

49:                                               ; preds = %35
  %50 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %51 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %50, i32 0, i32 1
  %52 = load %struct.virtqueue*, %struct.virtqueue** %51, align 8
  store %struct.virtqueue* %52, %struct.virtqueue** %4, align 8
  br label %23

53:                                               ; preds = %23
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 4
  %57 = load %struct.device*, %struct.device** %56, align 8
  store %struct.device* %57, %struct.device** %3, align 8
  br label %6

58:                                               ; preds = %6
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* @guest_limit, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %2, align 8
  %64 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* @STDOUT_FILENO, align 4
  %67 = load i64, i64* %2, align 8
  %68 = call i64 @from_guest_phys(i64 %67)
  %69 = load i64, i64* %2, align 8
  %70 = call i64 @from_guest_phys(i64 %69)
  %71 = load i64, i64* @guest_limit, align 8
  %72 = load i64, i64* %2, align 8
  %73 = sub i64 %71, %72
  %74 = call i32 @strnlen(i64 %70, i64 %73)
  %75 = call i32 @write(i32 %66, i64 %68, i32 %74)
  br label %76

76:                                               ; preds = %65, %46, %16
  ret void
}

declare dso_local i64 @from_guest_phys(i64) #1

declare dso_local i32 @update_device_status(%struct.device*) #1

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @start_device(%struct.device*) #1

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @strnlen(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
