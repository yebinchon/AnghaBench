; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_rpc_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_rpc_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i64, i32, i64, i32, i32, i32 }

@EFX_REV_SIENA_A0 = common dso_local global i64 0, align 8
@MCDI_MODE_POLL = common dso_local global i64 0, align 8
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"MC command 0x%x inlen %d mode %d timed out\0A\00", align 1
@MC_CMD_REBOOT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"MC fatal error %d\0A\00", align 1
@RESET_TYPE_MC_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"MC command 0x%x inlen %d failed rc=%d\0A\00", align 1
@MCDI_STATUS_SLEEP_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mcdi_rpc_finish(%struct.efx_nic* %0, i32 %1, i64 %2, i32* %3, i64 %4, i64* %5) #0 {
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.efx_mcdi_iface*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %17 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %16)
  store %struct.efx_mcdi_iface* %17, %struct.efx_mcdi_iface** %13, align 8
  %18 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %19 = call i64 @efx_nic_rev(%struct.efx_nic* %18)
  %20 = load i64, i64* @EFX_REV_SIENA_A0, align 8
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %25 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MCDI_MODE_POLL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %31 = call i32 @efx_mcdi_poll(%struct.efx_nic* %30)
  store i32 %31, i32* %14, align 4
  br label %35

32:                                               ; preds = %6
  %33 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %34 = call i32 @efx_mcdi_await_completion(%struct.efx_nic* %33)
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %40 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %39, i32 0, i32 3
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %43 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %47 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %51 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %50, i32 0, i32 3
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %54 = load i32, i32* @hw, align 4
  %55 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %62 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.efx_nic* %53, i32 %54, i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60, i64 %63)
  br label %161

65:                                               ; preds = %35
  %66 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %67 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %66, i32 0, i32 3
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %70 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %14, align 4
  %73 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %74 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %15, align 8
  %76 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %77 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %76, i32 0, i32 3
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load i32, i32* %14, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %65
  %82 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %86 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 3
  %89 = trunc i64 %88 to i32
  %90 = call i32 @min(i64 %84, i32 %89)
  %91 = and i32 %90, -4
  %92 = call i32 @efx_mcdi_copyout(%struct.efx_nic* %82, i32* %83, i32 %91)
  %93 = load i64*, i64** %12, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %81
  %96 = load i64, i64* %15, align 8
  %97 = load i64*, i64** %12, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %95, %81
  br label %145

99:                                               ; preds = %65
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @MC_CMD_REBOOT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %144

109:                                              ; preds = %103, %99
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @EINTR, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %114, %109
  %120 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %121 = load i32, i32* @hw, align 4
  %122 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %123 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %14, align 4
  %126 = sub nsw i32 0, %125
  %127 = call i32 (%struct.efx_nic*, i32, i32, i8*, i32, ...) @netif_err(%struct.efx_nic* %120, i32 %121, i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %129 = load i32, i32* @RESET_TYPE_MC_FAILURE, align 4
  %130 = call i32 @efx_schedule_reset(%struct.efx_nic* %128, i32 %129)
  br label %143

131:                                              ; preds = %114
  %132 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %133 = load i32, i32* @hw, align 4
  %134 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %135 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i64, i64* %9, align 8
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* %14, align 4
  %141 = sub nsw i32 0, %140
  %142 = call i32 @netif_dbg(%struct.efx_nic* %132, i32 %133, i32 %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %139, i32 %141)
  br label %143

143:                                              ; preds = %131, %119
  br label %144

144:                                              ; preds = %143, %108
  br label %145

145:                                              ; preds = %144, %98
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @EINTR, align 4
  %153 = sub nsw i32 0, %152
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %150, %145
  %156 = load i32, i32* @MCDI_STATUS_SLEEP_MS, align 4
  %157 = call i32 @msleep(i32 %156)
  %158 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %159 = call i32 @efx_mcdi_poll_reboot(%struct.efx_nic* %158)
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %38
  %162 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %13, align 8
  %163 = call i32 @efx_mcdi_release(%struct.efx_mcdi_iface* %162)
  %164 = load i32, i32* %14, align 4
  ret i32 %164
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_poll(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_await_completion(%struct.efx_nic*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @efx_mcdi_copyout(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @efx_mcdi_poll_reboot(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_release(%struct.efx_mcdi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
