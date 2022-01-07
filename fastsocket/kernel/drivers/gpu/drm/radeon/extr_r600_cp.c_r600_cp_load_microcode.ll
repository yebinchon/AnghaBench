; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_cp_load_microcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_cp_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@R600_CP_RB_CNTL = common dso_local global i32 0, align 4
@R600_RB_NO_UPDATE = common dso_local global i32 0, align 4
@R600_GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@R600_SOFT_RESET_CP = common dso_local global i32 0, align 4
@R600_CP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@R600_CP_ME_RAM_DATA = common dso_local global i32 0, align 4
@R600_CP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@R600_CP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@R600_CP_ME_RAM_RADDR = common dso_local global i32 0, align 4
@R600_BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @r600_cp_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_cp_load_microcode(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %86

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call i32 @r600_do_cp_stop(%struct.TYPE_8__* %16)
  %18 = load i32, i32* @R600_CP_RB_CNTL, align 4
  %19 = load i32, i32* @R600_RB_NO_UPDATE, align 4
  %20 = call i32 @R600_RB_BLKSZ(i32 15)
  %21 = or i32 %19, %20
  %22 = call i32 @R600_RB_BUFSZ(i32 3)
  %23 = or i32 %21, %22
  %24 = call i32 @RADEON_WRITE(i32 %18, i32 %23)
  %25 = load i32, i32* @R600_GRBM_SOFT_RESET, align 4
  %26 = load i32, i32* @R600_SOFT_RESET_CP, align 4
  %27 = call i32 @RADEON_WRITE(i32 %25, i32 %26)
  %28 = load i32, i32* @R600_GRBM_SOFT_RESET, align 4
  %29 = call i32 @RADEON_READ(i32 %28)
  %30 = call i32 @mdelay(i32 15)
  %31 = load i32, i32* @R600_GRBM_SOFT_RESET, align 4
  %32 = call i32 @RADEON_WRITE(i32 %31, i32 0)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %3, align 8
  %39 = load i32, i32* @R600_CP_ME_RAM_WADDR, align 4
  %40 = call i32 @RADEON_WRITE(i32 %39, i32 0)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %53, %15
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PM4_UCODE_SIZE, align 4
  %44 = mul nsw i32 %43, 3
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32, i32* @R600_CP_ME_RAM_DATA, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %3, align 8
  %50 = ptrtoint i32* %48 to i32
  %51 = call i32 @be32_to_cpup(i32 %50)
  %52 = call i32 @RADEON_WRITE(i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %3, align 8
  %63 = load i32, i32* @R600_CP_PFP_UCODE_ADDR, align 4
  %64 = call i32 @RADEON_WRITE(i32 %63, i32 0)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %76, %56
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PFP_UCODE_SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* @R600_CP_PFP_UCODE_DATA, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %3, align 8
  %73 = ptrtoint i32* %71 to i32
  %74 = call i32 @be32_to_cpup(i32 %73)
  %75 = call i32 @RADEON_WRITE(i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %65

79:                                               ; preds = %65
  %80 = load i32, i32* @R600_CP_PFP_UCODE_ADDR, align 4
  %81 = call i32 @RADEON_WRITE(i32 %80, i32 0)
  %82 = load i32, i32* @R600_CP_ME_RAM_WADDR, align 4
  %83 = call i32 @RADEON_WRITE(i32 %82, i32 0)
  %84 = load i32, i32* @R600_CP_ME_RAM_RADDR, align 4
  %85 = call i32 @RADEON_WRITE(i32 %84, i32 0)
  br label %86

86:                                               ; preds = %79, %14
  ret void
}

declare dso_local i32 @r600_do_cp_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

declare dso_local i32 @R600_RB_BLKSZ(i32) #1

declare dso_local i32 @R600_RB_BUFSZ(i32) #1

declare dso_local i32 @RADEON_READ(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
