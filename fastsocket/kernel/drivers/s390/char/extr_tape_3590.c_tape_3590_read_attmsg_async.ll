; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_read_attmsg_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_read_attmsg_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i8*, i64, i32 }

@TO_READ_ATTMSG = common dso_local global i32 0, align 4
@PREP_RD_SS_DATA = common dso_local global i8 0, align 1
@RD_ATTMSG = common dso_local global i8 0, align 1
@PERFORM_SS_FUNC = common dso_local global i32 0, align 4
@READ_SS_DATA = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*)* @tape_3590_read_attmsg_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_3590_read_attmsg_async(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  %3 = alloca %struct.tape_request*, align 8
  %4 = alloca i8*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %5 = call %struct.tape_request* @tape_alloc_request(i32 3, i32 4096)
  store %struct.tape_request* %5, %struct.tape_request** %3, align 8
  %6 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %7 = call i64 @IS_ERR(%struct.tape_request* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  %11 = load i32, i32* @TO_READ_ATTMSG, align 4
  %12 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %13 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %15 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  %17 = load i8, i8* @PREP_RD_SS_DATA, align 1
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %17, i8* %19, align 1
  %20 = load i8, i8* @RD_ATTMSG, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 6
  store i8 %20, i8* %22, align 1
  %23 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %24 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @PERFORM_SS_FUNC, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @tape_ccw_cc(i64 %25, i32 %26, i32 12, i8* %27)
  %29 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %30 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = load i32, i32* @READ_SS_DATA, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 12
  %36 = call i32 @tape_ccw_cc(i64 %32, i32 %33, i32 4084, i8* %35)
  %37 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %38 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 2
  %41 = load i32, i32* @NOP, align 4
  %42 = call i32 @tape_ccw_end(i64 %40, i32 %41, i32 0, i32* null)
  %43 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %44 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %45 = call i32 @tape_do_io_async_free(%struct.tape_device* %43, %struct.tape_request* %44)
  br label %46

46:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i8*) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_do_io_async_free(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
