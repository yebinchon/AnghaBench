; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_max_sync_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_max_sync_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"max\00", align 1
@MaxSector = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @max_sync_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max_sync_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i64, i64* @MaxSector, align 8
  %15 = load %struct.mddev*, %struct.mddev** %5, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %74

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @kstrtoull(i8* %18, i32 10, i64* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %79

24:                                               ; preds = %17
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.mddev*, %struct.mddev** %5, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %4, align 8
  br label %79

33:                                               ; preds = %24
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.mddev*, %struct.mddev** %5, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.mddev*, %struct.mddev** %5, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %46 = load %struct.mddev*, %struct.mddev** %5, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 5
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i64, i64* @EBUSY, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %4, align 8
  br label %79

53:                                               ; preds = %44, %39, %33
  %54 = load %struct.mddev*, %struct.mddev** %5, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.mddev*, %struct.mddev** %5, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @sector_div(i64 %60, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i64, i64* @EINVAL, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %4, align 8
  br label %79

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.mddev*, %struct.mddev** %5, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %13
  %75 = load %struct.mddev*, %struct.mddev** %5, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 3
  %77 = call i32 @wake_up(i32* %76)
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %74, %66, %50, %30, %21
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @sector_div(i64, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
