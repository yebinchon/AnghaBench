; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_radio_2057.c_r2057_upload_inittabs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_radio_2057.c_r2057_upload_inittabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i32 }

@r2057_rev4_init = common dso_local global i32** null, align 8
@r2057_rev5_init = common dso_local global i32** null, align 8
@r2057_rev5a_init = common dso_local global i32** null, align 8
@r2057_rev7_init = common dso_local global i32** null, align 8
@r2057_rev8_init = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"radio_write 0x%X \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r2057_upload_inittabs(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  store %struct.b43_phy* %8, %struct.b43_phy** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %10 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32**, i32*** @r2057_rev4_init, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  %17 = load i32**, i32*** @r2057_rev4_init, align 8
  %18 = call i32 @ARRAY_SIZE(i32** %17)
  store i32 %18, i32* %5, align 4
  br label %78

19:                                               ; preds = %1
  %20 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %21 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %26 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %77

29:                                               ; preds = %24, %19
  %30 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %31 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %36 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32**, i32*** @r2057_rev5_init, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %4, align 8
  %43 = load i32**, i32*** @r2057_rev5_init, align 8
  %44 = call i32 @ARRAY_SIZE(i32** %43)
  store i32 %44, i32* %5, align 4
  br label %51

45:                                               ; preds = %34
  %46 = load i32**, i32*** @r2057_rev5a_init, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %4, align 8
  %49 = load i32**, i32*** @r2057_rev5a_init, align 8
  %50 = call i32 @ARRAY_SIZE(i32** %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %39
  br label %76

52:                                               ; preds = %29
  %53 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %54 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 7
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32**, i32*** @r2057_rev7_init, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %4, align 8
  %61 = load i32**, i32*** @r2057_rev7_init, align 8
  %62 = call i32 @ARRAY_SIZE(i32** %61)
  store i32 %62, i32* %5, align 4
  br label %75

63:                                               ; preds = %52
  %64 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %65 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 9
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32**, i32*** @r2057_rev8_init, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %4, align 8
  %72 = load i32**, i32*** @r2057_rev8_init, align 8
  %73 = call i32 @ARRAY_SIZE(i32** %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %63
  br label %75

75:                                               ; preds = %74, %57
  br label %76

76:                                               ; preds = %75, %51
  br label %77

77:                                               ; preds = %76, %24
  br label %78

78:                                               ; preds = %77, %13
  %79 = load i32*, i32** %4, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %96, %81
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 10
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %4, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pr_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %4, align 8
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %82

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99, %78
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
