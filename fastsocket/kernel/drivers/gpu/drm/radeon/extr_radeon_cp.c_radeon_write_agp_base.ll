; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_write_agp_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_write_agp_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i32 0, align 4
@R700_MC_VM_AGP_BASE = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4
@R600_MC_VM_AGP_BASE = common dso_local global i32 0, align 4
@CHIP_RV515 = common dso_local global i32 0, align 4
@RV515_MC_AGP_BASE = common dso_local global i32 0, align 4
@RV515_MC_AGP_BASE_2 = common dso_local global i32 0, align 4
@CHIP_RS690 = common dso_local global i32 0, align 4
@CHIP_RS740 = common dso_local global i32 0, align 4
@RS690_MC_AGP_BASE = common dso_local global i32 0, align 4
@RS690_MC_AGP_BASE_2 = common dso_local global i32 0, align 4
@CHIP_RS600 = common dso_local global i32 0, align 4
@RS600_AGP_BASE = common dso_local global i32 0, align 4
@RS600_AGP_BASE_2 = common dso_local global i32 0, align 4
@R520_MC_AGP_BASE = common dso_local global i32 0, align 4
@R520_MC_AGP_BASE_2 = common dso_local global i32 0, align 4
@CHIP_RS400 = common dso_local global i32 0, align 4
@CHIP_RS480 = common dso_local global i32 0, align 4
@RADEON_AGP_BASE = common dso_local global i32 0, align 4
@RS480_AGP_BASE_2 = common dso_local global i32 0, align 4
@CHIP_R200 = common dso_local global i32 0, align 4
@RADEON_AGP_BASE_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_write_agp_base(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @upper_32_bits(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 22
  %13 = and i32 %12, 262143
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @CHIP_RV770, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @R700_MC_VM_AGP_BASE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @RADEON_WRITE(i32 %22, i32 %23)
  br label %150

25:                                               ; preds = %2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @CHIP_R600, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @R600_MC_VM_AGP_BASE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @RADEON_WRITE(i32 %34, i32 %35)
  br label %149

37:                                               ; preds = %25
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @CHIP_RV515, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load i32, i32* @RV515_MC_AGP_BASE, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @R500_WRITE_MCIND(i32 %46, i32 %47)
  %49 = load i32, i32* @RV515_MC_AGP_BASE_2, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @R500_WRITE_MCIND(i32 %49, i32 %50)
  br label %148

52:                                               ; preds = %37
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CHIP_RS690, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @CHIP_RS740, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60, %52
  %69 = load i32, i32* @RS690_MC_AGP_BASE, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @RS690_WRITE_MCIND(i32 %69, i32 %70)
  %72 = load i32, i32* @RS690_MC_AGP_BASE_2, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @RS690_WRITE_MCIND(i32 %72, i32 %73)
  br label %147

75:                                               ; preds = %60
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @CHIP_RS600, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load i32, i32* @RS600_AGP_BASE, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @RS600_WRITE_MCIND(i32 %84, i32 %85)
  %87 = load i32, i32* @RS600_AGP_BASE_2, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @RS600_WRITE_MCIND(i32 %87, i32 %88)
  br label %146

90:                                               ; preds = %75
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @CHIP_RV515, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = load i32, i32* @R520_MC_AGP_BASE, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @R500_WRITE_MCIND(i32 %99, i32 %100)
  %102 = load i32, i32* @R520_MC_AGP_BASE_2, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @R500_WRITE_MCIND(i32 %102, i32 %103)
  br label %145

105:                                              ; preds = %90
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @CHIP_RS400, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %105
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @CHIP_RS480, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %113, %105
  %122 = load i32, i32* @RADEON_AGP_BASE, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @RADEON_WRITE(i32 %122, i32 %123)
  %125 = load i32, i32* @RS480_AGP_BASE_2, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @RADEON_WRITE(i32 %125, i32 %126)
  br label %144

128:                                              ; preds = %113
  %129 = load i32, i32* @RADEON_AGP_BASE, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @RADEON_WRITE(i32 %129, i32 %130)
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @CHIP_R200, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %128
  %140 = load i32, i32* @RADEON_AGP_BASE_2, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @RADEON_WRITE(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %128
  br label %144

144:                                              ; preds = %143, %121
  br label %145

145:                                              ; preds = %144, %98
  br label %146

146:                                              ; preds = %145, %83
  br label %147

147:                                              ; preds = %146, %68
  br label %148

148:                                              ; preds = %147, %45
  br label %149

149:                                              ; preds = %148, %33
  br label %150

150:                                              ; preds = %149, %21
  ret void
}

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

declare dso_local i32 @R500_WRITE_MCIND(i32, i32) #1

declare dso_local i32 @RS690_WRITE_MCIND(i32, i32) #1

declare dso_local i32 @RS600_WRITE_MCIND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
