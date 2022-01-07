; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_edd.c_edd_populate_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_edd.c_edd_populate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edd_attribute = type { i32, i64 (%struct.edd_device*)* }
%struct.edd_device = type { i32 }

@edd_attrs = common dso_local global %struct.edd_attribute** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edd_device*)* @edd_populate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edd_populate_dir(%struct.edd_device* %0) #0 {
  %2 = alloca %struct.edd_device*, align 8
  %3 = alloca %struct.edd_attribute*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.edd_device* %0, %struct.edd_device** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load %struct.edd_attribute**, %struct.edd_attribute*** @edd_attrs, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.edd_attribute*, %struct.edd_attribute** %7, i64 %9
  %11 = load %struct.edd_attribute*, %struct.edd_attribute** %10, align 8
  store %struct.edd_attribute* %11, %struct.edd_attribute** %3, align 8
  %12 = icmp ne %struct.edd_attribute* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %6
  %18 = phi i1 [ false, %6 ], [ %16, %13 ]
  br i1 %18, label %19, label %46

19:                                               ; preds = %17
  %20 = load %struct.edd_attribute*, %struct.edd_attribute** %3, align 8
  %21 = getelementptr inbounds %struct.edd_attribute, %struct.edd_attribute* %20, i32 0, i32 1
  %22 = load i64 (%struct.edd_device*)*, i64 (%struct.edd_device*)** %21, align 8
  %23 = icmp ne i64 (%struct.edd_device*)* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.edd_attribute*, %struct.edd_attribute** %3, align 8
  %26 = getelementptr inbounds %struct.edd_attribute, %struct.edd_attribute* %25, i32 0, i32 1
  %27 = load i64 (%struct.edd_device*)*, i64 (%struct.edd_device*)** %26, align 8
  %28 = icmp ne i64 (%struct.edd_device*)* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.edd_attribute*, %struct.edd_attribute** %3, align 8
  %31 = getelementptr inbounds %struct.edd_attribute, %struct.edd_attribute* %30, i32 0, i32 1
  %32 = load i64 (%struct.edd_device*)*, i64 (%struct.edd_device*)** %31, align 8
  %33 = load %struct.edd_device*, %struct.edd_device** %2, align 8
  %34 = call i64 %32(%struct.edd_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29, %19
  %37 = load %struct.edd_device*, %struct.edd_device** %2, align 8
  %38 = getelementptr inbounds %struct.edd_device, %struct.edd_device* %37, i32 0, i32 0
  %39 = load %struct.edd_attribute*, %struct.edd_attribute** %3, align 8
  %40 = getelementptr inbounds %struct.edd_attribute, %struct.edd_attribute* %39, i32 0, i32 0
  %41 = call i32 @sysfs_create_file(i32* %38, i32* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %29, %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %6

46:                                               ; preds = %17
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load %struct.edd_device*, %struct.edd_device** %2, align 8
  %51 = call i32 @edd_create_symlink_to_pcidev(%struct.edd_device* %50)
  br label %52

52:                                               ; preds = %49, %46
  ret void
}

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i32 @edd_create_symlink_to_pcidev(%struct.edd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
