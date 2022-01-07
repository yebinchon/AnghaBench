; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pt.c_pt_ready_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pt.c_pt_ready_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32 }

@ATAPI_TEST_READY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [16 x i8] c"test unit ready\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_unit*, i32)* @pt_ready_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_ready_wait(%struct.pt_unit* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [12 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_unit* %0, %struct.pt_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %10 = load i8, i8* @ATAPI_TEST_READY, align 1
  store i8 %10, i8* %9, align 1
  %11 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %49, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load %struct.pt_unit*, %struct.pt_unit** %4, align 8
  %28 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.pt_unit*, %struct.pt_unit** %4, align 8
  %30 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %31 = call i32 @DBMSG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @pt_atapi(%struct.pt_unit* %29, i8* %30, i32 0, i32* null, i32 %31)
  %33 = load %struct.pt_unit*, %struct.pt_unit** %4, align 8
  %34 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %55

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 1026
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 6
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %43, %39
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @HZ, align 4
  %53 = call i32 @pt_sleep(i32 %52)
  br label %22

54:                                               ; preds = %22
  store i32 32, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %47, %38
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @pt_atapi(%struct.pt_unit*, i8*, i32, i32*, i32) #1

declare dso_local i32 @DBMSG(i8*) #1

declare dso_local i32 @pt_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
