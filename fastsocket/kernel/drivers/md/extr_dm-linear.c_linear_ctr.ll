; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-linear.c_linear_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-linear.c_linear_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, %struct.linear_c*, i32 }
%struct.linear_c = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid argument count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"dm-linear: Cannot allocate linear context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"dm-linear: Invalid device sector\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"dm-linear: Device lookup failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @linear_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.linear_c*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.linear_c* @kmalloc(i32 16, i32 %19)
  store %struct.linear_c* %20, %struct.linear_c** %8, align 8
  %21 = load %struct.linear_c*, %struct.linear_c** %8, align 8
  %22 = icmp eq %struct.linear_c* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %69

28:                                               ; preds = %18
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* %9, i8* %10)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %36 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %36, align 8
  br label %64

37:                                               ; preds = %28
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.linear_c*, %struct.linear_c** %8, align 8
  %40 = getelementptr inbounds %struct.linear_c, %struct.linear_c* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %46 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dm_table_get_mode(i32 %47)
  %49 = load %struct.linear_c*, %struct.linear_c** %8, align 8
  %50 = getelementptr inbounds %struct.linear_c, %struct.linear_c* %49, i32 0, i32 1
  %51 = call i64 @dm_get_device(%struct.dm_target* %41, i8* %44, i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %55 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %55, align 8
  br label %64

56:                                               ; preds = %37
  %57 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %58 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  %59 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %60 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %59, i32 0, i32 2
  store i32 1, i32* %60, align 4
  %61 = load %struct.linear_c*, %struct.linear_c** %8, align 8
  %62 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %63 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %62, i32 0, i32 3
  store %struct.linear_c* %61, %struct.linear_c** %63, align 8
  store i32 0, i32* %4, align 4
  br label %69

64:                                               ; preds = %53, %34
  %65 = load %struct.linear_c*, %struct.linear_c** %8, align 8
  %66 = call i32 @kfree(%struct.linear_c* %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %56, %23, %13
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.linear_c* @kmalloc(i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i64 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @kfree(%struct.linear_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
