; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_error_thin_retry_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_error_thin_retry_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i32, %struct.bio_list }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*)* @error_thin_retry_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_thin_retry_list(%struct.thin_c* %0) #0 {
  %2 = alloca %struct.thin_c*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bio_list, align 4
  store %struct.thin_c* %0, %struct.thin_c** %2, align 8
  %6 = call i32 @bio_list_init(%struct.bio_list* %5)
  %7 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %8 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %12 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %11, i32 0, i32 1
  %13 = call i32 @bio_list_merge(%struct.bio_list* %5, %struct.bio_list* %12)
  %14 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %15 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %14, i32 0, i32 1
  %16 = call i32 @bio_list_init(%struct.bio_list* %15)
  %17 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %18 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %21

21:                                               ; preds = %24, %1
  %22 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %22, %struct.bio** %3, align 8
  %23 = icmp ne %struct.bio* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.bio*, %struct.bio** %3, align 8
  %26 = call i32 @bio_io_error(%struct.bio* %25)
  br label %21

27:                                               ; preds = %21
  ret void
}

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
