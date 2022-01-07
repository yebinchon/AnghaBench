; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_HPNA_remote_cmd_chk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_HPNA_remote_cmd_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmfe_board_info = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmfe_board_info*)* @dmfe_HPNA_remote_cmd_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_HPNA_remote_cmd_chk(%struct.dmfe_board_info* %0) #0 {
  %2 = alloca %struct.dmfe_board_info*, align 8
  %3 = alloca i32, align 4
  store %struct.dmfe_board_info* %0, %struct.dmfe_board_info** %2, align 8
  %4 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %5 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %8 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %11 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @phy_read(i32 %6, i32 %9, i32 17, i32 %12)
  %14 = and i32 %13, 96
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %20 [
    i32 0, label %16
    i32 32, label %17
    i32 64, label %18
    i32 96, label %19
  ]

16:                                               ; preds = %1
  store i32 2560, i32* %3, align 4
  br label %20

17:                                               ; preds = %1
  store i32 2304, i32* %3, align 4
  br label %20

18:                                               ; preds = %1
  store i32 1536, i32* %3, align 4
  br label %20

19:                                               ; preds = %1
  store i32 1280, i32* %3, align 4
  br label %20

20:                                               ; preds = %1, %19, %18, %17, %16
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %23 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 3840
  %26 = icmp ne i32 %21, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %29 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %32 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %35 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %38 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @phy_write(i32 %30, i32 %33, i32 16, i32 %36, i32 %39)
  %41 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %42 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %41, i32 0, i32 1
  store i32 8, i32* %42, align 4
  br label %46

43:                                               ; preds = %20
  %44 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %45 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %44, i32 0, i32 1
  store i32 600, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %27
  ret void
}

declare dso_local i32 @phy_read(i32, i32, i32, i32) #1

declare dso_local i32 @phy_write(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
