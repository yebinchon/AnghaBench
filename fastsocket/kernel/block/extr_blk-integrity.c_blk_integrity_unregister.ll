; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-integrity.c_blk_integrity_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-integrity.c_blk_integrity_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.blk_integrity*, %struct.TYPE_4__* }
%struct.blk_integrity = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BDI_CAP_STABLE_WRITES = common dso_local global i32 0, align 4
@KOBJ_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_integrity_unregister(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.blk_integrity*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %4 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %5 = icmp ne %struct.gendisk* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %8 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i32 0, i32 0
  %9 = load %struct.blk_integrity*, %struct.blk_integrity** %8, align 8
  %10 = icmp ne %struct.blk_integrity* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %37

12:                                               ; preds = %6
  %13 = load i32, i32* @BDI_CAP_STABLE_WRITES, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %16 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %14
  store i32 %21, i32* %19, align 4
  %22 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %23 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %22, i32 0, i32 0
  %24 = load %struct.blk_integrity*, %struct.blk_integrity** %23, align 8
  store %struct.blk_integrity* %24, %struct.blk_integrity** %3, align 8
  %25 = load %struct.blk_integrity*, %struct.blk_integrity** %3, align 8
  %26 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %25, i32 0, i32 0
  %27 = load i32, i32* @KOBJ_REMOVE, align 4
  %28 = call i32 @kobject_uevent(i32* %26, i32 %27)
  %29 = load %struct.blk_integrity*, %struct.blk_integrity** %3, align 8
  %30 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %29, i32 0, i32 0
  %31 = call i32 @kobject_del(i32* %30)
  %32 = load %struct.blk_integrity*, %struct.blk_integrity** %3, align 8
  %33 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %32, i32 0, i32 0
  %34 = call i32 @kobject_put(i32* %33)
  %35 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %36 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %35, i32 0, i32 0
  store %struct.blk_integrity* null, %struct.blk_integrity** %36, align 8
  br label %37

37:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
