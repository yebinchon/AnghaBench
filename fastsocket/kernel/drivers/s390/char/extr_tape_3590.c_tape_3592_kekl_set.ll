; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3592_kekl_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3592_kekl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape390_kekl_pair = type { i32* }
%struct.tape_request = type { i32, i32, %struct.tape3592_kekl_set_order* }
%struct.tape3592_kekl_set_order = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"tape3592_kekl_set\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid kekls\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBADSLT = common dso_local global i32 0, align 4
@TO_KEKL_SET = common dso_local global i32 0, align 4
@PERF_SUBSYS_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape390_kekl_pair*)* @tape_3592_kekl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3592_kekl_set(%struct.tape_device* %0, %struct.tape390_kekl_pair* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape390_kekl_pair*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.tape3592_kekl_set_order*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape390_kekl_pair* %1, %struct.tape390_kekl_pair** %5, align 8
  %8 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %5, align 8
  %10 = call i64 @check_ext_kekl_pair(%struct.tape390_kekl_pair* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %18 = call i64 @tape_3590_mttell(%struct.tape_device* %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EBADSLT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %16
  %24 = call %struct.tape_request* @tape_alloc_request(i32 1, i32 24)
  store %struct.tape_request* %24, %struct.tape_request** %6, align 8
  %25 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %26 = call i64 @IS_ERR(%struct.tape_request* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %30 = call i32 @PTR_ERR(%struct.tape_request* %29)
  store i32 %30, i32* %3, align 4
  br label %74

31:                                               ; preds = %23
  %32 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %33 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %32, i32 0, i32 2
  %34 = load %struct.tape3592_kekl_set_order*, %struct.tape3592_kekl_set_order** %33, align 8
  store %struct.tape3592_kekl_set_order* %34, %struct.tape3592_kekl_set_order** %7, align 8
  %35 = load %struct.tape3592_kekl_set_order*, %struct.tape3592_kekl_set_order** %7, align 8
  %36 = call i32 @memset(%struct.tape3592_kekl_set_order* %35, i32 0, i32 24)
  %37 = load %struct.tape3592_kekl_set_order*, %struct.tape3592_kekl_set_order** %7, align 8
  %38 = getelementptr inbounds %struct.tape3592_kekl_set_order, %struct.tape3592_kekl_set_order* %37, i32 0, i32 0
  store i32 227, i32* %38, align 8
  %39 = load %struct.tape3592_kekl_set_order*, %struct.tape3592_kekl_set_order** %7, align 8
  %40 = getelementptr inbounds %struct.tape3592_kekl_set_order, %struct.tape3592_kekl_set_order* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 2, i32* %41, align 8
  %42 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %5, align 8
  %43 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load %struct.tape3592_kekl_set_order*, %struct.tape3592_kekl_set_order** %7, align 8
  %47 = getelementptr inbounds %struct.tape3592_kekl_set_order, %struct.tape3592_kekl_set_order* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = call i32 @ext_to_int_kekl(i32* %45, i32* %50)
  %52 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %5, align 8
  %53 = getelementptr inbounds %struct.tape390_kekl_pair, %struct.tape390_kekl_pair* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load %struct.tape3592_kekl_set_order*, %struct.tape3592_kekl_set_order** %7, align 8
  %57 = getelementptr inbounds %struct.tape3592_kekl_set_order, %struct.tape3592_kekl_set_order* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = call i32 @ext_to_int_kekl(i32* %55, i32* %60)
  %62 = load i32, i32* @TO_KEKL_SET, align 4
  %63 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %64 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %66 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PERF_SUBSYS_FUNC, align 4
  %69 = load %struct.tape3592_kekl_set_order*, %struct.tape3592_kekl_set_order** %7, align 8
  %70 = call i32 @tape_ccw_end(i32 %67, i32 %68, i32 24, %struct.tape3592_kekl_set_order* %69)
  %71 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %72 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %73 = call i32 @tape_do_io_free(%struct.tape_device* %71, %struct.tape_request* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %31, %28, %20, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local i64 @check_ext_kekl_pair(%struct.tape390_kekl_pair*) #1

declare dso_local i64 @tape_3590_mttell(%struct.tape_device*, i32) #1

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @memset(%struct.tape3592_kekl_set_order*, i32, i32) #1

declare dso_local i32 @ext_to_int_kekl(i32*, i32*) #1

declare dso_local i32 @tape_ccw_end(i32, i32, i32, %struct.tape3592_kekl_set_order*) #1

declare dso_local i32 @tape_do_io_free(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
