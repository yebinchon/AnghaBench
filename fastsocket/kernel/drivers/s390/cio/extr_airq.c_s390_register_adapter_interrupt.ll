; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_airq.c_s390_register_adapter_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_airq.c_s390_register_adapter_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.airq_t = type { i8*, i32 }

@MAX_ISC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rairq:%d\00", align 1
@indicators = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @s390_register_adapter_interrupt(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.airq_t*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @MAX_ISC, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i8* @ERR_PTR(i32 %16)
  store i8* %17, i8** %4, align 8
  br label %58

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.airq_t* @kmalloc(i32 16, i32 %19)
  store %struct.airq_t* %20, %struct.airq_t** %8, align 8
  %21 = load %struct.airq_t*, %struct.airq_t** %8, align 8
  %22 = icmp ne %struct.airq_t* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.airq_t*, %struct.airq_t** %8, align 8
  %29 = getelementptr inbounds %struct.airq_t, %struct.airq_t* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.airq_t*, %struct.airq_t** %8, align 8
  %32 = getelementptr inbounds %struct.airq_t, %struct.airq_t* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.airq_t*, %struct.airq_t** %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @register_airq(%struct.airq_t* %33, i64 %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %26, %23
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @snprintf(i8* %37, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %41 = call i32 @CIO_TRACE_EVENT(i32 4, i8* %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.airq_t*, %struct.airq_t** %8, align 8
  %46 = call i32 @kfree(%struct.airq_t* %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @ERR_PTR(i32 %47)
  store i8* %48, i8** %4, align 8
  br label %58

49:                                               ; preds = %36
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @indicators, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %49, %44, %14
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.airq_t* @kmalloc(i32, i32) #1

declare dso_local i32 @register_airq(%struct.airq_t*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @kfree(%struct.airq_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
