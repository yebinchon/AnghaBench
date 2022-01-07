; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_start_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tape_request*)*, %struct.tape_request* (%struct.tape_device*, %struct.request*)* }
%struct.tape_request = type { i32, i8*, i32 }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"tapeblock_start_request(%p, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"TBLOCK: bread failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@__tapeblock_end_request = common dso_local global i32 0, align 4
@TAPEBLOCK_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.request*)* @tapeblock_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tapeblock_start_request(%struct.tape_device* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = call i32 @DBF_LH(i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.tape_device* %8, %struct.request* %9)
  %11 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %12 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.tape_request* (%struct.tape_device*, %struct.request*)*, %struct.tape_request* (%struct.tape_device*, %struct.request*)** %14, align 8
  %16 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %17 = load %struct.request*, %struct.request** %5, align 8
  %18 = call %struct.tape_request* %15(%struct.tape_device* %16, %struct.request* %17)
  store %struct.tape_request* %18, %struct.tape_request** %6, align 8
  %19 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %20 = call i64 @IS_ERR(%struct.tape_request* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = call i32 @DBF_EVENT(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.request*, %struct.request** %5, align 8
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @blk_end_request_all(%struct.request* %24, i32 %26)
  %28 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.tape_request* %28)
  store i32 %29, i32* %3, align 4
  br label %60

30:                                               ; preds = %2
  %31 = load i32, i32* @__tapeblock_end_request, align 4
  %32 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %33 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.request*, %struct.request** %5, align 8
  %35 = bitcast %struct.request* %34 to i8*
  %36 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %37 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @TAPEBLOCK_RETRIES, align 4
  %39 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %40 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %42 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %43 = call i32 @tape_do_io_async(%struct.tape_device* %41, %struct.tape_request* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %30
  %47 = load %struct.request*, %struct.request** %5, align 8
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @blk_end_request_all(%struct.request* %47, i32 %49)
  %51 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %52 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.tape_request*)*, i32 (%struct.tape_request*)** %54, align 8
  %56 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %57 = call i32 %55(%struct.tape_request* %56)
  br label %58

58:                                               ; preds = %46, %30
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @DBF_LH(i32, i8*, %struct.tape_device*, %struct.request*) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local i32 @blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_do_io_async(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
