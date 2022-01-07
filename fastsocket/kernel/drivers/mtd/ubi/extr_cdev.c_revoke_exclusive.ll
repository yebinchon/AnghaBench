; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_revoke_exclusive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_revoke_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UBI_EXCLUSIVE = common dso_local global i32 0, align 4
@UBI_READONLY = common dso_local global i32 0, align 4
@UBI_READWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_volume_desc*, i32)* @revoke_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revoke_exclusive(%struct.ubi_volume_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_volume_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_volume*, align 8
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  %7 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %6, i32 0, i32 1
  %8 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  store %struct.ubi_volume* %8, %struct.ubi_volume** %5, align 8
  %9 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %15 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %20 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i1 [ false, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @ubi_assert(i32 %25)
  %27 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %28 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  %33 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @UBI_EXCLUSIVE, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %31, %23
  %38 = phi i1 [ false, %23 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ubi_assert(i32 %39)
  %41 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %42 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @UBI_READONLY, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %48 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %60

49:                                               ; preds = %37
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @UBI_READWRITE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %55 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  br label %59

56:                                               ; preds = %49
  %57 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %58 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %62 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  %68 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
