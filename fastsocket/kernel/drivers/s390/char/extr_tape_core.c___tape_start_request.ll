; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c___tape_start_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c___tape_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32, i32 }
%struct.tape_request = type { i32, i32, i32, i32 }

@TS_INIT = common dso_local global i32 0, align 4
@TS_UNUSED = common dso_local global i32 0, align 4
@TS_BLKUSE = common dso_local global i32 0, align 4
@TS_IN_USE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Request %p added for execution.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Request %p add to queue.\0A\00", align 1
@TAPE_REQUEST_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*)* @__tape_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tape_start_request(%struct.tape_device* %0, %struct.tape_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape_request*, align 8
  %6 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape_request* %1, %struct.tape_request** %5, align 8
  %7 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %8 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %25 [
    i32 131, label %10
    i32 132, label %10
    i32 128, label %10
    i32 129, label %10
    i32 130, label %10
  ]

10:                                               ; preds = %2, %2, %2, %2, %2
  %11 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %12 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TS_INIT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %42

17:                                               ; preds = %10
  %18 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %19 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TS_UNUSED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %42

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %2, %24
  %26 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %27 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TS_BLKUSE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %42

32:                                               ; preds = %25
  %33 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %34 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TS_IN_USE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %79

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %31, %23, %16
  %43 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %44 = call i32 @tape_get_device_reference(%struct.tape_device* %43)
  %45 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %46 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %48 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %47, i32 0, i32 0
  %49 = call i64 @list_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %42
  %52 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %53 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %54 = call i32 @__tape_start_io(%struct.tape_device* %52, %struct.tape_request* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %79

59:                                               ; preds = %51
  %60 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %61 = call i32 @DBF_LH(i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.tape_request* %60)
  %62 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %63 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %62, i32 0, i32 1
  %64 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %65 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %64, i32 0, i32 0
  %66 = call i32 @list_add(i32* %63, i32* %65)
  br label %78

67:                                               ; preds = %42
  %68 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %69 = call i32 @DBF_LH(i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.tape_request* %68)
  %70 = load i32, i32* @TAPE_REQUEST_QUEUED, align 4
  %71 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %72 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %74 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %73, i32 0, i32 1
  %75 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %76 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %75, i32 0, i32 0
  %77 = call i32 @list_add_tail(i32* %74, i32* %76)
  br label %78

78:                                               ; preds = %67, %59
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %57, %38
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @tape_get_device_reference(%struct.tape_device*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @__tape_start_io(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @DBF_LH(i32, i8*, %struct.tape_request*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
