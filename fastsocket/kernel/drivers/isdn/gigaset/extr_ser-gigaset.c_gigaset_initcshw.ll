; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ser-gigaset.c_gigaset_initcshw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ser-gigaset.c_gigaset_initcshw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@GIGASET_MODULENAME = common dso_local global i32 0, align 4
@gigaset_device_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"error %d registering platform device\0A\00", align 1
@gigaset_modem_fill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*)* @gigaset_initcshw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_initcshw(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_8__* @kzalloc(i32 4, i32 %5)
  %7 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %9, align 8
  %10 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %70

13:                                               ; preds = %1
  %14 = load i32, i32* @GIGASET_MODULENAME, align 4
  %15 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %16 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32 %14, i32* %20, align 4
  %21 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %22 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %25 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 %23, i32* %29, align 4
  %30 = load i32, i32* @gigaset_device_release, align 4
  %31 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %32 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %30, i32* %37, align 4
  %38 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %39 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i32 @platform_device_register(%struct.TYPE_7__* %42)
  store i32 %43, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %13
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %49 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 @kfree(%struct.TYPE_8__* %51)
  %53 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %54 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %55, align 8
  store i32 0, i32* %2, align 4
  br label %70

56:                                               ; preds = %13
  %57 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %58 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %64 = call i32 @dev_set_drvdata(%struct.TYPE_9__* %62, %struct.cardstate* %63)
  %65 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %66 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %65, i32 0, i32 0
  %67 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %68 = ptrtoint %struct.cardstate* %67 to i64
  %69 = call i32 @tasklet_init(i32* %66, i32* @gigaset_modem_fill, i64 %68)
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %56, %45, %11
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_9__*, %struct.cardstate*) #1

declare dso_local i32 @tasklet_init(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
