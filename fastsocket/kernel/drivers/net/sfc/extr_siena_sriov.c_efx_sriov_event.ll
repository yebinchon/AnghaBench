; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { %struct.efx_nic* }
%struct.efx_nic = type { i32 }
%struct.efx_vf = type { i32, i32, i32, i32, i32, i32 }

@FSF_CZ_USER_QID = common dso_local global i32 0, align 4
@FSF_CZ_USER_EV_REG_VALUE_LBN = common dso_local global i64 0, align 8
@VFDI_EV_SEQ = common dso_local global i32 0, align 4
@VFDI_EV_TYPE = common dso_local global i32 0, align 4
@VFDI_EV_DATA = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"USR_EV event from qid %d seq 0x%x type %d data 0x%x\0A\00", align 1
@vfdi_workqueue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ERROR: Screaming VFDI request from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_sriov_event(%struct.efx_channel* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_vf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %12 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %11, i32 0, i32 0
  %13 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  store %struct.efx_nic* %13, %struct.efx_nic** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FSF_CZ_USER_QID, align 4
  %17 = call i32 @EFX_QWORD_FIELD(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i64, i64* @FSF_CZ_USER_EV_REG_VALUE_LBN, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUILD_BUG_ON(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VFDI_EV_SEQ, align 4
  %25 = call i32 @EFX_QWORD_FIELD(i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VFDI_EV_TYPE, align 4
  %29 = call i32 @EFX_QWORD_FIELD(i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VFDI_EV_DATA, align 4
  %33 = call i32 @EFX_QWORD_FIELD(i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %35 = load i32, i32* @hw, align 4
  %36 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @netif_vdbg(%struct.efx_nic* %34, i32 %35, i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @map_vi_index(%struct.efx_nic* %44, i32 %45, %struct.efx_vf** %6, i32* null)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  br label %138

49:                                               ; preds = %2
  %50 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %51 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %118

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 131
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %60 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %59, i32 0, i32 1
  store i32 131, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  %63 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %64 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %66 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %65, i32 0, i32 3
  store i32 0, i32* %66, align 4
  br label %83

67:                                               ; preds = %55
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %70 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = and i32 %71, 255
  %74 = icmp ne i32 %68, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %78 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %67
  br label %118

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %58
  %84 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %85 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %117 [
    i32 131, label %87
    i32 130, label %87
    i32 129, label %87
    i32 128, label %102
  ]

87:                                               ; preds = %83, %83, %83
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %90 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 4
  %93 = shl i32 %88, %92
  %94 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %95 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %99 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %138

102:                                              ; preds = %83
  %103 = load i32, i32* %10, align 4
  %104 = shl i32 %103, 48
  %105 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %106 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %110 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %109, i32 0, i32 1
  store i32 131, i32* %110, align 4
  %111 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %112 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  %113 = load i32, i32* @vfdi_workqueue, align 4
  %114 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %115 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %114, i32 0, i32 5
  %116 = call i32 @queue_work(i32 %113, i32* %115)
  br label %138

117:                                              ; preds = %83
  br label %118

118:                                              ; preds = %117, %81, %54
  %119 = call i64 (...) @net_ratelimit()
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %123 = load i32, i32* @hw, align 4
  %124 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %125 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %128 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @netif_err(%struct.efx_nic* %122, i32 %123, i32 %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %121, %118
  %132 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %133 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %132, i32 0, i32 1
  store i32 131, i32* %133, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add i32 %134, 1
  %136 = load %struct.efx_vf*, %struct.efx_vf** %6, align 8
  %137 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %131, %102, %87, %48
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @netif_vdbg(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @map_vi_index(%struct.efx_nic*, i32, %struct.efx_vf**, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
