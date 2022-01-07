; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_ubd_get_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_ubd_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubd = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@MAX_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ubd_get_config : device number out of range\00", align 1
@ubd_devs = common dso_local global %struct.ubd* null, align 8
@ubd_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8**)* @ubd_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubd_get_config(i8* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.ubd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = call i32 @parse_unit(i8** %6)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @MAX_DEV, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %4
  %21 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  store i32 -1, i32* %5, align 4
  br label %72

22:                                               ; preds = %17
  %23 = load %struct.ubd*, %struct.ubd** @ubd_devs, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ubd, %struct.ubd* %23, i64 %25
  store %struct.ubd* %26, %struct.ubd** %10, align 8
  %27 = call i32 @mutex_lock(i32* @ubd_lock)
  %28 = load %struct.ubd*, %struct.ubd** %10, align 8
  %29 = getelementptr inbounds %struct.ubd, %struct.ubd* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @CONFIG_CHUNK(i8* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %69

37:                                               ; preds = %22
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.ubd*, %struct.ubd** %10, align 8
  %42 = getelementptr inbounds %struct.ubd, %struct.ubd* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @CONFIG_CHUNK(i8* %38, i32 %39, i32 %40, i8* %43, i32 0)
  %45 = load %struct.ubd*, %struct.ubd** %10, align 8
  %46 = getelementptr inbounds %struct.ubd, %struct.ubd* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %37
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @CONFIG_CHUNK(i8* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.ubd*, %struct.ubd** %10, align 8
  %59 = getelementptr inbounds %struct.ubd, %struct.ubd* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @CONFIG_CHUNK(i8* %55, i32 %56, i32 %57, i8* %61, i32 1)
  br label %68

63:                                               ; preds = %37
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @CONFIG_CHUNK(i8* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %68

68:                                               ; preds = %63, %50
  br label %69

69:                                               ; preds = %68, %32
  %70 = call i32 @mutex_unlock(i32* @ubd_lock)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %20
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @parse_unit(i8**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @CONFIG_CHUNK(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
