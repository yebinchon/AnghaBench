; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_unlock_rdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_unlock_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { %struct.block_device* }
%struct.block_device = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md_rdev*)* @unlock_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_rdev(%struct.md_rdev* %0) #0 {
  %2 = alloca %struct.md_rdev*, align 8
  %3 = alloca %struct.block_device*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %2, align 8
  %4 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %5 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %4, i32 0, i32 0
  %6 = load %struct.block_device*, %struct.block_device** %5, align 8
  store %struct.block_device* %6, %struct.block_device** %3, align 8
  %7 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %8 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %7, i32 0, i32 0
  store %struct.block_device* null, %struct.block_device** %8, align 8
  %9 = load %struct.block_device*, %struct.block_device** %3, align 8
  %10 = icmp ne %struct.block_device* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @MD_BUG()
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.block_device*, %struct.block_device** %3, align 8
  %15 = call i32 @bd_release(%struct.block_device* %14)
  %16 = load %struct.block_device*, %struct.block_device** %3, align 8
  %17 = load i32, i32* @FMODE_READ, align 4
  %18 = load i32, i32* @FMODE_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @blkdev_put(%struct.block_device* %16, i32 %19)
  ret void
}

declare dso_local i32 @MD_BUG(...) #1

declare dso_local i32 @bd_release(%struct.block_device*) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
