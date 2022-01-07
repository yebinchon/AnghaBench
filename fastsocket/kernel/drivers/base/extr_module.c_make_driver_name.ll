; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_module.c_make_driver_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_module.c_make_driver_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_driver*)* @make_driver_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_driver_name(%struct.device_driver* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device_driver*, align 8
  %4 = alloca i8*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %3, align 8
  %5 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %6 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %10 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add nsw i64 %8, %14
  %16 = add nsw i64 %15, 2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i64 %16, i32 %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %34

22:                                               ; preds = %1
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %25 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %30 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %31)
  %33 = load i8*, i8** %4, align 8
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %22, %21
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
