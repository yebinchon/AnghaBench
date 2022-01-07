; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_mtsetblk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_mtsetblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.idal_buffer* }
%struct.idal_buffer = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"tape_std_mtsetblk(%d)\0A\00", align 1
@MAX_BLOCKSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid block size (%d > %d) given.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"new blocksize is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_mtsetblk(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idal_buffer*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @DBF_LH(i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %13 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  store i32 0, i32* %3, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %17 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.idal_buffer*, %struct.idal_buffer** %18, align 8
  %20 = icmp ne %struct.idal_buffer* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %23 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.idal_buffer*, %struct.idal_buffer** %24, align 8
  %26 = getelementptr inbounds %struct.idal_buffer, %struct.idal_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %76

31:                                               ; preds = %21, %15
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MAX_BLOCKSIZE, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MAX_BLOCKSIZE, align 4
  %38 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = call %struct.idal_buffer* @idal_buffer_alloc(i32 %42, i32 0)
  store %struct.idal_buffer* %43, %struct.idal_buffer** %6, align 8
  %44 = load %struct.idal_buffer*, %struct.idal_buffer** %6, align 8
  %45 = call i64 @IS_ERR(%struct.idal_buffer* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %76

50:                                               ; preds = %41
  %51 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %52 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.idal_buffer*, %struct.idal_buffer** %53, align 8
  %55 = icmp ne %struct.idal_buffer* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %58 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.idal_buffer*, %struct.idal_buffer** %59, align 8
  %61 = call i32 @idal_buffer_free(%struct.idal_buffer* %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.idal_buffer*, %struct.idal_buffer** %6, align 8
  %64 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %65 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store %struct.idal_buffer* %63, %struct.idal_buffer** %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %69 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %72 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @DBF_LH(i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %62, %47, %35, %30, %11
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @DBF_LH(i32, i8*, i32) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, i32, i32) #1

declare dso_local %struct.idal_buffer* @idal_buffer_alloc(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.idal_buffer*) #1

declare dso_local i32 @idal_buffer_free(%struct.idal_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
