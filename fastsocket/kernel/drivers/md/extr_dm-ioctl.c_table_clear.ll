; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_table_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_table_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i32 }
%struct.hash_cell = type { %struct.mapped_device*, i32* }
%struct.mapped_device = type { i32 }

@_hash_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"device doesn't appear to be in the dev hash table.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DM_INACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_ioctl*, i64)* @table_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_clear(%struct.dm_ioctl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hash_cell*, align 8
  %7 = alloca %struct.mapped_device*, align 8
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 @down_write(i32* @_hash_lock)
  %9 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %10 = call %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl* %9)
  store %struct.hash_cell* %10, %struct.hash_cell** %6, align 8
  %11 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %12 = icmp ne %struct.hash_cell* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = call i32 @DMDEBUG_LIMIT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @up_write(i32* @_hash_lock)
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %48

18:                                               ; preds = %2
  %19 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %20 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %25 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @dm_table_destroy(i32* %26)
  %28 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %29 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load i32, i32* @DM_INACTIVE_PRESENT_FLAG, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %34 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %38 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %37, i32 0, i32 0
  %39 = load %struct.mapped_device*, %struct.mapped_device** %38, align 8
  %40 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %41 = call i32 @__dev_status(%struct.mapped_device* %39, %struct.dm_ioctl* %40)
  %42 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %43 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %42, i32 0, i32 0
  %44 = load %struct.mapped_device*, %struct.mapped_device** %43, align 8
  store %struct.mapped_device* %44, %struct.mapped_device** %7, align 8
  %45 = call i32 @up_write(i32* @_hash_lock)
  %46 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %47 = call i32 @dm_put(%struct.mapped_device* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %30, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl*) #1

declare dso_local i32 @DMDEBUG_LIMIT(i8*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @dm_table_destroy(i32*) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
