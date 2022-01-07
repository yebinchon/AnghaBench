; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_new_dev_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_new_dev_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lguest_device_desc = type { i32 }

@devices = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"Too many devices\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lguest_device_desc* (i32)* @new_dev_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lguest_device_desc* @new_dev_desc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lguest_device_desc, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.lguest_device_desc, %struct.lguest_device_desc* %3, i32 0, i32 0
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @devices, i32 0, i32 1), align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @devices, i32 0, i32 1), align 8
  %11 = call i8* @device_config(%struct.TYPE_6__* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @devices, i32 0, i32 1), align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %11, i64 %17
  store i8* %18, i8** %4, align 8
  br label %21

19:                                               ; preds = %1
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @devices, i32 0, i32 0), align 8
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %19, %9
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr i8, i8* %22, i64 4
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @devices, i32 0, i32 0), align 8
  %25 = call i32 (...) @getpagesize()
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %24, i64 %26
  %28 = icmp ugt i8* %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %21
  %32 = load i8*, i8** %4, align 8
  %33 = call %struct.lguest_device_desc* @memcpy(i8* %32, %struct.lguest_device_desc* %3, i32 4)
  ret %struct.lguest_device_desc* %33
}

declare dso_local i8* @device_config(%struct.TYPE_6__*) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local %struct.lguest_device_desc* @memcpy(i8*, %struct.lguest_device_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
