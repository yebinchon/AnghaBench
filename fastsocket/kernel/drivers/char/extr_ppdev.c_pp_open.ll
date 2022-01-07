; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ppdev.c_pp_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ppdev.c_pp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.pp_struct* }
%struct.pp_struct = type { i32*, i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PARPORT_MAX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE1284_MODE_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_struct*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  store i32 %9, i32* %6, align 4
  %10 = call i32 (...) @cycle_kernel_lock()
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PARPORT_MAX, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pp_struct* @kmalloc(i32 40, i32 %18)
  store %struct.pp_struct* %19, %struct.pp_struct** %7, align 8
  %20 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %21 = icmp ne %struct.pp_struct* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %17
  %26 = load i32, i32* @IEEE1284_MODE_COMPAT, align 4
  %27 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %28 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %31 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @init_phase(i32 %33)
  %35 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %36 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %39 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %41 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %43 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %42, i32 0, i32 2
  %44 = call i32 @atomic_set(i32* %43, i32 0)
  %45 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %46 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %45, i32 0, i32 1
  %47 = call i32 @init_waitqueue_head(i32* %46)
  %48 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %49 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  store %struct.pp_struct* %50, %struct.pp_struct** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %25, %22, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @cycle_kernel_lock(...) #1

declare dso_local %struct.pp_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @init_phase(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
