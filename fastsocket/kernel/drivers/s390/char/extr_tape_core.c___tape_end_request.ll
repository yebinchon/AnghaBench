; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c___tape_end_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c___tape_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i32, i32, i32 (%struct.tape_request*, i32)*, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"__tape_end_request(%p, %p, %i)\0A\00", align 1
@TAPE_REQUEST_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*, %struct.tape_request*, i32)* @__tape_end_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tape_end_request(%struct.tape_device* %0, %struct.tape_request* %1, i32 %2) #0 {
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape_request*, align 8
  %6 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape_request* %1, %struct.tape_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %8 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @DBF_LH(i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.tape_device* %7, %struct.tape_request* %8, i32 %9)
  %11 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %12 = icmp ne %struct.tape_request* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %16 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @TAPE_REQUEST_DONE, align 4
  %18 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %19 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %21 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %20, i32 0, i32 3
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %24 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %23, i32 0, i32 2
  %25 = load i32 (%struct.tape_request*, i32)*, i32 (%struct.tape_request*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.tape_request*, i32)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %13
  %28 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %29 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %28, i32 0, i32 2
  %30 = load i32 (%struct.tape_request*, i32)*, i32 (%struct.tape_request*, i32)** %29, align 8
  %31 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %32 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %33 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %30(%struct.tape_request* %31, i32 %34)
  br label %36

36:                                               ; preds = %27, %13
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %39 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %38, i32 0, i32 0
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %44 = call i32 @__tape_start_next_request(%struct.tape_device* %43)
  br label %45

45:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @DBF_LH(i32, i8*, %struct.tape_device*, %struct.tape_request*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__tape_start_next_request(%struct.tape_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
