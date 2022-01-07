; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mdio.c_mdio45_links_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mdio.c_mdio45_links_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_if_info = type { i32 (i32, i32, i32, i32)*, i32, i32 }

@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MDIO_STAT2 = common dso_local global i32 0, align 4
@MDIO_STAT2_RXFAULT = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_MMD_DTEXS = common dso_local global i32 0, align 4
@MDIO_STAT1_FAULT = common dso_local global i32 0, align 4
@MDIO_STAT1_LSTATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdio45_links_ok(%struct.mdio_if_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdio_if_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mdio_if_info* %0, %struct.mdio_if_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %12 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %11, i32 0, i32 0
  %13 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %12, align 8
  %14 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %15 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %18 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %21 = load i32, i32* @MDIO_STAT2, align 4
  %22 = call i32 %13(i32 %16, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %10
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MDIO_STAT2_RXFAULT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %10
  %32 = phi i1 [ false, %10 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %120

34:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %116, %34
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %119

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %115

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %51 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %50, i32 0, i32 0
  %52 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %51, align 8
  %53 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %54 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %57 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MDIO_STAT1, align 4
  %61 = call i32 %52(i32 %55, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %44
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @MDIO_MMD_PCS, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MDIO_MMD_DTEXS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73, %69, %65, %44
  %78 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %79 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %78, i32 0, i32 0
  %80 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %79, align 8
  %81 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %82 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %85 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MDIO_STAT2, align 4
  %89 = call i32 %80(i32 %83, i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %77, %73
  %91 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %92 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %91, i32 0, i32 0
  %93 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %92, align 8
  %94 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %95 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %98 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @MDIO_STAT1, align 4
  %102 = call i32 %93(i32 %96, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %90
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @MDIO_STAT1_FAULT, align 4
  %108 = load i32, i32* @MDIO_STAT1_LSTATUS, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = load i32, i32* @MDIO_STAT1_LSTATUS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105, %90
  store i32 0, i32* %3, align 4
  br label %120

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %38
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %35

119:                                              ; preds = %35
  store i32 1, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %113, %31
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
