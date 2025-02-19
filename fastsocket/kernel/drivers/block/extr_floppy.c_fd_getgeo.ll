; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_fd_getgeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_fd_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.block_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.hd_geometry = type { i32, i32, i32 }
%struct.floppy_struct = type { i32, i32, i32 }

@drive_state = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @fd_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.hd_geometry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.floppy_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %5, align 8
  %10 = load %struct.block_device*, %struct.block_device** %4, align 8
  %11 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drive_state, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ITYPE(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @get_floppy_geometry(i32 %23, i32 %24, %struct.floppy_struct** %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %2
  %31 = load %struct.floppy_struct*, %struct.floppy_struct** %8, align 8
  %32 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %35 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.floppy_struct*, %struct.floppy_struct** %8, align 8
  %37 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %40 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.floppy_struct*, %struct.floppy_struct** %8, align 8
  %42 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %45 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %30, %28
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ITYPE(i32) #1

declare dso_local i32 @get_floppy_geometry(i32, i32, %struct.floppy_struct**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
