; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_ubi_wl_scrub_peb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_ubi_wl_scrub_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, %struct.ubi_wl_entry*, %struct.ubi_wl_entry*, %struct.ubi_wl_entry** }
%struct.ubi_wl_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"schedule PEB %d for scrubbing\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"the PEB %d is not in proper tree, retry\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"PEB %d not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_wl_scrub_peb(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_wl_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @dbg_msg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %42, %2
  %11 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %12 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 5
  %16 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %16, i64 %18
  %20 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %19, align 8
  store %struct.ubi_wl_entry* %20, %struct.ubi_wl_entry** %6, align 8
  %21 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %22 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %23 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %22, i32 0, i32 4
  %24 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %23, align 8
  %25 = icmp eq %struct.ubi_wl_entry* %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %10
  %27 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %28 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %29 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %28, i32 0, i32 1
  %30 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %10
  %33 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  store i32 0, i32* %3, align 4
  br label %94

36:                                               ; preds = %26
  %37 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %38 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %39 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %38, i32 0, i32 3
  %40 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %39, align 8
  %41 = icmp eq %struct.ubi_wl_entry* %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %44 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dbg_wl(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call i32 (...) @yield()
  br label %10

49:                                               ; preds = %36
  %50 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %51 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %52 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %51, i32 0, i32 2
  %53 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %57 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %58 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %57, i32 0, i32 2
  %59 = call i32 @paranoid_check_in_wl_tree(%struct.ubi_wl_entry* %56, i32* %58)
  %60 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %61 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %64 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %63, i32 0, i32 2
  %65 = call i32 @rb_erase(i32* %62, i32* %64)
  br label %84

66:                                               ; preds = %49
  %67 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %68 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %69 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @prot_queue_del(%struct.ubi_device* %67, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @ubi_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %78 = call i32 @ubi_ro_mode(%struct.ubi_device* %77)
  %79 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %80 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %94

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %55
  %85 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %86 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %87 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %86, i32 0, i32 1
  %88 = call i32 @wl_tree_add(%struct.ubi_wl_entry* %85, i32* %87)
  %89 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %90 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %93 = call i32 @ensure_wear_leveling(%struct.ubi_device* %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %84, %74, %32
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @dbg_msg(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @in_wl_tree(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dbg_wl(i8*, i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @paranoid_check_in_wl_tree(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @prot_queue_del(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_err(i8*, i32) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @wl_tree_add(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @ensure_wear_leveling(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
