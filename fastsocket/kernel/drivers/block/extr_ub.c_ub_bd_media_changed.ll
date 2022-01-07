; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_bd_media_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_bd_media_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.ub_lun* }
%struct.ub_lun = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @ub_bd_media_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ub_bd_media_changed(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.ub_lun*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %5 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %6 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %5, i32 0, i32 0
  %7 = load %struct.ub_lun*, %struct.ub_lun** %6, align 8
  store %struct.ub_lun* %7, %struct.ub_lun** %4, align 8
  %8 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %9 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %15 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %18 = call i64 @ub_sync_tur(i32 %16, %struct.ub_lun* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %22 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  store i32 1, i32* %2, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.ub_lun*, %struct.ub_lun** %4, align 8
  %25 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %20, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @ub_sync_tur(i32, %struct.ub_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
