; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_gtm.c_gtm_set_ref_timer16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_gtm.c_gtm_set_ref_timer16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtm_timer = type { i32, i64, i64, i64, i32, i64, %struct.gtm* }
%struct.gtm = type { i32, i32, %struct.gtm_timer* }

@GTMDR_ICLK_ICLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GTMDR_ICLK_SLGO = common dso_local global i32 0, align 4
@GTMDR_ORI = common dso_local global i32 0, align 4
@GTMDR_FRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gtm_timer*, i32, i32, i32)* @gtm_set_ref_timer16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtm_set_ref_timer16(%struct.gtm_timer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gtm_timer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gtm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.gtm_timer* %0, %struct.gtm_timer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %19 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %18, i32 0, i32 6
  %20 = load %struct.gtm*, %struct.gtm** %19, align 8
  store %struct.gtm* %20, %struct.gtm** %10, align 8
  %21 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %22 = load %struct.gtm*, %struct.gtm** %10, align 8
  %23 = getelementptr inbounds %struct.gtm, %struct.gtm* %22, i32 0, i32 2
  %24 = load %struct.gtm_timer*, %struct.gtm_timer** %23, align 8
  %25 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %24, i64 0
  %26 = ptrtoint %struct.gtm_timer* %21 to i64
  %27 = ptrtoint %struct.gtm_timer* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 56
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @GTMDR_ICLK_ICLK, align 4
  store i32 %31, i32* %13, align 4
  store i32 1048576, i32* %17, align 4
  %32 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %33 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* %17, align 4
  %38 = sdiv i32 %37, 256
  store i32 %38, i32* %17, align 4
  br label %39

39:                                               ; preds = %36, %4
  %40 = load %struct.gtm*, %struct.gtm** %10, align 8
  %41 = getelementptr inbounds %struct.gtm, %struct.gtm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %148

51:                                               ; preds = %39
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %17, align 4
  %54 = sdiv i32 %53, 16
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @GTMDR_ICLK_SLGO, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = udiv i32 %58, 16
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %12, align 4
  %62 = icmp ule i32 %61, 256
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sub i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %70

66:                                               ; preds = %60
  store i32 255, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = udiv i32 %67, 256
  %69 = sub i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.gtm*, %struct.gtm** %10, align 8
  %72 = getelementptr inbounds %struct.gtm, %struct.gtm* %71, i32 0, i32 1
  %73 = load i64, i64* %16, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %76 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @GTCFR_STP(i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @GTCFR_RST(i32 %80)
  %82 = or i32 %79, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @GTCFR_STP(i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @GTCFR_RST(i32 %86)
  %88 = or i32 %85, %87
  %89 = call i32 @clrsetbits_8(i32 %77, i32 %83, i32 %88)
  %90 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %91 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @GTCFR_STP(i32 %93)
  %95 = call i32 @setbits8(i32 %92, i32 %94)
  %96 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %97 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %70
  %101 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %102 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @out_be16(i64 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %70
  %107 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %108 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @GTMDR_SPS(i32 %111)
  %113 = or i32 %110, %112
  %114 = load i32, i32* @GTMDR_ORI, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = load i32, i32* @GTMDR_FRR, align 4
  br label %121

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  %123 = or i32 %115, %122
  %124 = call i32 @clrsetbits_be16(i32 %109, i32 65535, i32 %123)
  %125 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %126 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @out_be16(i64 %127, i32 0)
  %129 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %130 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @out_be16(i64 %131, i32 %132)
  %134 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %135 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @out_be16(i64 %136, i32 65535)
  %138 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %139 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @GTCFR_STP(i32 %141)
  %143 = call i32 @clrbits8(i32 %140, i32 %142)
  %144 = load %struct.gtm*, %struct.gtm** %10, align 8
  %145 = getelementptr inbounds %struct.gtm, %struct.gtm* %144, i32 0, i32 1
  %146 = load i64, i64* %16, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %121, %48
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clrsetbits_8(i32, i32, i32) #1

declare dso_local i32 @GTCFR_STP(i32) #1

declare dso_local i32 @GTCFR_RST(i32) #1

declare dso_local i32 @setbits8(i32, i32) #1

declare dso_local i32 @out_be16(i64, i32) #1

declare dso_local i32 @clrsetbits_be16(i32, i32, i32) #1

declare dso_local i32 @GTMDR_SPS(i32) #1

declare dso_local i32 @clrbits8(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
