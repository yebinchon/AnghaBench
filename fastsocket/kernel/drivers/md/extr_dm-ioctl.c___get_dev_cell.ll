; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c___get_dev_cell.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c___get_dev_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_cell = type { i32 }
%struct.mapped_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hash_cell* (i32)* @__get_dev_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hash_cell* @__get_dev_cell(i32 %0) #0 {
  %2 = alloca %struct.hash_cell*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.hash_cell*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @huge_decode_dev(i32 %6)
  %8 = call %struct.mapped_device* @dm_get_md(i32 %7)
  store %struct.mapped_device* %8, %struct.mapped_device** %4, align 8
  %9 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %10 = icmp ne %struct.mapped_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.hash_cell* null, %struct.hash_cell** %2, align 8
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %14 = call %struct.hash_cell* @dm_get_mdptr(%struct.mapped_device* %13)
  store %struct.hash_cell* %14, %struct.hash_cell** %5, align 8
  %15 = load %struct.hash_cell*, %struct.hash_cell** %5, align 8
  %16 = icmp ne %struct.hash_cell* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %19 = call i32 @dm_put(%struct.mapped_device* %18)
  store %struct.hash_cell* null, %struct.hash_cell** %2, align 8
  br label %22

20:                                               ; preds = %12
  %21 = load %struct.hash_cell*, %struct.hash_cell** %5, align 8
  store %struct.hash_cell* %21, %struct.hash_cell** %2, align 8
  br label %22

22:                                               ; preds = %20, %17, %11
  %23 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  ret %struct.hash_cell* %23
}

declare dso_local %struct.mapped_device* @dm_get_md(i32) #1

declare dso_local i32 @huge_decode_dev(i32) #1

declare dso_local %struct.hash_cell* @dm_get_mdptr(%struct.mapped_device*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
