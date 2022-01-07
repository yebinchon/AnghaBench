; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_read_block_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_read_block_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i64 }
%struct.tape_request = type { i64, i64, i32 }

@TO_RBI = common dso_local global i32 0, align 4
@MODE_SET_DB = common dso_local global i32 0, align 4
@READ_BLOCK_ID = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_read_block_id(%struct.tape_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call %struct.tape_request* @tape_alloc_request(i32 3, i32 8)
  store %struct.tape_request* %8, %struct.tape_request** %6, align 8
  %9 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %10 = call i64 @IS_ERR(%struct.tape_request* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.tape_request* %13)
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load i32, i32* @TO_RBI, align 4
  %17 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %18 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %20 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @MODE_SET_DB, align 4
  %23 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %24 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @tape_ccw_cc(i64 %21, i32 %22, i32 1, i64 %25)
  %27 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %28 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i32, i32* @READ_BLOCK_ID, align 4
  %32 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %33 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @tape_ccw_cc(i64 %30, i32 %31, i32 8, i64 %34)
  %36 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %37 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 2
  %40 = load i32, i32* @NOP, align 4
  %41 = call i32 @tape_ccw_end(i64 %39, i32 %40, i32 0, i32* null)
  %42 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %43 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %44 = call i32 @tape_do_io(%struct.tape_device* %42, %struct.tape_request* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %15
  %48 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %49 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %15
  %55 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %56 = call i32 @tape_free_request(%struct.tape_request* %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i64) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_do_io(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @tape_free_request(%struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
