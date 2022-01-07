; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_debug.c_brcms_debugfs_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_debug.c_brcms_debugfs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_pub = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@root_folder = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_debugfs_attach(%struct.brcms_pub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_pub*, align 8
  store %struct.brcms_pub* %0, %struct.brcms_pub** %3, align 8
  %4 = load i32, i32* @root_folder, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.brcms_pub*, %struct.brcms_pub** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @dev_name(i32* %17)
  %19 = load i32, i32* @root_folder, align 4
  %20 = call i32 @debugfs_create_dir(i32 %18, i32 %19)
  %21 = load %struct.brcms_pub*, %struct.brcms_pub** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.brcms_pub*, %struct.brcms_pub** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @PTR_RET(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %9, %6
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @PTR_RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
