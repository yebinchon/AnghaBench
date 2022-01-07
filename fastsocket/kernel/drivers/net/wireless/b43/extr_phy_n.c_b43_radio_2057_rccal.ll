; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_radio_2057_rccal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_radio_2057_rccal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32 }

@R2057_RCCAL_MASTER = common dso_local global i32 0, align 4
@R2057_RCCAL_TRC0 = common dso_local global i32 0, align 4
@R2057_RCCAL_X1 = common dso_local global i32 0, align 4
@R2057_RCCAL_START_R1_Q1_P1 = common dso_local global i32 0, align 4
@R2057_RCCAL_DONE_OSCCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Radio 0x2057 rccal timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Radio 0x2057 rcal timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_radio_2057_rccal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_radio_2057_rccal(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  store %struct.b43_phy* %8, %struct.b43_phy** %4, align 8
  %9 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %10 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %20 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 6
  br label %23

23:                                               ; preds = %18, %13, %1
  %24 = phi i1 [ true, %13 ], [ true, %1 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %31 = call i32 @b43_radio_write(%struct.b43_wldev* %29, i32 %30, i32 97)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %34 = call i32 @b43_radio_write(%struct.b43_wldev* %32, i32 %33, i32 192)
  br label %41

35:                                               ; preds = %23
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = call i32 @b43_radio_write(%struct.b43_wldev* %36, i32 430, i32 97)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %40 = call i32 @b43_radio_write(%struct.b43_wldev* %38, i32 %39, i32 225)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = load i32, i32* @R2057_RCCAL_X1, align 4
  %44 = call i32 @b43_radio_write(%struct.b43_wldev* %42, i32 %43, i32 110)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %46 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %47 = call i32 @b43_radio_write(%struct.b43_wldev* %45, i32 %46, i32 85)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %50 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %48, i32 %49, i32 1, i32 1, i32 500, i32 5000000)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %41
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @b43dbg(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %41
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %59 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %60 = call i32 @b43_radio_write(%struct.b43_wldev* %58, i32 %59, i32 21)
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %65 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %66 = call i32 @b43_radio_write(%struct.b43_wldev* %64, i32 %65, i32 105)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %69 = call i32 @b43_radio_write(%struct.b43_wldev* %67, i32 %68, i32 176)
  br label %76

70:                                               ; preds = %57
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %72 = call i32 @b43_radio_write(%struct.b43_wldev* %71, i32 430, i32 105)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %75 = call i32 @b43_radio_write(%struct.b43_wldev* %73, i32 %74, i32 213)
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %78 = load i32, i32* @R2057_RCCAL_X1, align 4
  %79 = call i32 @b43_radio_write(%struct.b43_wldev* %77, i32 %78, i32 110)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %81 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %82 = call i32 @b43_radio_write(%struct.b43_wldev* %80, i32 %81, i32 85)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %84 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %85 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %83, i32 %84, i32 1, i32 1, i32 500, i32 5000000)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %76
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %89 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @b43dbg(i32 %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %76
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %94 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %95 = call i32 @b43_radio_write(%struct.b43_wldev* %93, i32 %94, i32 21)
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %100 = load i32, i32* @R2057_RCCAL_MASTER, align 4
  %101 = call i32 @b43_radio_write(%struct.b43_wldev* %99, i32 %100, i32 115)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %103 = load i32, i32* @R2057_RCCAL_X1, align 4
  %104 = call i32 @b43_radio_write(%struct.b43_wldev* %102, i32 %103, i32 40)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %106 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %107 = call i32 @b43_radio_write(%struct.b43_wldev* %105, i32 %106, i32 176)
  br label %117

108:                                              ; preds = %92
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %110 = call i32 @b43_radio_write(%struct.b43_wldev* %109, i32 430, i32 115)
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %112 = load i32, i32* @R2057_RCCAL_X1, align 4
  %113 = call i32 @b43_radio_write(%struct.b43_wldev* %111, i32 %112, i32 110)
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %115 = load i32, i32* @R2057_RCCAL_TRC0, align 4
  %116 = call i32 @b43_radio_write(%struct.b43_wldev* %114, i32 %115, i32 153)
  br label %117

117:                                              ; preds = %108, %98
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %119 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %120 = call i32 @b43_radio_write(%struct.b43_wldev* %118, i32 %119, i32 85)
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %122 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %123 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %121, i32 %122, i32 1, i32 1, i32 500, i32 5000000)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %117
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %127 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @b43err(i32 %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %138

130:                                              ; preds = %117
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %132 = load i32, i32* @R2057_RCCAL_DONE_OSCCAP, align 4
  %133 = call i32 @b43_radio_read(%struct.b43_wldev* %131, i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %135 = load i32, i32* @R2057_RCCAL_START_R1_Q1_P1, align 4
  %136 = call i32 @b43_radio_write(%struct.b43_wldev* %134, i32 %135, i32 21)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %130, %125
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_wait_value(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43dbg(i32, i8*) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
