; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_handle_unserviceable_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_handle_unserviceable_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*, %struct.bio*)* @handle_unserviceable_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_unserviceable_bio(%struct.pool* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.pool*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.pool* %0, %struct.pool** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.pool*, %struct.pool** %3, align 8
  %6 = call i64 @should_error_unserviceable_bio(%struct.pool* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = call i32 @bio_io_error(%struct.bio* %9)
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.bio*, %struct.bio** %4, align 8
  %13 = call i32 @retry_on_resume(%struct.bio* %12)
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

declare dso_local i64 @should_error_unserviceable_bio(%struct.pool*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @retry_on_resume(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
