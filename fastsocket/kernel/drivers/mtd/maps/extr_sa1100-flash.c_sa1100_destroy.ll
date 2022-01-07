; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_sa1100-flash.c_sa1100_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_sa1100-flash.c_sa1100_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_info = type { i64, i64, i32, %struct.TYPE_2__*, %struct.sa_info* }
%struct.TYPE_2__ = type { i64 }
%struct.flash_platform_data = type { i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa_info*, %struct.flash_platform_data*)* @sa1100_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_destroy(%struct.sa_info* %0, %struct.flash_platform_data* %1) #0 {
  %3 = alloca %struct.sa_info*, align 8
  %4 = alloca %struct.flash_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.sa_info* %0, %struct.sa_info** %3, align 8
  store %struct.flash_platform_data* %1, %struct.flash_platform_data** %4, align 8
  %6 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %7 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %12 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %17 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @del_mtd_device(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %23 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %22, i32 0, i32 4
  %24 = load %struct.sa_info*, %struct.sa_info** %23, align 8
  %25 = call i32 @kfree(%struct.sa_info* %24)
  %26 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %27 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %41, %21
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %35 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = call i32 @sa1100_destroy_subdev(%struct.TYPE_2__* %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %30

44:                                               ; preds = %30
  %45 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %46 = call i32 @kfree(%struct.sa_info* %45)
  %47 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %48 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %47, i32 0, i32 0
  %49 = load i32 (...)*, i32 (...)** %48, align 8
  %50 = icmp ne i32 (...)* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %53 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %52, i32 0, i32 0
  %54 = load i32 (...)*, i32 (...)** %53, align 8
  %55 = call i32 (...) %54()
  br label %56

56:                                               ; preds = %51, %44
  ret void
}

declare dso_local i32 @del_mtd_device(i64) #1

declare dso_local i32 @kfree(%struct.sa_info*) #1

declare dso_local i32 @sa1100_destroy_subdev(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
