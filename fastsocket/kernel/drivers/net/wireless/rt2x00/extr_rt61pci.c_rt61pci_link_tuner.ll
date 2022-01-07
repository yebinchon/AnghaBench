; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_link_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_link_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64, i32, i32 }
%struct.link_qual = type { i32, i32, i32 }

@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@CAPABILITY_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.link_qual*, i32)* @rt61pci_link_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_link_tuner(%struct.rt2x00_dev* %0, %struct.link_qual* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.link_qual*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.link_qual* %1, %struct.link_qual** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  store i32 40, i32* %8, align 4
  store i32 72, i32* %7, align 4
  %15 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_A, align 4
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 16
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 16
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %14
  br label %38

26:                                               ; preds = %3
  store i32 32, i32* %8, align 4
  store i32 64, i32* %7, align 4
  %27 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_BG, align 4
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %29 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 16
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 16
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %26
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %40 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %110

44:                                               ; preds = %38
  %45 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %46 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, -35
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %51 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %52 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %50, %struct.link_qual* %51, i32 96)
  br label %149

53:                                               ; preds = %44
  %54 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %55 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, -58
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %60 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %59, %struct.link_qual* %60, i32 %61)
  br label %149

63:                                               ; preds = %53
  %64 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %65 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, -66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %70 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 16
  %73 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %69, %struct.link_qual* %70, i32 %72)
  br label %149

74:                                               ; preds = %63
  %75 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %76 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %77, -74
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %81 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 8
  %84 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %80, %struct.link_qual* %81, i32 %83)
  br label %149

85:                                               ; preds = %74
  %86 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %87 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 -74, %88
  %90 = mul nsw i32 2, %89
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %85
  %99 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %100 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %106 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %105, %struct.link_qual* %106, i32 %107)
  br label %149

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %43
  %111 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %112 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 512
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  %116 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %117 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %123 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %124 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %125 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %122, %struct.link_qual* %123, i32 %127)
  br label %149

129:                                              ; preds = %115, %110
  %130 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %131 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 100
  br i1 %133, label %134, label %148

134:                                              ; preds = %129
  %135 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %136 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %142 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %143 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %144 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %144, align 4
  %147 = call i32 @rt61pci_set_vgc(%struct.rt2x00_dev* %141, %struct.link_qual* %142, i32 %146)
  br label %148

148:                                              ; preds = %140, %134, %129
  br label %149

149:                                              ; preds = %49, %58, %68, %79, %104, %148, %121
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt61pci_set_vgc(%struct.rt2x00_dev*, %struct.link_qual*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
