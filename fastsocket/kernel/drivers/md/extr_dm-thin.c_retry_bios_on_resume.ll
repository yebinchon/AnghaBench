; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_retry_bios_on_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_retry_bios_on_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.bio = type { i32 }
%struct.bio_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*, %struct.dm_bio_prison_cell*)* @retry_bios_on_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retry_bios_on_resume(%struct.pool* %0, %struct.dm_bio_prison_cell* %1) #0 {
  %3 = alloca %struct.pool*, align 8
  %4 = alloca %struct.dm_bio_prison_cell*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio_list, align 4
  store %struct.pool* %0, %struct.pool** %3, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %4, align 8
  %7 = load %struct.pool*, %struct.pool** %3, align 8
  %8 = call i64 @should_error_unserviceable_bio(%struct.pool* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.pool*, %struct.pool** %3, align 8
  %12 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %13 = call i32 @cell_error(%struct.pool* %11, %struct.dm_bio_prison_cell* %12)
  br label %38

14:                                               ; preds = %2
  %15 = call i32 @bio_list_init(%struct.bio_list* %6)
  %16 = load %struct.pool*, %struct.pool** %3, align 8
  %17 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %18 = call i32 @cell_release(%struct.pool* %16, %struct.dm_bio_prison_cell* %17, %struct.bio_list* %6)
  %19 = load %struct.pool*, %struct.pool** %3, align 8
  %20 = call i64 @should_error_unserviceable_bio(%struct.pool* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %26, %22
  %24 = call %struct.bio* @bio_list_pop(%struct.bio_list* %6)
  store %struct.bio* %24, %struct.bio** %5, align 8
  %25 = icmp ne %struct.bio* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = call i32 @bio_io_error(%struct.bio* %27)
  br label %23

29:                                               ; preds = %23
  br label %38

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %34, %30
  %32 = call %struct.bio* @bio_list_pop(%struct.bio_list* %6)
  store %struct.bio* %32, %struct.bio** %5, align 8
  %33 = icmp ne %struct.bio* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.bio*, %struct.bio** %5, align 8
  %36 = call i32 @retry_on_resume(%struct.bio* %35)
  br label %31

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %10, %37, %29
  ret void
}

declare dso_local i64 @should_error_unserviceable_bio(%struct.pool*) #1

declare dso_local i32 @cell_error(%struct.pool*, %struct.dm_bio_prison_cell*) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @cell_release(%struct.pool*, %struct.dm_bio_prison_cell*, %struct.bio_list*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @retry_on_resume(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
