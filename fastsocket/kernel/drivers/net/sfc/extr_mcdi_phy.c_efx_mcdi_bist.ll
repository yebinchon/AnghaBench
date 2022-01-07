; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_bist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_bist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MC_CMD_START_BIST_OUT_LEN = common dso_local global i64 0, align 8
@START_BIST_IN_TYPE = common dso_local global i32 0, align 4
@MC_CMD_START_BIST = common dso_local global i32 0, align 4
@MC_CMD_START_BIST_IN_LEN = common dso_local global i32 0, align 4
@MC_CMD_POLL_BIST_IN_LEN = common dso_local global i64 0, align 8
@MC_CMD_POLL_BIST = common dso_local global i32 0, align 4
@POLL_BIST_OUT_RESULT = common dso_local global i32 0, align 4
@MC_CMD_POLL_BIST_RUNNING = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@MC_CMD_POLL_BIST_PASSED = common dso_local global i64 0, align 8
@PHY_TYPE_SFT9001B = common dso_local global i64 0, align 8
@MC_CMD_PHY_BIST_CABLE_SHORT = common dso_local global i32 0, align 4
@MC_CMD_PHY_BIST_CABLE_LONG = common dso_local global i32 0, align 4
@POLL_BIST_OUT_SFT9001_CABLE_LENGTH_A = common dso_local global i32 0, align 4
@MC_CMD_POLL_BIST_OUT_SFT9001_LEN = common dso_local global i64 0, align 8
@EFX_DWORD_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, i32*)* @efx_mcdi_bist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_bist(%struct.efx_nic* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 256, i32 %16)
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %138

23:                                               ; preds = %3
  %24 = load i64, i64* @MC_CMD_START_BIST_OUT_LEN, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUILD_BUG_ON(i32 %26)
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* @START_BIST_IN_TYPE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @MCDI_SET_DWORD(i32* %28, i32 %29, i32 %30)
  %32 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %33 = load i32, i32* @MC_CMD_START_BIST, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* @MC_CMD_START_BIST_IN_LEN, align 4
  %36 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %32, i32 %33, i32* %34, i32 %35, i32* null, i32 0, i64* null)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %134

40:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp ult i32 %42, 100
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load i64, i64* @MC_CMD_POLL_BIST_IN_LEN, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUILD_BUG_ON(i32 %47)
  %49 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %50 = load i32, i32* @MC_CMD_POLL_BIST, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %49, i32 %50, i32* null, i32 0, i32* %51, i32 256, i64* %11)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %134

56:                                               ; preds = %44
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* @POLL_BIST_OUT_RESULT, align 4
  %59 = call i64 @MCDI_DWORD(i32* %57, i32 %58)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @MC_CMD_POLL_BIST_RUNNING, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %72

64:                                               ; preds = %56
  %65 = call i32 @msleep(i32 100)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %41

69:                                               ; preds = %41
  %70 = load i32, i32* @ETIMEDOUT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %15, align 4
  br label %134

72:                                               ; preds = %63
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @MC_CMD_POLL_BIST_PASSED, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 -1
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %84 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PHY_TYPE_SFT9001B, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %72
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @MC_CMD_PHY_BIST_CABLE_SHORT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @MC_CMD_PHY_BIST_CABLE_LONG, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %92, %88
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* @POLL_BIST_OUT_SFT9001_CABLE_LENGTH_A, align 4
  %99 = call i32* @MCDI_PTR(i32* %97, i32 %98)
  store i32* %99, i32** %14, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* @MC_CMD_POLL_BIST_PASSED, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %96
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @MC_CMD_POLL_BIST_OUT_SFT9001_LEN, align 8
  %106 = icmp uge i64 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %125, %107
  %109 = load i32, i32* %9, align 4
  %110 = icmp ult i32 %109, 8
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %9, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @EFX_DWORD_0, align 4
  %118 = call i32 @EFX_DWORD_FIELD(i32 %116, i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %9, align 4
  %122 = add i32 %120, %121
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %111
  %126 = load i32, i32* %9, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %108

128:                                              ; preds = %108
  br label %129

129:                                              ; preds = %128, %103, %96
  %130 = load i32, i32* %10, align 4
  %131 = add i32 %130, 8
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %129, %92, %72
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %132, %69, %55, %39
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @kfree(i32* %135)
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %20
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @MCDI_SET_DWORD(i32*, i32, i32) #1

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i64 @MCDI_DWORD(i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32* @MCDI_PTR(i32*, i32) #1

declare dso_local i32 @EFX_DWORD_FIELD(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
