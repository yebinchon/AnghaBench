; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_device_sysfs.c_edac_device_delete_instance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_device_sysfs.c_edac_device_delete_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.edac_device_instance* }
%struct.edac_device_instance = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*, i32)* @edac_device_delete_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_device_delete_instance(%struct.edac_device_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.edac_device_instance*, align 8
  %6 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.edac_device_instance*, %struct.edac_device_instance** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %9, i64 %11
  store %struct.edac_device_instance* %12, %struct.edac_device_instance** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %28, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.edac_device_instance*, %struct.edac_device_instance** %5, align 8
  %16 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %21 = load %struct.edac_device_instance*, %struct.edac_device_instance** %5, align 8
  %22 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @edac_device_delete_block(%struct.edac_device_ctl_info* %20, i32* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.edac_device_instance*, %struct.edac_device_instance** %5, align 8
  %33 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %32, i32 0, i32 1
  %34 = call i32 @kobject_put(i32* %33)
  ret void
}

declare dso_local i32 @edac_device_delete_block(%struct.edac_device_ctl_info*, i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
