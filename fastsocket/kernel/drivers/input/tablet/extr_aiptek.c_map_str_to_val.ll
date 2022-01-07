; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_map_str_to_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_map_str_to_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiptek_map = type { i32, i64 }

@AIPTEK_INVALID_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aiptek_map*, i8*, i64)* @map_str_to_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_str_to_val(%struct.aiptek_map* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aiptek_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.aiptek_map*, align 8
  store %struct.aiptek_map* %0, %struct.aiptek_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = sub i64 %10, 1
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.aiptek_map*, %struct.aiptek_map** %5, align 8
  store %struct.aiptek_map* %20, %struct.aiptek_map** %8, align 8
  br label %21

21:                                               ; preds = %39, %19
  %22 = load %struct.aiptek_map*, %struct.aiptek_map** %8, align 8
  %23 = getelementptr inbounds %struct.aiptek_map, %struct.aiptek_map* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.aiptek_map*, %struct.aiptek_map** %8, align 8
  %29 = getelementptr inbounds %struct.aiptek_map, %struct.aiptek_map* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @strncmp(i8* %27, i64 %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load %struct.aiptek_map*, %struct.aiptek_map** %8, align 8
  %36 = getelementptr inbounds %struct.aiptek_map, %struct.aiptek_map* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.aiptek_map*, %struct.aiptek_map** %8, align 8
  %41 = getelementptr inbounds %struct.aiptek_map, %struct.aiptek_map* %40, i32 1
  store %struct.aiptek_map* %41, %struct.aiptek_map** %8, align 8
  br label %21

42:                                               ; preds = %21
  %43 = load i32, i32* @AIPTEK_INVALID_VALUE, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @strncmp(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
