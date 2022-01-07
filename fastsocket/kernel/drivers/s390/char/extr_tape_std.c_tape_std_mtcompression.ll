; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_mtcompression.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_mtcompression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32* }
%struct.tape_request = type { i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"xcom parm\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TO_NOP = common dso_local global i32 0, align 4
@MODE_SET_DB = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_mtcompression(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9, %2
  %13 = call i32 @DBF_EXCEPTION(i32 6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %9
  %17 = call %struct.tape_request* @tape_alloc_request(i32 2, i32 0)
  store %struct.tape_request* %17, %struct.tape_request** %6, align 8
  %18 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %19 = call i64 @IS_ERR(%struct.tape_request* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.tape_request* %22)
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %16
  %25 = load i32, i32* @TO_NOP, align 4
  %26 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %27 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %32 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, -9
  store i32 %35, i32* %33, align 4
  br label %42

36:                                               ; preds = %24
  %37 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %38 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, 8
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %44 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @MODE_SET_DB, align 4
  %47 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %48 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @tape_ccw_cc(i64 %45, i32 %46, i32 1, i32* %49)
  %51 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %52 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = load i32, i32* @NOP, align 4
  %56 = call i32 @tape_ccw_end(i64 %54, i32 %55, i32 0, i32* null)
  %57 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %58 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %59 = call i32 @tape_do_io_free(%struct.tape_device* %57, %struct.tape_request* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %42, %21, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @DBF_EXCEPTION(i32, i8*) #1

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_do_io_free(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
