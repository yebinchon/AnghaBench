; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_mtseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_mtseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i64 }
%struct.tape_request = type { i64, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"xsee id: %x\0A\00", align 1
@TO_LBL = common dso_local global i32 0, align 4
@MODE_SET_DB = common dso_local global i32 0, align 4
@LOCATE = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, i32)* @tape_3590_mtseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_mtseek(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call %struct.tape_request* @tape_alloc_request(i32 3, i32 4)
  store %struct.tape_request* %9, %struct.tape_request** %6, align 8
  %10 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %11 = call i64 @IS_ERR(%struct.tape_request* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.tape_request* %14)
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* @TO_LBL, align 4
  %18 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %19 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %21 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @MODE_SET_DB, align 4
  %24 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %25 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @tape_ccw_cc(i64 %22, i32 %23, i32 1, i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %30 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32 %28, i32* %32, align 4
  %33 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %34 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load i32, i32* @LOCATE, align 4
  %38 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %39 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @tape_ccw_cc(i64 %36, i32 %37, i32 4, i64 %40)
  %42 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %43 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 2
  %46 = load i32, i32* @NOP, align 4
  %47 = call i32 @tape_ccw_end(i64 %45, i32 %46, i32 0, i32* null)
  %48 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %49 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %50 = call i32 @tape_do_io_free(%struct.tape_device* %48, %struct.tape_request* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %16, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i64) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_do_io_free(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
