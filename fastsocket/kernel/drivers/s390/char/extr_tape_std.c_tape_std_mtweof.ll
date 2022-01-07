; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_mtweof.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_mtweof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i32, i32 }
%struct.ccw1 = type { i32 }

@TO_WTM = common dso_local global i32 0, align 4
@MODE_SET_DB = common dso_local global i32 0, align 4
@WRITETAPEMARK = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_mtweof(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.ccw1*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, 2
  %10 = call %struct.tape_request* @tape_alloc_request(i32 %9, i32 0)
  store %struct.tape_request* %10, %struct.tape_request** %6, align 8
  %11 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %12 = call i64 @IS_ERR(%struct.tape_request* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.tape_request* %15)
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load i32, i32* @TO_WTM, align 4
  %19 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %20 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %22 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MODE_SET_DB, align 4
  %25 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %26 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ccw1* @tape_ccw_cc(i32 %23, i32 %24, i32 1, i32 %27)
  store %struct.ccw1* %28, %struct.ccw1** %7, align 8
  %29 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %30 = load i32, i32* @WRITETAPEMARK, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.ccw1* @tape_ccw_repeat(%struct.ccw1* %29, i32 %30, i32 %31)
  store %struct.ccw1* %32, %struct.ccw1** %7, align 8
  %33 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %34 = load i32, i32* @NOP, align 4
  %35 = call %struct.ccw1* @tape_ccw_end(%struct.ccw1* %33, i32 %34, i32 0, i32* null)
  store %struct.ccw1* %35, %struct.ccw1** %7, align 8
  %36 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %37 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %38 = call i32 @tape_do_io_free(%struct.tape_device* %36, %struct.tape_request* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %17, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local %struct.ccw1* @tape_ccw_cc(i32, i32, i32, i32) #1

declare dso_local %struct.ccw1* @tape_ccw_repeat(%struct.ccw1*, i32, i32) #1

declare dso_local %struct.ccw1* @tape_ccw_end(%struct.ccw1*, i32, i32, i32*) #1

declare dso_local i32 @tape_do_io_free(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
