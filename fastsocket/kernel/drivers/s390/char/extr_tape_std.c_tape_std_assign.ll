; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_assign.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.timer_list = type { i64, i64, i32 }
%struct.tape_request = type { i64, i32, i32 }

@TO_ASSIGN = common dso_local global i32 0, align 4
@ASSIGN = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@tape_std_assign_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%08x: assign failed - device might be busy\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%08x: Tape assigned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_assign(%struct.tape_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timer_list, align 8
  %6 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  %7 = call %struct.tape_request* @tape_alloc_request(i32 2, i32 11)
  store %struct.tape_request* %7, %struct.tape_request** %6, align 8
  %8 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %9 = call i64 @IS_ERR(%struct.tape_request* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %13 = call i32 @PTR_ERR(%struct.tape_request* %12)
  store i32 %13, i32* %2, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load i32, i32* @TO_ASSIGN, align 4
  %16 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %17 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %19 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @ASSIGN, align 4
  %22 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %23 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @tape_ccw_cc(i64 %20, i32 %21, i32 11, i32 %24)
  %26 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %27 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = load i32, i32* @NOP, align 4
  %31 = call i32 @tape_ccw_end(i64 %29, i32 %30, i32 0, i32* null)
  %32 = call i32 @init_timer_on_stack(%struct.timer_list* %5)
  %33 = load i32, i32* @tape_std_assign_timeout, align 4
  %34 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %5, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %36 = ptrtoint %struct.tape_request* %35 to i64
  %37 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %5, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %5, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = call i32 @add_timer(%struct.timer_list* %5)
  %45 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %46 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %47 = call i32 @tape_do_io_interruptible(%struct.tape_device* %45, %struct.tape_request* %46)
  store i32 %47, i32* %4, align 4
  %48 = call i32 @del_timer(%struct.timer_list* %5)
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %14
  %52 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %53 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %61

56:                                               ; preds = %14
  %57 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %58 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %63 = call i32 @tape_free_request(%struct.tape_request* %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i32) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i32*) #1

declare dso_local i32 @init_timer_on_stack(%struct.timer_list*) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @tape_do_io_interruptible(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @del_timer(%struct.timer_list*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local i32 @tape_free_request(%struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
