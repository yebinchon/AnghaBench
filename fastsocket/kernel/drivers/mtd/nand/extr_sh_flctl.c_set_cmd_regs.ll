; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_set_cmd_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_set_cmd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i32, i32, i64 }

@SNAND_E = common dso_local global i32 0, align 4
@DOCMD1_E = common dso_local global i32 0, align 4
@DOADR_E = common dso_local global i32 0, align 4
@DOCMD2_E = common dso_local global i32 0, align 4
@CDSRC_E = common dso_local global i32 0, align 4
@SELRW = common dso_local global i32 0, align 4
@ADRCNT_1 = common dso_local global i32 0, align 4
@DOSR_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @set_cmd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cmd_regs(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_flctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %11)
  store %struct.sh_flctl* %12, %struct.sh_flctl** %7, align 8
  %13 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %14 = call i32 @FLCMNCR(%struct.sh_flctl* %13)
  %15 = call i32 @readl(i32 %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %17 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @SNAND_E, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @SNAND_E, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* @DOCMD1_E, align 4
  %31 = load i32, i32* @DOADR_E, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %81 [
    i32 135, label %34
    i32 133, label %41
    i32 131, label %41
    i32 129, label %48
    i32 134, label %53
    i32 132, label %64
    i32 128, label %70
    i32 130, label %70
  ]

34:                                               ; preds = %29
  %35 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %36 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @DOCMD2_E, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %82

41:                                               ; preds = %29, %29
  %42 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %43 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @CDSRC_E, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %82

48:                                               ; preds = %29
  %49 = load i32, i32* @DOADR_E, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %82

53:                                               ; preds = %29
  %54 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %55 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @DOCMD2_E, align 4
  %58 = load i32, i32* @CDSRC_E, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SELRW, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %82

64:                                               ; preds = %29
  %65 = load i32, i32* @SNAND_E, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @ADRCNT_1, align 4
  store i32 %69, i32* %10, align 4
  br label %82

70:                                               ; preds = %29, %29
  %71 = load i32, i32* @SNAND_E, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @DOADR_E, align 4
  %76 = load i32, i32* @DOSR_E, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %82

81:                                               ; preds = %29
  br label %82

82:                                               ; preds = %81, %70, %64, %53, %48, %41, %34
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %88 = call i32 @FLCMNCR(%struct.sh_flctl* %87)
  %89 = call i32 @writel(i32 %86, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %92 = call i32 @FLCMDCR(%struct.sh_flctl* %91)
  %93 = call i32 @writel(i32 %90, i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.sh_flctl*, %struct.sh_flctl** %7, align 8
  %96 = call i32 @FLCMCDR(%struct.sh_flctl* %95)
  %97 = call i32 @writel(i32 %94, i32 %96)
  ret void
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @FLCMNCR(%struct.sh_flctl*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @FLCMDCR(%struct.sh_flctl*) #1

declare dso_local i32 @FLCMCDR(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
