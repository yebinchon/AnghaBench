; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_add_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_add_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*)* @device_add_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_add_attributes(%struct.device* %0, %struct.device_attribute* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_attribute*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %8 = icmp ne %struct.device_attribute* %7, null
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %30, %9
  %11 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %11, i64 %13
  %15 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @attr_name(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %10
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %21, i64 %23
  %25 = call i32 @device_create_file(%struct.device* %20, %struct.device_attribute* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %33

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %10

33:                                               ; preds = %28, %10
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %43, i64 %45
  %47 = call i32 @device_remove_file(%struct.device* %42, %struct.device_attribute* %46)
  br label %37

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %33
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @attr_name(i32) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.device_attribute*) #1

declare dso_local i32 @device_remove_file(%struct.device*, %struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
