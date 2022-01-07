; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_program_DM9802.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_program_DM9802.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmfe_board_info = type { i32, i32, i32, i32 }

@HPNA_NoiseFloor = common dso_local global i32 0, align 4
@DM9802_NOISE_FLOOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmfe_board_info*)* @dmfe_program_DM9802 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_program_DM9802(%struct.dmfe_board_info* %0) #0 {
  %2 = alloca %struct.dmfe_board_info*, align 8
  %3 = alloca i32, align 4
  store %struct.dmfe_board_info* %0, %struct.dmfe_board_info** %2, align 8
  %4 = load i32, i32* @HPNA_NoiseFloor, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @DM9802_NOISE_FLOOR, align 4
  store i32 %7, i32* @HPNA_NoiseFloor, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %10 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %13 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %16 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %19 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @phy_write(i32 %11, i32 %14, i32 16, i32 %17, i32 %20)
  %22 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %23 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %26 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %29 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @phy_read(i32 %24, i32 %27, i32 25, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 65280
  %34 = load i32, i32* @HPNA_NoiseFloor, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %3, align 4
  %36 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %37 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %40 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %44 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @phy_write(i32 %38, i32 %41, i32 25, i32 %42, i32 %45)
  ret void
}

declare dso_local i32 @phy_write(i32, i32, i32, i32, i32) #1

declare dso_local i32 @phy_read(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
