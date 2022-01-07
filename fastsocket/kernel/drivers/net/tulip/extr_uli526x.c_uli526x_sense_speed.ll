; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_uli526x_sense_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_uli526x_sense_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uli526x_board_info = type { i8*, i32, i32, i32 }

@ULI526X_10MHF = common dso_local global i8* null, align 8
@ULI526X_10MFD = common dso_local global i8* null, align 8
@ULI526X_100MHF = common dso_local global i8* null, align 8
@ULI526X_100MFD = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Link Failed :\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uli526x_board_info*)* @uli526x_sense_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uli526x_sense_speed(%struct.uli526x_board_info* %0) #0 {
  %2 = alloca %struct.uli526x_board_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uli526x_board_info* %0, %struct.uli526x_board_info** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %6 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %9 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %12 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @phy_read(i32 %7, i32 %10, i32 1, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %16 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %19 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %22 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @phy_read(i32 %17, i32 %20, i32 1, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 36
  %27 = icmp eq i32 %26, 36
  br i1 %27, label %28, label %81

28:                                               ; preds = %1
  %29 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %30 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %33 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %36 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @phy_read(i32 %31, i32 %34, i32 5, i32 %37)
  %39 = and i32 %38, 480
  %40 = shl i32 %39, 7
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 32768
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  store i32 32768, i32* %4, align 4
  br label %58

45:                                               ; preds = %28
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 16384
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 16384, i32* %4, align 4
  br label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, 8192
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 8192, i32* %4, align 4
  br label %56

55:                                               ; preds = %50
  store i32 4096, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %49
  br label %58

58:                                               ; preds = %57, %44
  %59 = load i32, i32* %4, align 4
  switch i32 %59, label %76 [
    i32 4096, label %60
    i32 8192, label %64
    i32 16384, label %68
    i32 32768, label %72
  ]

60:                                               ; preds = %58
  %61 = load i8*, i8** @ULI526X_10MHF, align 8
  %62 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %63 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %80

64:                                               ; preds = %58
  %65 = load i8*, i8** @ULI526X_10MFD, align 8
  %66 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %67 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %80

68:                                               ; preds = %58
  %69 = load i8*, i8** @ULI526X_100MHF, align 8
  %70 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %71 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %80

72:                                               ; preds = %58
  %73 = load i8*, i8** @ULI526X_100MFD, align 8
  %74 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %75 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %80

76:                                               ; preds = %58
  %77 = load i8*, i8** @ULI526X_10MHF, align 8
  %78 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %79 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %72, %68, %64, %60
  br label %87

81:                                               ; preds = %1
  %82 = load i8*, i8** @ULI526X_10MHF, align 8
  %83 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %84 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @ULI526X_DBUG(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %85)
  store i32 1, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %80
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @phy_read(i32, i32, i32, i32) #1

declare dso_local i32 @ULI526X_DBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
