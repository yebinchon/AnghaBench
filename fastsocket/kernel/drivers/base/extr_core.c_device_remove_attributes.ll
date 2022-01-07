; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_remove_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_remove_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device_attribute*)* @device_remove_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_remove_attributes(%struct.device* %0, %struct.device_attribute* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_attribute*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %4, align 8
  %6 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %7 = icmp ne %struct.device_attribute* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %25, %8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %10, i64 %12
  %14 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @attr_name(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %9
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %20, i64 %22
  %24 = call i32 @device_remove_file(%struct.device* %19, %struct.device_attribute* %23)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %9

28:                                               ; preds = %9
  br label %29

29:                                               ; preds = %28, %2
  ret void
}

declare dso_local i64 @attr_name(i32) #1

declare dso_local i32 @device_remove_file(%struct.device*, %struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
