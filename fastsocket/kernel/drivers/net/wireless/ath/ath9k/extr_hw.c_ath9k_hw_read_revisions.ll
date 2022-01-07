; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_read_revisions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_read_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 (...)*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AR_SREV_VERSION_9100 = common dso_local global i32 0, align 4
@AR_SREV_VERSION_9330 = common dso_local global i32 0, align 4
@AR_SREV = common dso_local global i32 0, align 4
@AR_SREV_REVISION2 = common dso_local global i32 0, align 4
@AR_SREV_VERSION_9340 = common dso_local global i32 0, align 4
@AR_SREV_VERSION_9550 = common dso_local global i32 0, align 4
@AR_SREV_ID = common dso_local global i32 0, align 4
@AR_SREV_VERSION2 = common dso_local global i32 0, align 4
@AR_SREV_TYPE2_S = common dso_local global i32 0, align 4
@AR_SREV_TYPE2_HOST_MODE = common dso_local global i32 0, align 4
@AR_SREV_VERSION = common dso_local global i32 0, align 4
@AR_SREV_REVISION = common dso_local global i32 0, align 4
@AR_SREV_VERSION_5416_PCIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_read_revisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_read_revisions(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %62 [
    i32 131, label %8
    i32 130, label %13
    i32 129, label %42
    i32 128, label %57
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @AR_SREV_VERSION_9100, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load i32, i32* @AR_SREV_VERSION_9330, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = icmp ne i32 (...)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  %25 = load i32 (...)*, i32 (...)** %24, align 8
  %26 = call i32 (...) %25()
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  br label %41

30:                                               ; preds = %13
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = load i32, i32* @AR_SREV, align 4
  %33 = call i32 @REG_READ(%struct.ath_hw* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @AR_SREV_REVISION2, align 4
  %36 = call i8* @MS(i32 %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %22
  br label %138

42:                                               ; preds = %1
  %43 = load i32, i32* @AR_SREV_VERSION_9340, align 4
  %44 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = load i32, i32* @AR_SREV, align 4
  %49 = call i32 @REG_READ(%struct.ath_hw* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @AR_SREV_REVISION2, align 4
  %52 = call i8* @MS(i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  br label %138

57:                                               ; preds = %1
  %58 = load i32, i32* @AR_SREV_VERSION_9550, align 4
  %59 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  br label %138

62:                                               ; preds = %1, %8
  %63 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %64 = load i32, i32* @AR_SREV, align 4
  %65 = call i32 @REG_READ(%struct.ath_hw* %63, i32 %64)
  %66 = load i32, i32* @AR_SREV_ID, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %70, label %109

70:                                               ; preds = %62
  %71 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %72 = load i32, i32* @AR_SREV, align 4
  %73 = call i32 @REG_READ(%struct.ath_hw* %71, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @AR_SREV_VERSION2, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @AR_SREV_TYPE2_S, align 4
  %78 = ashr i32 %76, %77
  %79 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %80 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @AR_SREV_REVISION2, align 4
  %84 = call i8* @MS(i32 %82, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %87 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  %89 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %90 = call i64 @AR_SREV_9462(%struct.ath_hw* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %70
  %93 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %94 = call i64 @AR_SREV_9565(%struct.ath_hw* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92, %70
  %97 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %98 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %97, i32 0, i32 1
  store i32 1, i32* %98, align 8
  br label %108

99:                                               ; preds = %92
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @AR_SREV_TYPE2_HOST_MODE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 0, i32 1
  %106 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %107 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %99, %96
  br label %138

109:                                              ; preds = %62
  %110 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %111 = call i32 @AR_SREV_9100(%struct.ath_hw* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @AR_SREV_VERSION, align 4
  %116 = call i8* @MS(i32 %114, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %119 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %113, %109
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @AR_SREV_REVISION, align 4
  %124 = and i32 %122, %123
  %125 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %126 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  %128 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %129 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AR_SREV_VERSION_5416_PCIE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %121
  %135 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %136 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %135, i32 0, i32 1
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %121
  br label %138

138:                                              ; preds = %41, %42, %57, %137, %108
  ret void
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9100(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
