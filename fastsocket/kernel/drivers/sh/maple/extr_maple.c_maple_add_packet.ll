; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_add_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_add_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maple_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@maple_wlist_lock = common dso_local global i32 0, align 4
@maple_waitq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maple_add_packet(%struct.maple_device* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.maple_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.maple_device* %0, %struct.maple_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %5
  %16 = load i64, i64* %9, align 8
  %17 = mul i64 %16, 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i64 %17, i32 %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  br label %65

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @cpu_to_be32(i32 %26)
  %28 = load i8*, i8** %12, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %5
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %34 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %39 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %37, i64* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ugt i64 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr i8, i8* %45, i64 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = sub i64 %48, 1
  %50 = mul i64 %49, 4
  %51 = call i32 @memcpy(i8* %46, i8* %47, i64 %50)
  br label %52

52:                                               ; preds = %44, %31
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %55 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i8* %53, i8** %57, align 8
  %58 = call i32 @mutex_lock(i32* @maple_wlist_lock)
  %59 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %60 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i32 @list_add_tail(i32* %62, i32* @maple_waitq)
  %64 = call i32 @mutex_unlock(i32* @maple_wlist_lock)
  br label %65

65:                                               ; preds = %52, %22
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
