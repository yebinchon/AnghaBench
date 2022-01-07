; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_fcx.c_tcw_set_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_fcx.c_tcw_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcw = type { i32, i8*, i64, i8*, i64 }

@TCW_FLAGS_INPUT_TIDA = common dso_local global i32 0, align 4
@TCW_FLAGS_OUTPUT_TIDA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcw_set_data(%struct.tcw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tcw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tcw* %0, %struct.tcw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tcw*, %struct.tcw** %4, align 8
  %8 = getelementptr inbounds %struct.tcw, %struct.tcw* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.tcw*, %struct.tcw** %4, align 8
  %16 = getelementptr inbounds %struct.tcw, %struct.tcw* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i32, i32* @TCW_FLAGS_INPUT_TIDA, align 4
  %21 = load %struct.tcw*, %struct.tcw** %4, align 8
  %22 = getelementptr inbounds %struct.tcw, %struct.tcw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %19, %11
  br label %47

26:                                               ; preds = %3
  %27 = load %struct.tcw*, %struct.tcw** %4, align 8
  %28 = getelementptr inbounds %struct.tcw, %struct.tcw* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.tcw*, %struct.tcw** %4, align 8
  %36 = getelementptr inbounds %struct.tcw, %struct.tcw* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i32, i32* @TCW_FLAGS_OUTPUT_TIDA, align 4
  %41 = load %struct.tcw*, %struct.tcw** %4, align 8
  %42 = getelementptr inbounds %struct.tcw, %struct.tcw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %31
  br label %46

46:                                               ; preds = %45, %26
  br label %47

47:                                               ; preds = %46, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
