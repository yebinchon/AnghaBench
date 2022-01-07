; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_set_media_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_set_media_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"e1000_set_media_type\00", align 1
@e1000_82543 = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i8* null, align 8
@e1000_media_type_fiber = common dso_local global i8* null, align 8
@e1000_media_type_copper = common dso_local global i8* null, align 8
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_TBIMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_set_media_type(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = call i32 @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @e1000_82543, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 1
  store i32 0, i32* %12, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %21 [
    i32 132, label %17
    i32 131, label %17
  ]

17:                                               ; preds = %13, %13
  %18 = load i8*, i8** @e1000_media_type_internal_serdes, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  br label %52

21:                                               ; preds = %13
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  switch i64 %24, label %33 [
    i64 130, label %25
    i64 129, label %25
    i64 128, label %29
  ]

25:                                               ; preds = %21, %21
  %26 = load i8*, i8** @e1000_media_type_fiber, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  br label %51

29:                                               ; preds = %21
  %30 = load i8*, i8** @e1000_media_type_copper, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  br label %51

33:                                               ; preds = %21
  %34 = load i32, i32* @STATUS, align 4
  %35 = call i32 @er32(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @E1000_STATUS_TBIMODE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i8*, i8** @e1000_media_type_fiber, align 8
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 1
  store i32 0, i32* %45, align 8
  br label %50

46:                                               ; preds = %33
  %47 = load i8*, i8** @e1000_media_type_copper, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %29, %25
  br label %52

52:                                               ; preds = %51, %17
  ret void
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
