; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_execmd_read_page_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_execmd_read_page_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i32*, i32*, i64 }

@ACM_SACCES_MODE = common dso_local global i32 0, align 4
@_4ECCCORRECT = common dso_local global i32 0, align 4
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @execmd_read_page_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execmd_read_page_sector(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_flctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %9)
  store %struct.sh_flctl* %10, %struct.sh_flctl** %5, align 8
  %11 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %12 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 4, i32* %7, align 4
  br label %17

16:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %19 = call i32 @FLCMNCR(%struct.sh_flctl* %18)
  %20 = call i32 @readl(i32 %19)
  %21 = load i32, i32* @ACM_SACCES_MODE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @_4ECCCORRECT, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %26 = call i32 @FLCMNCR(%struct.sh_flctl* %25)
  %27 = call i32 @writel(i32 %24, i32 %26)
  %28 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %29 = load i32, i32* @NAND_CMD_READ0, align 4
  %30 = load i32, i32* @NAND_CMD_READSTART, align 4
  %31 = shl i32 %30, 8
  %32 = load i32, i32* @NAND_CMD_READ0, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @set_cmd_regs(%struct.mtd_info* %28, i32 %29, i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %91, %17
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %35
  %40 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %41 = call i32 @empty_fifo(%struct.sh_flctl* %40)
  %42 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %43 = call i32 @FLCMDCR(%struct.sh_flctl* %42)
  %44 = call i32 @readl(i32 %43)
  %45 = or i32 %44, 1
  %46 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %47 = call i32 @FLCMDCR(%struct.sh_flctl* %46)
  %48 = call i32 @writel(i32 %45, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = shl i32 %49, 2
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %54 = call i32 @FLADR(%struct.sh_flctl* %53)
  %55 = call i32 @writel(i32 %52, i32 %54)
  %56 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %57 = call i32 @start_translation(%struct.sh_flctl* %56)
  %58 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 512, %59
  %61 = call i32 @read_fiforeg(%struct.sh_flctl* %58, i32 512, i32 %60)
  %62 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %63 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %64 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %67 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 16, %69
  %71 = add nsw i32 %68, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %65, i64 %72
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @read_ecfiforeg(%struct.sh_flctl* %62, i32* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %39
  %79 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %80 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %39
  %86 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %87 = call i32 @FL4ECCCR(%struct.sh_flctl* %86)
  %88 = call i32 @writel(i32 0, i32 %87)
  %89 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %90 = call i32 @wait_completion(%struct.sh_flctl* %89)
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %35

94:                                               ; preds = %35
  %95 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %96 = call i32 @FLCMNCR(%struct.sh_flctl* %95)
  %97 = call i32 @readl(i32 %96)
  %98 = load i32, i32* @ACM_SACCES_MODE, align 4
  %99 = load i32, i32* @_4ECCCORRECT, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = and i32 %97, %101
  %103 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %104 = call i32 @FLCMNCR(%struct.sh_flctl* %103)
  %105 = call i32 @writel(i32 %102, i32 %104)
  ret void
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @FLCMNCR(%struct.sh_flctl*) #1

declare dso_local i32 @set_cmd_regs(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @empty_fifo(%struct.sh_flctl*) #1

declare dso_local i32 @FLCMDCR(%struct.sh_flctl*) #1

declare dso_local i32 @FLADR(%struct.sh_flctl*) #1

declare dso_local i32 @start_translation(%struct.sh_flctl*) #1

declare dso_local i32 @read_fiforeg(%struct.sh_flctl*, i32, i32) #1

declare dso_local i32 @read_ecfiforeg(%struct.sh_flctl*, i32*, i32) #1

declare dso_local i32 @FL4ECCCR(%struct.sh_flctl*) #1

declare dso_local i32 @wait_completion(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
