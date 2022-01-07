; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_hwtstamp_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_hwtstamp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@IXGBE_TSYNCTXCTL_ENABLED = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_ENABLED = common dso_local global i32 0, align 4
@PTP_EV_PORT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_TYPE_L4_V1 = common dso_local global i32 0, align 4
@IXGBE_RXMTRL_V1_SYNC_MSG = common dso_local global i32 0, align 4
@IXGBE_RXMTRL_V1_DELAY_REQ_MSG = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_TYPE_EVENT_V2 = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_ETQF_FILTER_1588 = common dso_local global i32 0, align 4
@IXGBE_ETQF_FILTER_EN = common dso_local global i32 0, align 4
@IXGBE_ETQF_1588 = common dso_local global i32 0, align 4
@ETH_P_1588 = common dso_local global i32 0, align 4
@IXGBE_TSYNCTXCTL = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_TYPE_MASK = common dso_local global i32 0, align 4
@IXGBE_RXMTRL = common dso_local global i32 0, align 4
@IXGBE_TXSTMPH = common dso_local global i32 0, align 4
@IXGBE_RXSTMPH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_ptp_hwtstamp_ioctl(%struct.ixgbe_adapter* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca %struct.hwtstamp_config, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  store %struct.ixgbe_hw* %16, %struct.ixgbe_hw** %8, align 8
  %17 = load i32, i32* @IXGBE_TSYNCTXCTL_ENABLED, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @IXGBE_TSYNCRXCTL_ENABLED, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @PTP_EV_PORT, align 4
  %20 = shl i32 %19, 16
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @copy_from_user(%struct.hwtstamp_config* %9, i32 %23, i32 16)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %160

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %160

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %41 [
    i32 129, label %39
    i32 128, label %40
  ]

39:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %39
  br label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @ERANGE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %160

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %68 [
    i32 142, label %47
    i32 139, label %48
    i32 141, label %55
    i32 137, label %62
    i32 135, label %62
    i32 132, label %62
    i32 130, label %62
    i32 134, label %62
    i32 131, label %62
    i32 138, label %62
    i32 136, label %62
    i32 133, label %62
    i32 140, label %67
    i32 143, label %67
  ]

47:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %72

48:                                               ; preds = %44
  %49 = load i32, i32* @IXGBE_TSYNCRXCTL_TYPE_L4_V1, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @IXGBE_RXMTRL_V1_SYNC_MSG, align 4
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %72

55:                                               ; preds = %44
  %56 = load i32, i32* @IXGBE_TSYNCRXCTL_TYPE_L4_V1, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @IXGBE_RXMTRL_V1_DELAY_REQ_MSG, align 4
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %72

62:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44
  %63 = load i32, i32* @IXGBE_TSYNCRXCTL_TYPE_EVENT_V2, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  store i32 1, i32* %13, align 4
  %66 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  store i32 137, i32* %66, align 4
  br label %72

67:                                               ; preds = %44, %44
  br label %68

68:                                               ; preds = %44, %67
  %69 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  store i32 142, i32* %69, align 4
  %70 = load i32, i32* @ERANGE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %160

72:                                               ; preds = %62, %55, %48, %47
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @ERANGE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %160

87:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %160

88:                                               ; preds = %72
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %93 = load i32, i32* @IXGBE_ETQF_FILTER_1588, align 4
  %94 = call i32 @IXGBE_ETQF(i32 %93)
  %95 = load i32, i32* @IXGBE_ETQF_FILTER_EN, align 4
  %96 = load i32, i32* @IXGBE_ETQF_1588, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @ETH_P_1588, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %92, i32 %94, i32 %99)
  br label %106

101:                                              ; preds = %88
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %103 = load i32, i32* @IXGBE_ETQF_FILTER_1588, align 4
  %104 = call i32 @IXGBE_ETQF(i32 %103)
  %105 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %102, i32 %104, i32 0)
  br label %106

106:                                              ; preds = %101, %91
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %108 = load i32, i32* @IXGBE_TSYNCTXCTL, align 4
  %109 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %107, i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* @IXGBE_TSYNCTXCTL_ENABLED, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %14, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %14, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %14, align 4
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %118 = load i32, i32* @IXGBE_TSYNCTXCTL, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %117, i32 %118, i32 %119)
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %122 = load i32, i32* @IXGBE_TSYNCRXCTL, align 4
  %123 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %121, i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* @IXGBE_TSYNCRXCTL_ENABLED, align 4
  %125 = load i32, i32* @IXGBE_TSYNCRXCTL_TYPE_MASK, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %14, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %14, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %14, align 4
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %134 = load i32, i32* @IXGBE_TSYNCRXCTL, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %133, i32 %134, i32 %135)
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %138 = load i32, i32* @IXGBE_RXMTRL, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %137, i32 %138, i32 %139)
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %142 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %141)
  %143 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %144 = load i32, i32* @IXGBE_TXSTMPH, align 4
  %145 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %143, i32 %144)
  store i32 %145, i32* %14, align 4
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %147 = load i32, i32* @IXGBE_RXSTMPH, align 4
  %148 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %146, i32 %147)
  store i32 %148, i32* %14, align 4
  %149 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %150 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @copy_to_user(i32 %151, %struct.hwtstamp_config* %9, i32 16)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %106
  %155 = load i32, i32* @EFAULT, align 4
  %156 = sub nsw i32 0, %155
  br label %158

157:                                              ; preds = %106
  br label %158

158:                                              ; preds = %157, %154
  %159 = phi i32 [ %156, %154 ], [ 0, %157 ]
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %87, %84, %68, %41, %33, %26
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_ETQF(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
