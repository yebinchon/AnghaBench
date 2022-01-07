; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_array_state_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_array_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i64, i32, i32, i32, i32, i64 }

@inactive = common dso_local global i32 0, align 4
@readonly = common dso_local global i32 0, align 4
@read_auto = common dso_local global i32 0, align 4
@clean = common dso_local global i32 0, align 4
@MD_CHANGE_PENDING = common dso_local global i32 0, align 4
@write_pending = common dso_local global i32 0, align 4
@active_idle = common dso_local global i32 0, align 4
@active = common dso_local global i32 0, align 4
@clear = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@array_states = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*)* @array_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_state_show(%struct.mddev* %0, i8* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @inactive, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %2
  %12 = load %struct.mddev*, %struct.mddev** %3, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %46 [
    i32 1, label %15
    i32 2, label %17
    i32 0, label %19
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @readonly, align 4
  store i32 %16, i32* %5, align 4
  br label %46

17:                                               ; preds = %11
  %18 = load i32, i32* @read_auto, align 4
  store i32 %18, i32* %5, align 4
  br label %46

19:                                               ; preds = %11
  %20 = load %struct.mddev*, %struct.mddev** %3, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @clean, align 4
  store i32 %25, i32* %5, align 4
  br label %45

26:                                               ; preds = %19
  %27 = load i32, i32* @MD_CHANGE_PENDING, align 4
  %28 = load %struct.mddev*, %struct.mddev** %3, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 5
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @write_pending, align 4
  store i32 %33, i32* %5, align 4
  br label %44

34:                                               ; preds = %26
  %35 = load %struct.mddev*, %struct.mddev** %3, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @active_idle, align 4
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @active, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %24
  br label %46

46:                                               ; preds = %45, %11, %17, %15
  br label %67

47:                                               ; preds = %2
  %48 = load %struct.mddev*, %struct.mddev** %3, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 3
  %50 = call i64 @list_empty(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.mddev*, %struct.mddev** %3, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.mddev*, %struct.mddev** %3, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @clear, align 4
  store i32 %63, i32* %5, align 4
  br label %66

64:                                               ; preds = %57, %52, %47
  %65 = load i32, i32* @inactive, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i8*, i8** %4, align 8
  %69 = load i8**, i8*** @array_states, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %73)
  ret i32 %74
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
