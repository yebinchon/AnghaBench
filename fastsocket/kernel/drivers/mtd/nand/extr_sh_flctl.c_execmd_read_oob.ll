; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_execmd_read_oob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_execmd_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i32*, i64 }

@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @execmd_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execmd_read_oob(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_flctl*, align 8
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %7)
  store %struct.sh_flctl* %8, %struct.sh_flctl** %5, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = load i32, i32* @NAND_CMD_READ0, align 4
  %11 = load i32, i32* @NAND_CMD_READSTART, align 4
  %12 = shl i32 %11, 8
  %13 = load i32, i32* @NAND_CMD_READ0, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @set_cmd_regs(%struct.mtd_info* %9, i32 %10, i32 %14)
  %16 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %17 = call i32 @empty_fifo(%struct.sh_flctl* %16)
  %18 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %19 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 48
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %28 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 255, i32* %32, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @set_addr(%struct.mtd_info* %37, i32 2096, i32 %38)
  %40 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %41 = call i32 @FLDTCNTR(%struct.sh_flctl* %40)
  %42 = call i32 @writel(i32 16, i32 %41)
  %43 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %44 = call i32 @start_translation(%struct.sh_flctl* %43)
  %45 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %46 = call i32 @read_fiforeg(%struct.sh_flctl* %45, i32 16, i32 48)
  %47 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %48 = call i32 @wait_completion(%struct.sh_flctl* %47)
  br label %62

49:                                               ; preds = %2
  %50 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @set_addr(%struct.mtd_info* %50, i32 512, i32 %51)
  %53 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %54 = call i32 @FLDTCNTR(%struct.sh_flctl* %53)
  %55 = call i32 @writel(i32 16, i32 %54)
  %56 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %57 = call i32 @start_translation(%struct.sh_flctl* %56)
  %58 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %59 = call i32 @read_fiforeg(%struct.sh_flctl* %58, i32 16, i32 0)
  %60 = load %struct.sh_flctl*, %struct.sh_flctl** %5, align 8
  %61 = call i32 @wait_completion(%struct.sh_flctl* %60)
  br label %62

62:                                               ; preds = %49, %36
  ret void
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @set_cmd_regs(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @empty_fifo(%struct.sh_flctl*) #1

declare dso_local i32 @set_addr(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @FLDTCNTR(%struct.sh_flctl*) #1

declare dso_local i32 @start_translation(%struct.sh_flctl*) #1

declare dso_local i32 @read_fiforeg(%struct.sh_flctl*, i32, i32) #1

declare dso_local i32 @wait_completion(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
