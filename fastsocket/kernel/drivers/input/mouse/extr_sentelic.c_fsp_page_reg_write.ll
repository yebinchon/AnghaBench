; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_page_reg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_page_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FSP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@FSP_CMD_TIMEOUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WRITE PAGE REG: to 0x%02x (rc = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @fsp_page_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_page_reg_write(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  store %struct.ps2dev* %10, %struct.ps2dev** %6, align 8
  store i32 -1, i32* %8, align 4
  %11 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %12 = call i32 @ps2_begin_command(%struct.ps2dev* %11)
  %13 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %14 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %15 = call i64 @ps2_sendbyte(%struct.ps2dev* %13, i8 zeroext -13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %20 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %21 = call i64 @ps2_sendbyte(%struct.ps2dev* %19, i8 zeroext 56, i32 %20)
  %22 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %23 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %24 = call i64 @ps2_sendbyte(%struct.ps2dev* %22, i8 zeroext -120, i32 %23)
  %25 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %26 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %27 = call i64 @ps2_sendbyte(%struct.ps2dev* %25, i8 zeroext -13, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %71

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = call zeroext i8 @fsp_test_invert_cmd(i32 %31)
  store i8 %32, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %38 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %39 = call i64 @ps2_sendbyte(%struct.ps2dev* %37, i8 zeroext 71, i32 %38)
  br label %55

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = call zeroext i8 @fsp_test_swap_cmd(i32 %41)
  store i8 %42, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %48 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %49 = call i64 @ps2_sendbyte(%struct.ps2dev* %47, i8 zeroext 68, i32 %48)
  br label %54

50:                                               ; preds = %40
  %51 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %52 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %53 = call i64 @ps2_sendbyte(%struct.ps2dev* %51, i8 zeroext 51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %57 = load i8, i8* %7, align 1
  %58 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %59 = call i64 @ps2_sendbyte(%struct.ps2dev* %56, i8 zeroext %57, i32 %58)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %17
  %61 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %62 = call i32 @ps2_end_command(%struct.ps2dev* %61)
  %63 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %64 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %60, %29
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i64 @ps2_sendbyte(%struct.ps2dev*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @fsp_test_invert_cmd(i32) #1

declare dso_local zeroext i8 @fsp_test_swap_cmd(i32) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
