; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_report_fw_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_report_fw_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i64, i32, i64 }

@BNX2_PHY_FLAG_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_10HALF = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_10FULL = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_100HALF = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_100FULL = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_1000HALF = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_1000FULL = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_2500HALF = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_2500FULL = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_AN_ENABLED = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_PARALLEL_DETECT = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_PARALLEL_DET = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_AN_COMPLETE = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_LINK_DOWN = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_report_fw_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_report_fw_link(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %6 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %115

12:                                               ; preds = %1
  %13 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %108

17:                                               ; preds = %12
  %18 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %65 [
    i32 131, label %21
    i32 130, label %32
    i32 129, label %43
    i32 128, label %54
  ]

21:                                               ; preds = %17
  %22 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DUPLEX_HALF, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @BNX2_LINK_STATUS_10HALF, align 4
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @BNX2_LINK_STATUS_10FULL, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %65

32:                                               ; preds = %17
  %33 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DUPLEX_HALF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @BNX2_LINK_STATUS_100HALF, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @BNX2_LINK_STATUS_100FULL, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %65

43:                                               ; preds = %17
  %44 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %45 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DUPLEX_HALF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @BNX2_LINK_STATUS_1000HALF, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @BNX2_LINK_STATUS_1000FULL, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %65

54:                                               ; preds = %17
  %55 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %56 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DUPLEX_HALF, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @BNX2_LINK_STATUS_2500HALF, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @BNX2_LINK_STATUS_2500FULL, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %17, %64, %53, %42, %31
  %66 = load i32, i32* @BNX2_LINK_STATUS_LINK_UP, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %70 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %107

73:                                               ; preds = %65
  %74 = load i32, i32* @BNX2_LINK_STATUS_AN_ENABLED, align 4
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %78 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %79 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bnx2_read_phy(%struct.bnx2* %77, i32 %80, i32* %4)
  %82 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %83 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %84 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @bnx2_read_phy(%struct.bnx2* %82, i32 %85, i32* %4)
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %73
  %92 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %93 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BNX2_PHY_FLAG_PARALLEL_DETECT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91, %73
  %99 = load i32, i32* @BNX2_LINK_STATUS_PARALLEL_DET, align 4
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  br label %106

102:                                              ; preds = %91
  %103 = load i32, i32* @BNX2_LINK_STATUS_AN_COMPLETE, align 4
  %104 = load i32, i32* %3, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %65
  br label %110

108:                                              ; preds = %12
  %109 = load i32, i32* @BNX2_LINK_STATUS_LINK_DOWN, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %107
  %111 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %112 = load i32, i32* @BNX2_LINK_STATUS, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @bnx2_shmem_wr(%struct.bnx2* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %11
  ret void
}

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

declare dso_local i32 @bnx2_shmem_wr(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
