; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_set_phyxcer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_set_phyxcer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmfe_board_info = type { i32, i32, i32, i32, i32, i32, i64 }

@PCI_DM9009_ID = common dso_local global i32 0, align 4
@DMFE_AUTO = common dso_local global i32 0, align 4
@PCI_DM9102_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmfe_board_info*)* @dmfe_set_phyxcer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_set_phyxcer(%struct.dmfe_board_info* %0) #0 {
  %2 = alloca %struct.dmfe_board_info*, align 8
  %3 = alloca i32, align 4
  store %struct.dmfe_board_info* %0, %struct.dmfe_board_info** %2, align 8
  %4 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %5 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, -262145
  store i32 %7, i32* %5, align 8
  %8 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %9 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %12 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @update_cr6(i32 %10, i32 %13)
  %15 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %16 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PCI_DM9009_ID, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %1
  %21 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %22 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %25 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %28 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @phy_read(i32 %23, i32 %26, i32 18, i32 %29)
  %31 = and i32 %30, -4097
  store i32 %31, i32* %3, align 4
  %32 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %33 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %36 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %40 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @phy_write(i32 %34, i32 %37, i32 18, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %20, %1
  %44 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %45 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %48 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %51 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @phy_read(i32 %46, i32 %49, i32 4, i32 %52)
  %54 = and i32 %53, -481
  store i32 %54, i32* %3, align 4
  %55 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %56 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DMFE_AUTO, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %43
  %62 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %63 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %93

67:                                               ; preds = %43
  %68 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %69 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %83 [
    i32 128, label %71
    i32 129, label %74
    i32 130, label %77
    i32 131, label %80
  ]

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, 32
  store i32 %73, i32* %3, align 4
  br label %83

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, 64
  store i32 %76, i32* %3, align 4
  br label %83

77:                                               ; preds = %67
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, 128
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %67
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, 256
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %67, %80, %77, %74, %71
  %84 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %85 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PCI_DM9009_ID, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %3, align 4
  %91 = and i32 %90, 97
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %83
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i32, i32* %3, align 4
  %95 = and i32 %94, 480
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %93
  %98 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %99 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* @DMFE_AUTO, align 4
  %104 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %105 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %97, %93
  %109 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %110 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %113 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %117 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @phy_write(i32 %111, i32 %114, i32 4, i32 %115, i32 %118)
  %120 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %121 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %108
  %125 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %126 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @PCI_DM9102_ID, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %132 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %135 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %138 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @phy_write(i32 %133, i32 %136, i32 0, i32 6144, i32 %139)
  br label %141

141:                                              ; preds = %130, %124, %108
  %142 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %143 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %157, label %146

146:                                              ; preds = %141
  %147 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %148 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %151 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %2, align 8
  %154 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @phy_write(i32 %149, i32 %152, i32 0, i32 4608, i32 %155)
  br label %157

157:                                              ; preds = %146, %141
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
