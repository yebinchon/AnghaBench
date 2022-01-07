; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_key_at_index_read_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_key_at_index_read_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@applesmc_lock = common dso_local global i32 0, align 4
@key_at_index = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @applesmc_key_at_index_read_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_key_at_index_read_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call i32 @mutex_lock(i32* @applesmc_lock)
  %12 = load i32, i32* @key_at_index, align 4
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %14 = call i32 @applesmc_get_key_at_index(i32 %12, i8* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %3
  %22 = call i32 @mutex_unlock(i32* @applesmc_lock)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %49

25:                                               ; preds = %17
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %27 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %28 = call i32 @applesmc_get_key_type(i8* %26, i8* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = call i32 @mutex_unlock(i32* @applesmc_lock)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %25
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @applesmc_read_key(i8* %35, i8* %36, i8 signext %38)
  store i32 %39, i32* %10, align 4
  %40 = call i32 @mutex_unlock(i32* @applesmc_lock)
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %43, %31, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @applesmc_get_key_at_index(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @applesmc_get_key_type(i8*, i8*) #1

declare dso_local i32 @applesmc_read_key(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
