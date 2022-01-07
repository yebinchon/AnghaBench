; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.lpddr_private* }
%struct.lpddr_private = type { i32, %struct.flchip* }
%struct.flchip = type { i32 }

@FL_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i32*)* @lpddr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr_read(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.map_info*, align 8
  %13 = alloca %struct.lpddr_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.flchip*, align 8
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load %struct.map_info*, %struct.map_info** %18, align 8
  store %struct.map_info* %19, %struct.map_info** %12, align 8
  %20 = load %struct.map_info*, %struct.map_info** %12, align 8
  %21 = getelementptr inbounds %struct.map_info, %struct.map_info* %20, i32 0, i32 0
  %22 = load %struct.lpddr_private*, %struct.lpddr_private** %21, align 8
  store %struct.lpddr_private* %22, %struct.lpddr_private** %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.lpddr_private*, %struct.lpddr_private** %13, align 8
  %25 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %23, %26
  store i32 %27, i32* %14, align 4
  %28 = load %struct.lpddr_private*, %struct.lpddr_private** %13, align 8
  %29 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %28, i32 0, i32 1
  %30 = load %struct.flchip*, %struct.flchip** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.flchip, %struct.flchip* %30, i64 %32
  store %struct.flchip* %33, %struct.flchip** %15, align 8
  store i32 0, i32* %16, align 4
  %34 = load %struct.flchip*, %struct.flchip** %15, align 8
  %35 = getelementptr inbounds %struct.flchip, %struct.flchip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spin_lock(i32 %36)
  %38 = load %struct.map_info*, %struct.map_info** %12, align 8
  %39 = load %struct.flchip*, %struct.flchip** %15, align 8
  %40 = load i32, i32* @FL_READY, align 4
  %41 = call i32 @get_chip(%struct.map_info* %38, %struct.flchip* %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %5
  %45 = load %struct.flchip*, %struct.flchip** %15, align 8
  %46 = getelementptr inbounds %struct.flchip, %struct.flchip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @spin_unlock(i32 %47)
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %6, align 4
  br label %66

50:                                               ; preds = %5
  %51 = load %struct.map_info*, %struct.map_info** %12, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @map_copy_from(%struct.map_info* %51, i32* %52, i32 %53, i64 %54)
  %56 = load i64, i64* %9, align 8
  %57 = load i64*, i64** %10, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.map_info*, %struct.map_info** %12, align 8
  %59 = load %struct.flchip*, %struct.flchip** %15, align 8
  %60 = call i32 @put_chip(%struct.map_info* %58, %struct.flchip* %59)
  %61 = load %struct.flchip*, %struct.flchip** %15, align 8
  %62 = getelementptr inbounds %struct.flchip, %struct.flchip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @spin_unlock(i32 %63)
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %50, %44
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @get_chip(%struct.map_info*, %struct.flchip*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @map_copy_from(%struct.map_info*, i32*, i32, i64) #1

declare dso_local i32 @put_chip(%struct.map_info*, %struct.flchip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
