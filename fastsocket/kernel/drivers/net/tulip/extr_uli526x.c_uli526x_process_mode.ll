; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_uli526x_process_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_uli526x_process_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uli526x_board_info = type { i32, i32, i32, i32, i32, i32 }

@CR6_FDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uli526x_board_info*)* @uli526x_process_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uli526x_process_mode(%struct.uli526x_board_info* %0) #0 {
  %2 = alloca %struct.uli526x_board_info*, align 8
  %3 = alloca i32, align 4
  store %struct.uli526x_board_info* %0, %struct.uli526x_board_info** %2, align 8
  %4 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %5 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @CR6_FDM, align 4
  %11 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %12 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @CR6_FDM, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %19 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %9
  %23 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %24 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %27 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @update_cr6(i32 %25, i32 %28)
  %30 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %31 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %70, label %35

35:                                               ; preds = %22
  %36 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %37 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %40 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %43 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @phy_read(i32 %38, i32 %41, i32 6, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  %50 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %51 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %57 [
    i32 128, label %53
    i32 129, label %54
    i32 130, label %55
    i32 131, label %56
  ]

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %57

54:                                               ; preds = %49
  store i32 256, i32* %3, align 4
  br label %57

55:                                               ; preds = %49
  store i32 8192, i32* %3, align 4
  br label %57

56:                                               ; preds = %49
  store i32 8448, i32* %3, align 4
  br label %57

57:                                               ; preds = %49, %56, %55, %54, %53
  %58 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %59 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %62 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %66 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @phy_write(i32 %60, i32 %63, i32 0, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %57, %35
  br label %70

70:                                               ; preds = %69, %22
  ret void
}

declare dso_local i32 @update_cr6(i32, i32) #1

declare dso_local i32 @phy_read(i32, i32, i32, i32) #1

declare dso_local i32 @phy_write(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
