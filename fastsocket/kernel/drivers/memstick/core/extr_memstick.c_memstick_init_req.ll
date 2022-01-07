; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_memstick.c_memstick_init_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_memstick.c_memstick_init_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_request = type { i8, i64, i32, i32, i64, i32 }

@WRITE = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@MS_TPC_SET_CMD = common dso_local global i8 0, align 1
@MS_TPC_EX_SET_CMD = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memstick_init_req(%struct.memstick_request* %0, i8 zeroext %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.memstick_request*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.memstick_request* %0, %struct.memstick_request** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8, i8* %6, align 1
  %10 = load %struct.memstick_request*, %struct.memstick_request** %5, align 8
  %11 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %10, i32 0, i32 0
  store i8 %9, i8* %11, align 8
  %12 = load i8, i8* %6, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i64, i64* @WRITE, align 8
  %18 = load %struct.memstick_request*, %struct.memstick_request** %5, align 8
  %19 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  br label %24

20:                                               ; preds = %4
  %21 = load i64, i64* @READ, align 8
  %22 = load %struct.memstick_request*, %struct.memstick_request** %5, align 8
  %23 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i64 [ 4, %27 ], [ %29, %28 ]
  %32 = trunc i64 %31 to i32
  %33 = load %struct.memstick_request*, %struct.memstick_request** %5, align 8
  %34 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.memstick_request*, %struct.memstick_request** %5, align 8
  %36 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WRITE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load %struct.memstick_request*, %struct.memstick_request** %5, align 8
  %42 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.memstick_request*, %struct.memstick_request** %5, align 8
  %46 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i32 %43, i8* %44, i32 %47)
  br label %49

49:                                               ; preds = %40, %30
  %50 = load %struct.memstick_request*, %struct.memstick_request** %5, align 8
  %51 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @MS_TPC_SET_CMD, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* @MS_TPC_EX_SET_CMD, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57, %49
  %64 = load %struct.memstick_request*, %struct.memstick_request** %5, align 8
  %65 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %64, i32 0, i32 3
  store i32 1, i32* %65, align 4
  br label %69

66:                                               ; preds = %57
  %67 = load %struct.memstick_request*, %struct.memstick_request** %5, align 8
  %68 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %67, i32 0, i32 3
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
