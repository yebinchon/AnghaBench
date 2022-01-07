; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_setup_md_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_setup_md_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }

@DM_TYPE_REQUEST_BASED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Cannot initialize queue for request-based mapped device\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_setup_md_queue(%struct.mapped_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mapped_device*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  %4 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %5 = call i64 @dm_get_md_type(%struct.mapped_device* %4)
  %6 = load i64, i64* @DM_TYPE_REQUEST_BASED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %10 = call i32 @dm_init_request_based_queue(%struct.mapped_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = call i32 @DMWARN(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %17

16:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @dm_get_md_type(%struct.mapped_device*) #1

declare dso_local i32 @dm_init_request_based_queue(%struct.mapped_device*) #1

declare dso_local i32 @DMWARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
