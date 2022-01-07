; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.io = type { i32 }

@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @endio(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.io*, align 8
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.bio*, %struct.bio** %3, align 8
  %11 = call i64 @bio_data_dir(%struct.bio* %10)
  %12 = load i64, i64* @READ, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.bio*, %struct.bio** %3, align 8
  %16 = call i32 @zero_fill_bio(%struct.bio* %15)
  br label %17

17:                                               ; preds = %14, %9, %2
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = call i32 @retrieve_io_and_region_from_bio(%struct.bio* %18, %struct.io** %5, i32* %6)
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = call i32 @bio_put(%struct.bio* %20)
  %22 = load %struct.io*, %struct.io** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dec_count(%struct.io* %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @zero_fill_bio(%struct.bio*) #1

declare dso_local i32 @retrieve_io_and_region_from_bio(%struct.bio*, %struct.io**, i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @dec_count(%struct.io*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
