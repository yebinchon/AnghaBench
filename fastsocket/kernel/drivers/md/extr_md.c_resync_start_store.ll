; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_resync_start_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_resync_start_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i64, i32 }

@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@MaxSector = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MD_CHANGE_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @resync_start_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @resync_start_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @simple_strtoull(i8* %10, i8** %8, i32 10)
  store i64 %11, i64* %9, align 8
  %12 = load %struct.mddev*, %struct.mddev** %5, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %18 = load %struct.mddev*, %struct.mddev** %5, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 3
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* @EBUSY, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %64

25:                                               ; preds = %16, %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @cmd_match(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @MaxSector, align 8
  store i64 %30, i64* %9, align 8
  br label %49

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %31
  %46 = load i64, i64* @EINVAL, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %4, align 8
  br label %64

48:                                               ; preds = %40, %35
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.mddev*, %struct.mddev** %5, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.mddev*, %struct.mddev** %5, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i32, i32* @MD_CHANGE_CLEAN, align 4
  %59 = load %struct.mddev*, %struct.mddev** %5, align 8
  %60 = getelementptr inbounds %struct.mddev, %struct.mddev* %59, i32 0, i32 1
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %49
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %45, %22
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local i64 @simple_strtoull(i8*, i8**, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @cmd_match(i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
