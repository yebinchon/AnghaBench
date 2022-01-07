; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_edd.c_edd_has_default_cylinders.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_edd.c_edd_has_default_cylinders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edd_device = type { i32 }
%struct.edd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edd_device*)* @edd_has_default_cylinders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edd_has_default_cylinders(%struct.edd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edd_device*, align 8
  %4 = alloca %struct.edd_info*, align 8
  store %struct.edd_device* %0, %struct.edd_device** %3, align 8
  %5 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %6 = icmp ne %struct.edd_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %10 = call %struct.edd_info* @edd_dev_get_info(%struct.edd_device* %9)
  store %struct.edd_info* %10, %struct.edd_info** %4, align 8
  %11 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %12 = icmp ne %struct.edd_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %21

14:                                               ; preds = %8
  %15 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %16 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %14, %13, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.edd_info* @edd_dev_get_info(%struct.edd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
