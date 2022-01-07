; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-gd.c_ide_gd_set_capacity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-gd.c_ide_gd_set_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.ide_disk_obj = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.ide_disk_ops* }
%struct.ide_disk_ops = type { i64 (%struct.TYPE_3__*, i64)* }

@ide_disk_obj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gendisk*, i64)* @ide_gd_set_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ide_gd_set_capacity(%struct.gendisk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ide_disk_obj*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.ide_disk_ops*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %10 = load i32, i32* @ide_disk_obj, align 4
  %11 = call %struct.ide_disk_obj* @ide_drv_g(%struct.gendisk* %9, i32 %10)
  store %struct.ide_disk_obj* %11, %struct.ide_disk_obj** %6, align 8
  %12 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %6, align 8
  %13 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.ide_disk_ops*, %struct.ide_disk_ops** %16, align 8
  store %struct.ide_disk_ops* %17, %struct.ide_disk_ops** %8, align 8
  %18 = load %struct.ide_disk_ops*, %struct.ide_disk_ops** %8, align 8
  %19 = getelementptr inbounds %struct.ide_disk_ops, %struct.ide_disk_ops* %18, i32 0, i32 0
  %20 = load i64 (%struct.TYPE_3__*, i64)*, i64 (%struct.TYPE_3__*, i64)** %19, align 8
  %21 = icmp ne i64 (%struct.TYPE_3__*, i64)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.ide_disk_ops*, %struct.ide_disk_ops** %8, align 8
  %24 = getelementptr inbounds %struct.ide_disk_ops, %struct.ide_disk_ops* %23, i32 0, i32 0
  %25 = load i64 (%struct.TYPE_3__*, i64)*, i64 (%struct.TYPE_3__*, i64)** %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 %25(%struct.TYPE_3__* %26, i64 %27)
  store i64 %28, i64* %3, align 8
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local %struct.ide_disk_obj* @ide_drv_g(%struct.gendisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
