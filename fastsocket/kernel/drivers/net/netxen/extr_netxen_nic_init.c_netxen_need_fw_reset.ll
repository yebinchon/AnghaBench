; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_need_fw_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_need_fw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CRB_CMDPEG_STATE = common dso_local global i32 0, align 4
@PHAN_INITIALIZE_FAILED = common dso_local global i64 0, align 8
@NETXEN_PEG_ALIVE_COUNTER = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@NETXEN_FW_VERSION_MAJOR = common dso_local global i32 0, align 4
@NETXEN_FW_VERSION_MINOR = common dso_local global i32 0, align 4
@NETXEN_FW_VERSION_SUB = common dso_local global i32 0, align 4
@NX_UNIFIED_ROMIMAGE = common dso_local global i64 0, align 8
@NETXEN_MIU_MN_CONTROL = common dso_local global i32 0, align 4
@NX_P3_CT_ROMIMAGE = common dso_local global i64 0, align 8
@NX_P3_MN_ROMIMAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_need_fw_reset(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @NX_IS_REVISION_P2(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %130

21:                                               ; preds = %1
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %130

27:                                               ; preds = %21
  %28 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %29 = load i32, i32* @CRB_CMDPEG_STATE, align 4
  %30 = call i64 @NXRD32(%struct.netxen_adapter* %28, i32 %29)
  %31 = load i64, i64* @PHAN_INITIALIZE_FAILED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %130

34:                                               ; preds = %27
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %36 = load i32, i32* @NETXEN_PEG_ALIVE_COUNTER, align 4
  %37 = call i64 @NXRD32(%struct.netxen_adapter* %35, i32 %36)
  store i64 %37, i64* %5, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %61, %34
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = call i32 @msleep_interruptible(i32 200)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %47 = load i32, i32* @CRB_CMDPEG_STATE, align 4
  %48 = load i64, i64* @PHAN_INITIALIZE_FAILED, align 8
  %49 = call i32 @NXWR32(%struct.netxen_adapter* %46, i32 %47, i64 %48)
  %50 = load i32, i32* @EINTR, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %130

52:                                               ; preds = %41
  %53 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %54 = load i32, i32* @NETXEN_PEG_ALIVE_COUNTER, align 4
  %55 = call i64 @NXRD32(%struct.netxen_adapter* %53, i32 %54)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %64

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %38

64:                                               ; preds = %59, %38
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %130

69:                                               ; preds = %64
  %70 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %129

74:                                               ; preds = %69
  %75 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %76 = call i64 @nx_get_fw_version(%struct.netxen_adapter* %75)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @NETXEN_DECODE_VERSION(i64 %77)
  store i64 %78, i64* %7, align 8
  %79 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %80 = load i32, i32* @NETXEN_FW_VERSION_MAJOR, align 4
  %81 = call i64 @NXRD32(%struct.netxen_adapter* %79, i32 %80)
  store i64 %81, i64* %8, align 8
  %82 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %83 = load i32, i32* @NETXEN_FW_VERSION_MINOR, align 4
  %84 = call i64 @NXRD32(%struct.netxen_adapter* %82, i32 %83)
  store i64 %84, i64* %9, align 8
  %85 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %86 = load i32, i32* @NETXEN_FW_VERSION_SUB, align 4
  %87 = call i64 @NXRD32(%struct.netxen_adapter* %85, i32 %86)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @NETXEN_VERSION_CODE(i64 %89, i64 %90, i64 %91)
  %93 = icmp sgt i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %74
  store i32 1, i32* %2, align 4
  br label %130

95:                                               ; preds = %74
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @NETXEN_VERSION_CODE(i64 %97, i64 %98, i64 %99)
  %101 = icmp eq i64 %96, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %95
  %103 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NX_UNIFIED_ROMIMAGE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %102
  %109 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %110 = load i32, i32* @NETXEN_MIU_MN_CONTROL, align 4
  %111 = call i64 @NXRD32(%struct.netxen_adapter* %109, i32 %110)
  store i64 %111, i64* %6, align 8
  %112 = load i64, i64* %6, align 8
  %113 = and i64 %112, 4
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i64, i64* @NX_P3_CT_ROMIMAGE, align 8
  br label %119

117:                                              ; preds = %108
  %118 = load i64, i64* @NX_P3_MN_ROMIMAGE, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i64 [ %116, %115 ], [ %118, %117 ]
  store i64 %120, i64* %13, align 8
  %121 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %13, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 1, i32* %2, align 4
  br label %130

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %102, %95
  br label %129

129:                                              ; preds = %128, %69
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %126, %94, %68, %45, %33, %26, %20
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

declare dso_local i64 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i64) #1

declare dso_local i64 @nx_get_fw_version(%struct.netxen_adapter*) #1

declare dso_local i64 @NETXEN_DECODE_VERSION(i64) #1

declare dso_local i64 @NETXEN_VERSION_CODE(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
