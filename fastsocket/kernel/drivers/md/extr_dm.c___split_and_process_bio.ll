; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___split_and_process_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___split_and_process_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { %struct.bio }
%struct.bio = type { i32, i32, i32 }
%struct.clone_info = type { i32, %struct.TYPE_4__*, i64, %struct.bio*, %struct.mapped_device*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.mapped_device*, %struct.bio*, i32, i32 }

@BIO_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*, %struct.bio*)* @__split_and_process_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__split_and_process_bio(%struct.mapped_device* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.clone_info, align 8
  %6 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %8 = call i32 @dm_get_live_table(%struct.mapped_device* %7)
  %9 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = call i32 @bio_io_error(%struct.bio* %18)
  br label %96

20:                                               ; preds = %2
  %21 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %22 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 4
  store %struct.mapped_device* %21, %struct.mapped_device** %22, align 8
  %23 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %24 = call %struct.TYPE_4__* @alloc_io(%struct.mapped_device* %23)
  %25 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 1
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %25, align 8
  %26 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = call i32 @atomic_set(i32* %31, i32 1)
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store %struct.bio* %33, %struct.bio** %36, align 8
  %37 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %38 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store %struct.mapped_device* %37, %struct.mapped_device** %40, align 8
  %41 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.bio*, %struct.bio** %4, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 6
  store i32 %47, i32* %48, align 4
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 5
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @start_io_acct(%struct.TYPE_4__* %54)
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BIO_FLUSH, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %20
  %63 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 4
  %64 = load %struct.mapped_device*, %struct.mapped_device** %63, align 8
  %65 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 3
  store %struct.bio* %65, %struct.bio** %66, align 8
  %67 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = call i32 @__clone_and_map_empty_flush(%struct.clone_info* %5)
  store i32 %68, i32* %6, align 4
  br label %88

69:                                               ; preds = %20
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 3
  store %struct.bio* %70, %struct.bio** %71, align 8
  %72 = load %struct.bio*, %struct.bio** %4, align 8
  %73 = call i64 @bio_sectors(%struct.bio* %72)
  %74 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 2
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %85, %69
  %76 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i1 [ false, %75 ], [ %82, %79 ]
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  %86 = call i32 @__clone_and_map(%struct.clone_info* %5)
  store i32 %86, i32* %6, align 4
  br label %75

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %62
  %89 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @dec_pending(%struct.TYPE_4__* %90, i32 %91)
  %93 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dm_table_put(i32 %94)
  br label %96

96:                                               ; preds = %88, %17
  ret void
}

declare dso_local i32 @dm_get_live_table(%struct.mapped_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local %struct.TYPE_4__* @alloc_io(%struct.mapped_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @start_io_acct(%struct.TYPE_4__*) #1

declare dso_local i32 @__clone_and_map_empty_flush(%struct.clone_info*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @__clone_and_map(%struct.clone_info*) #1

declare dso_local i32 @dec_pending(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dm_table_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
