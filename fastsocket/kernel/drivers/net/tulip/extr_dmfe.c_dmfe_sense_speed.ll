; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_sense_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_sense_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmfe_board_info = type { i32, i64, i8*, i32, i32 }

@PCI_DM9132_ID = common dso_local global i64 0, align 8
@DMFE_10MHF = common dso_local global i8* null, align 8
@DMFE_10MFD = common dso_local global i8* null, align 8
@DMFE_100MHF = common dso_local global i8* null, align 8
@DMFE_100MFD = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Link Failed :\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmfe_board_info*)* @dmfe_sense_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmfe_sense_speed(%struct.dmfe_board_info* %0) #0 {
  %2 = alloca %struct.dmfe_board_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dmfe_board_info* %0, %struct.dmfe_board_info** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %6 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, -262145
  %9 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %10 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @update_cr6(i32 %8, i32 %11)
  %13 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %14 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %17 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %20 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @phy_read(i32 %15, i32 %18, i32 1, i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %24 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %27 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %30 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @phy_read(i32 %25, i32 %28, i32 1, i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 36
  %35 = icmp eq i32 %34, 36
  br i1 %35, label %36, label %89

36:                                               ; preds = %1
  %37 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %38 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCI_DM9132_ID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %44 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %47 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %50 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @phy_read(i32 %45, i32 %48, i32 7, i64 %51)
  %53 = and i32 %52, 61440
  store i32 %53, i32* %4, align 4
  br label %66

54:                                               ; preds = %36
  %55 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %56 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %59 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %62 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @phy_read(i32 %57, i32 %60, i32 17, i64 %63)
  %65 = and i32 %64, 61440
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %54, %42
  %67 = load i32, i32* %4, align 4
  switch i32 %67, label %84 [
    i32 4096, label %68
    i32 8192, label %72
    i32 16384, label %76
    i32 32768, label %80
  ]

68:                                               ; preds = %66
  %69 = load i8*, i8** @DMFE_10MHF, align 8
  %70 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %71 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  br label %88

72:                                               ; preds = %66
  %73 = load i8*, i8** @DMFE_10MFD, align 8
  %74 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %75 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %88

76:                                               ; preds = %66
  %77 = load i8*, i8** @DMFE_100MHF, align 8
  %78 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %79 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  br label %88

80:                                               ; preds = %66
  %81 = load i8*, i8** @DMFE_100MFD, align 8
  %82 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %83 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  br label %88

84:                                               ; preds = %66
  %85 = load i8*, i8** @DMFE_10MHF, align 8
  %86 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %87 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %80, %76, %72, %68
  br label %95

89:                                               ; preds = %1
  %90 = load i8*, i8** @DMFE_10MHF, align 8
  %91 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %92 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %93)
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %89, %88
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @update_cr6(i32, i32) #1

declare dso_local i32 @phy_read(i32, i32, i32, i64) #1

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
