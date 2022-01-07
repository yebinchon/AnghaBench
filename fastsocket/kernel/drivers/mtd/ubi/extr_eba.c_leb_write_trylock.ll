; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_eba.c_leb_write_trylock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_eba.c_leb_write_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }
%struct.ubi_ltree_entry = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32, i32)* @leb_write_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leb_write_trylock(%struct.ubi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_ltree_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.ubi_ltree_entry* @ltree_add_entry(%struct.ubi_device* %9, i32 %10, i32 %11)
  store %struct.ubi_ltree_entry* %12, %struct.ubi_ltree_entry** %8, align 8
  %13 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %14 = call i64 @IS_ERR(%struct.ubi_ltree_entry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.ubi_ltree_entry* %17)
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %21 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %20, i32 0, i32 2
  %22 = call i64 @down_write_trylock(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %55

25:                                               ; preds = %19
  %26 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %30 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %34 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ubi_assert(i32 %37)
  %39 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %40 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %25
  %44 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %45 = getelementptr inbounds %struct.ubi_ltree_entry, %struct.ubi_ltree_entry* %44, i32 0, i32 1
  %46 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %47 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %46, i32 0, i32 1
  %48 = call i32 @rb_erase(i32* %45, i32* %47)
  %49 = load %struct.ubi_ltree_entry*, %struct.ubi_ltree_entry** %8, align 8
  %50 = call i32 @kfree(%struct.ubi_ltree_entry* %49)
  br label %51

51:                                               ; preds = %43, %25
  %52 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %53 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %24, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.ubi_ltree_entry* @ltree_add_entry(%struct.ubi_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubi_ltree_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.ubi_ltree_entry*) #1

declare dso_local i64 @down_write_trylock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ubi_ltree_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
