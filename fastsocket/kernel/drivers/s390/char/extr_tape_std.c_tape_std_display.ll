; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.display_struct = type { i8, i32, i32 }
%struct.tape_request = type { i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"TAPE: load display failed\0A\00", align 1
@TO_DIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"TAPE: display cntrl=%04x\0A\00", align 1
@LOAD_DISPLAY = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_display(%struct.tape_device* %0, %struct.display_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.display_struct*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.display_struct* %1, %struct.display_struct** %5, align 8
  %8 = call %struct.tape_request* @tape_alloc_request(i32 2, i32 17)
  store %struct.tape_request* %8, %struct.tape_request** %6, align 8
  %9 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %10 = call i64 @IS_ERR(%struct.tape_request* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.tape_request* %14)
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load i32, i32* @TO_DIS, align 4
  %18 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %19 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.display_struct*, %struct.display_struct** %5, align 8
  %21 = getelementptr inbounds %struct.display_struct, %struct.display_struct* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 4
  %23 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %24 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8 %22, i8* %26, align 1
  %27 = load %struct.display_struct*, %struct.display_struct** %5, align 8
  %28 = getelementptr inbounds %struct.display_struct, %struct.display_struct* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  %30 = zext i8 %29 to i32
  %31 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %33 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load %struct.display_struct*, %struct.display_struct** %5, align 8
  %38 = getelementptr inbounds %struct.display_struct, %struct.display_struct* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i8* %36, i32 %39, i32 8)
  %41 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %42 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = getelementptr inbounds i8, i8* %44, i64 9
  %46 = load %struct.display_struct*, %struct.display_struct** %5, align 8
  %47 = getelementptr inbounds %struct.display_struct, %struct.display_struct* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i8* %45, i32 %48, i32 8)
  %50 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %51 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i32 @ASCEBC(i8* %54, i32 16)
  %56 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %57 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @LOAD_DISPLAY, align 4
  %60 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %61 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @tape_ccw_cc(i64 %58, i32 %59, i32 17, i64 %62)
  %64 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %65 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  %68 = load i32, i32* @NOP, align 4
  %69 = call i32 @tape_ccw_end(i64 %67, i32 %68, i32 0, i32* null)
  %70 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %71 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %72 = call i32 @tape_do_io_interruptible(%struct.tape_device* %70, %struct.tape_request* %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %74 = call i32 @tape_free_request(%struct.tape_request* %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %16, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i64) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_do_io_interruptible(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @tape_free_request(%struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
