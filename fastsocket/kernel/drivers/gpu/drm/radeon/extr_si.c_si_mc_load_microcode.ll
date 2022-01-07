; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_mc_load_microcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_mc_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@tahiti_io_mc_regs = common dso_local global i32 0, align 4
@SI_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@TAHITI_IO_MC_REGS_SIZE = common dso_local global i32 0, align 4
@pitcairn_io_mc_regs = common dso_local global i32 0, align 4
@verde_io_mc_regs = common dso_local global i32 0, align 4
@oland_io_mc_regs = common dso_local global i32 0, align 4
@OLAND_MC_UCODE_SIZE = common dso_local global i32 0, align 4
@MC_SEQ_SUP_CNTL = common dso_local global i32 0, align 4
@RUN_MASK = common dso_local global i32 0, align 4
@MC_SHARED_BLACKOUT_CNTL = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_INDEX = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_DATA = common dso_local global i32 0, align 4
@MC_SEQ_SUP_PGM = common dso_local global i32 0, align 4
@MC_SEQ_TRAIN_WAKEUP_CNTL = common dso_local global i32 0, align 4
@TRAIN_DONE_D0 = common dso_local global i32 0, align 4
@TRAIN_DONE_D1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_mc_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_mc_load_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %156

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %29 [
    i32 129, label %22
    i32 130, label %25
    i32 128, label %28
    i32 131, label %32
  ]

22:                                               ; preds = %18
  store i32* @tahiti_io_mc_regs, i32** %7, align 8
  %23 = load i32, i32* @SI_MC_UCODE_SIZE, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @TAHITI_IO_MC_REGS_SIZE, align 4
  store i32 %24, i32* %10, align 4
  br label %35

25:                                               ; preds = %18
  store i32* @pitcairn_io_mc_regs, i32** %7, align 8
  %26 = load i32, i32* @SI_MC_UCODE_SIZE, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @TAHITI_IO_MC_REGS_SIZE, align 4
  store i32 %27, i32* %10, align 4
  br label %35

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %18, %28
  store i32* @verde_io_mc_regs, i32** %7, align 8
  %30 = load i32, i32* @SI_MC_UCODE_SIZE, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @TAHITI_IO_MC_REGS_SIZE, align 4
  store i32 %31, i32* %10, align 4
  br label %35

32:                                               ; preds = %18
  store i32* @oland_io_mc_regs, i32** %7, align 8
  %33 = load i32, i32* @OLAND_MC_UCODE_SIZE, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @TAHITI_IO_MC_REGS_SIZE, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %29, %25, %22
  %36 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %37 = call i32 @RREG32(i32 %36)
  %38 = load i32, i32* @RUN_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %155

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* @MC_SHARED_BLACKOUT_CNTL, align 4
  %47 = call i32 @RREG32(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @MC_SHARED_BLACKOUT_CNTL, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, 1
  %51 = call i32 @WREG32(i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %54 = call i32 @WREG32(i32 %53, i32 8)
  %55 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %56 = call i32 @WREG32(i32 %55, i32 16)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %79, %52
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @WREG32(i32 %62, i32 %68)
  %70 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 %72, 1
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @WREG32(i32 %70, i32 %77)
  br label %79

79:                                               ; preds = %61
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %57

82:                                               ; preds = %57
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  store i32* %88, i32** %4, align 8
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %100, %82
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i32, i32* @MC_SEQ_SUP_PGM, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %4, align 8
  %97 = ptrtoint i32* %95 to i32
  %98 = call i32 @be32_to_cpup(i32 %97)
  %99 = call i32 @WREG32(i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %89

103:                                              ; preds = %89
  %104 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %105 = call i32 @WREG32(i32 %104, i32 8)
  %106 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %107 = call i32 @WREG32(i32 %106, i32 4)
  %108 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %109 = call i32 @WREG32(i32 %108, i32 1)
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %125, %103
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %110
  %117 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %118 = call i32 @RREG32(i32 %117)
  %119 = load i32, i32* @TRAIN_DONE_D0, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %128

123:                                              ; preds = %116
  %124 = call i32 @udelay(i32 1)
  br label %125

125:                                              ; preds = %123
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %110

128:                                              ; preds = %122, %110
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %144, %128
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %129
  %136 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %137 = call i32 @RREG32(i32 %136)
  %138 = load i32, i32* @TRAIN_DONE_D1, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %147

142:                                              ; preds = %135
  %143 = call i32 @udelay(i32 1)
  br label %144

144:                                              ; preds = %142
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %129

147:                                              ; preds = %141, %129
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32, i32* @MC_SHARED_BLACKOUT_CNTL, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @WREG32(i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %147
  br label %155

155:                                              ; preds = %154, %35
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %15
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
