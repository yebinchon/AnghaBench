; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_process_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_process_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmfe_board_info = type { i32, i32, i32, i32, i32, i32, i64 }

@CR6_FDM = common dso_local global i32 0, align 4
@PCI_DM9102_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmfe_board_info*)* @dmfe_process_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_process_mode(%struct.dmfe_board_info* %0) #0 {
  %2 = alloca %struct.dmfe_board_info*, align 8
  %3 = alloca i32, align 4
  store %struct.dmfe_board_info* %0, %struct.dmfe_board_info** %2, align 8
  %4 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %5 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @CR6_FDM, align 4
  %11 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %12 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @CR6_FDM, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %19 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %9
  %23 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %24 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 16
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %30 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 262144
  store i32 %32, i32* %30, align 4
  br label %38

33:                                               ; preds = %22
  %34 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %35 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -262145
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %40 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %43 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @update_cr6(i32 %41, i32 %44)
  %46 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %47 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 24
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %110, label %51

51:                                               ; preds = %38
  %52 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %53 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %56 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %59 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @phy_read(i32 %54, i32 %57, i32 6, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %109, label %65

65:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  %66 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %67 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %73 [
    i32 128, label %69
    i32 129, label %70
    i32 130, label %71
    i32 131, label %72
  ]

69:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %73

70:                                               ; preds = %65
  store i32 256, i32* %3, align 4
  br label %73

71:                                               ; preds = %65
  store i32 8192, i32* %3, align 4
  br label %73

72:                                               ; preds = %65
  store i32 8448, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %72, %71, %70, %69
  %74 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %75 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %78 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %82 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @phy_write(i32 %76, i32 %79, i32 0, i32 %80, i32 %83)
  %85 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %86 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %73
  %90 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %91 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PCI_DM9102_ID, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 @mdelay(i32 20)
  br label %97

97:                                               ; preds = %95, %89, %73
  %98 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %99 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %102 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %106 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @phy_write(i32 %100, i32 %103, i32 0, i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %97, %51
  br label %110

110:                                              ; preds = %109, %38
  ret void
}

declare dso_local i32 @update_cr6(i32, i32) #1

declare dso_local i32 @phy_read(i32, i32, i32, i32) #1

declare dso_local i32 @phy_write(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
