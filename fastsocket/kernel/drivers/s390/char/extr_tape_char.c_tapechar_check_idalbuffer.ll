; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_char.c_tapechar_check_idalbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_char.c_tapechar_check_idalbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.idal_buffer* }
%struct.idal_buffer = type { i64 }

@MAX_BLOCKSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid blocksize (%zd > %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, i64)* @tapechar_check_idalbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tapechar_check_idalbuffer(%struct.tape_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.idal_buffer*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %8 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.idal_buffer*, %struct.idal_buffer** %9, align 8
  %11 = icmp ne %struct.idal_buffer* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %14 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.idal_buffer*, %struct.idal_buffer** %15, align 8
  %17 = getelementptr inbounds %struct.idal_buffer, %struct.idal_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %58

22:                                               ; preds = %12, %2
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @MAX_BLOCKSIZE, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @MAX_BLOCKSIZE, align 8
  %29 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %22
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.idal_buffer* @idal_buffer_alloc(i64 %33, i32 0)
  store %struct.idal_buffer* %34, %struct.idal_buffer** %6, align 8
  %35 = load %struct.idal_buffer*, %struct.idal_buffer** %6, align 8
  %36 = call i64 @IS_ERR(%struct.idal_buffer* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %58

41:                                               ; preds = %32
  %42 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %43 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.idal_buffer*, %struct.idal_buffer** %44, align 8
  %46 = icmp ne %struct.idal_buffer* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %49 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.idal_buffer*, %struct.idal_buffer** %50, align 8
  %52 = call i32 @idal_buffer_free(%struct.idal_buffer* %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.idal_buffer*, %struct.idal_buffer** %6, align 8
  %55 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %56 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.idal_buffer* %54, %struct.idal_buffer** %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %38, %26, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @DBF_EVENT(i32, i8*, i64, i64) #1

declare dso_local %struct.idal_buffer* @idal_buffer_alloc(i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.idal_buffer*) #1

declare dso_local i32 @idal_buffer_free(%struct.idal_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
