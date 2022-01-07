; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, %struct.flchip* }
%struct.flchip = type { i64, i32, i32 }

@FL_PM_SUSPENDED = common dso_local global i64 0, align 8
@FL_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @cfi_staa_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_staa_resume(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.cfi_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flchip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.map_info*, %struct.map_info** %8, align 8
  store %struct.map_info* %9, %struct.map_info** %3, align 8
  %10 = load %struct.map_info*, %struct.map_info** %3, align 8
  %11 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 0
  %12 = load %struct.cfi_private*, %struct.cfi_private** %11, align 8
  store %struct.cfi_private* %12, %struct.cfi_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %50, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %16 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %21 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %20, i32 0, i32 1
  %22 = load %struct.flchip*, %struct.flchip** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.flchip, %struct.flchip* %22, i64 %24
  store %struct.flchip* %25, %struct.flchip** %6, align 8
  %26 = load %struct.flchip*, %struct.flchip** %6, align 8
  %27 = getelementptr inbounds %struct.flchip, %struct.flchip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @spin_lock_bh(i32 %28)
  %30 = load %struct.flchip*, %struct.flchip** %6, align 8
  %31 = getelementptr inbounds %struct.flchip, %struct.flchip* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FL_PM_SUSPENDED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %19
  %36 = load %struct.map_info*, %struct.map_info** %3, align 8
  %37 = call i32 @CMD(i32 255)
  %38 = call i32 @map_write(%struct.map_info* %36, i32 %37, i32 0)
  %39 = load i64, i64* @FL_READY, align 8
  %40 = load %struct.flchip*, %struct.flchip** %6, align 8
  %41 = getelementptr inbounds %struct.flchip, %struct.flchip* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.flchip*, %struct.flchip** %6, align 8
  %43 = getelementptr inbounds %struct.flchip, %struct.flchip* %42, i32 0, i32 2
  %44 = call i32 @wake_up(i32* %43)
  br label %45

45:                                               ; preds = %35, %19
  %46 = load %struct.flchip*, %struct.flchip** %6, align 8
  %47 = getelementptr inbounds %struct.flchip, %struct.flchip* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @spin_unlock_bh(i32 %48)
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %13

53:                                               ; preds = %13
  ret void
}

declare dso_local i32 @spin_lock_bh(i32) #1

declare dso_local i32 @map_write(%struct.map_info*, i32, i32) #1

declare dso_local i32 @CMD(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
