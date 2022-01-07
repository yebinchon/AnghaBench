; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adb.c_do_adb_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adb.c_do_adb_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.adb_request = type { i32*, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@adb_handler_mutex = common dso_local global i32 0, align 4
@adb_handler = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adb_request*)* @do_adb_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_adb_query(%struct.adb_request* %0) #0 {
  %2 = alloca %struct.adb_request*, align 8
  %3 = alloca i32, align 4
  store %struct.adb_request* %0, %struct.adb_request** %2, align 8
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %7 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %54 [
    i32 128, label %11
  ]

11:                                               ; preds = %1
  %12 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %13 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %54

17:                                               ; preds = %11
  %18 = call i32 @mutex_lock(i32* @adb_handler_mutex)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %20 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %21 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %30 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adb_handler, align 8
  %34 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %35 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %44 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  %47 = call i32 @mutex_unlock(i32* @adb_handler_mutex)
  %48 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %49 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %48, i32 0, i32 2
  store i32 1, i32* %49, align 4
  %50 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %51 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %50, i32 0, i32 3
  store i32 2, i32* %51, align 8
  %52 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %53 = call i32 @adb_write_done(%struct.adb_request* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %1, %17, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @adb_write_done(%struct.adb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
