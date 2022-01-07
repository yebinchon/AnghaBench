; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_execmd_write_page_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_execmd_write_page_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i32, i64 }

@ACM_SACCES_MODE = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @execmd_write_page_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execmd_write_page_sector(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.sh_flctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %9 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %8)
  store %struct.sh_flctl* %9, %struct.sh_flctl** %3, align 8
  %10 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %11 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %14 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 4, i32* %7, align 4
  br label %19

18:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %21 = call i32 @FLCMNCR(%struct.sh_flctl* %20)
  %22 = call i32 @readl(i32 %21)
  %23 = load i32, i32* @ACM_SACCES_MODE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %26 = call i32 @FLCMNCR(%struct.sh_flctl* %25)
  %27 = call i32 @writel(i32 %24, i32 %26)
  %28 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %29 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %30 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %31 = shl i32 %30, 8
  %32 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @set_cmd_regs(%struct.mtd_info* %28, i32 %29, i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %77, %19
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %35
  %40 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %41 = call i32 @empty_fifo(%struct.sh_flctl* %40)
  %42 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %43 = call i32 @FLCMDCR(%struct.sh_flctl* %42)
  %44 = call i32 @readl(i32 %43)
  %45 = or i32 %44, 1
  %46 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %47 = call i32 @FLCMDCR(%struct.sh_flctl* %46)
  %48 = call i32 @writel(i32 %45, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 %49, 2
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %54 = call i32 @FLADR(%struct.sh_flctl* %53)
  %55 = call i32 @writel(i32 %52, i32 %54)
  %56 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %57 = call i32 @start_translation(%struct.sh_flctl* %56)
  %58 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 512, %59
  %61 = call i32 @write_fiforeg(%struct.sh_flctl* %58, i32 512, i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %71, %39
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %67 = call i32 @wait_wecfifo_ready(%struct.sh_flctl* %66)
  %68 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %69 = call i32 @FLECFIFO(%struct.sh_flctl* %68)
  %70 = call i32 @writel(i32 -1, i32 %69)
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %62

74:                                               ; preds = %62
  %75 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %76 = call i32 @wait_completion(%struct.sh_flctl* %75)
  br label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %35

80:                                               ; preds = %35
  %81 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %82 = call i32 @FLCMNCR(%struct.sh_flctl* %81)
  %83 = call i32 @readl(i32 %82)
  %84 = load i32, i32* @ACM_SACCES_MODE, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %88 = call i32 @FLCMNCR(%struct.sh_flctl* %87)
  %89 = call i32 @writel(i32 %86, i32 %88)
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

declare dso_local i32 @write_fiforeg(%struct.sh_flctl*, i32, i32) #1

declare dso_local i32 @wait_wecfifo_ready(%struct.sh_flctl*) #1

declare dso_local i32 @FLECFIFO(%struct.sh_flctl*) #1

declare dso_local i32 @wait_completion(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
