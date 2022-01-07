; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_reg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FSP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@FSP_CMD_TIMEOUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"WRITE REG: 0x%02x to 0x%02x (rc = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32, i32)* @fsp_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_reg_write(%struct.psmouse* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ps2dev*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  store %struct.ps2dev* %12, %struct.ps2dev** %8, align 8
  store i32 -1, i32* %10, align 4
  %13 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %14 = call i32 @ps2_begin_command(%struct.ps2dev* %13)
  %15 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %16 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %17 = call i64 @ps2_sendbyte(%struct.ps2dev* %15, i8 zeroext -13, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %85

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call zeroext i8 @fsp_test_invert_cmd(i32 %21)
  store i8 %22, i8* %9, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %28 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %29 = call i64 @ps2_sendbyte(%struct.ps2dev* %27, i8 zeroext 116, i32 %28)
  br label %45

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = call zeroext i8 @fsp_test_swap_cmd(i32 %31)
  store i8 %32, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %38 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %39 = call i64 @ps2_sendbyte(%struct.ps2dev* %37, i8 zeroext 119, i32 %38)
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %42 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %43 = call i64 @ps2_sendbyte(%struct.ps2dev* %41, i8 zeroext 85, i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %47 = load i8, i8* %9, align 1
  %48 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %49 = call i64 @ps2_sendbyte(%struct.ps2dev* %46, i8 zeroext %47, i32 %48)
  %50 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %51 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %52 = call i64 @ps2_sendbyte(%struct.ps2dev* %50, i8 zeroext -13, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %97

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = call zeroext i8 @fsp_test_invert_cmd(i32 %56)
  store i8 %57, i8* %9, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %63 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %64 = call i64 @ps2_sendbyte(%struct.ps2dev* %62, i8 zeroext 71, i32 %63)
  br label %80

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = call zeroext i8 @fsp_test_swap_cmd(i32 %66)
  store i8 %67, i8* %9, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %73 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %74 = call i64 @ps2_sendbyte(%struct.ps2dev* %72, i8 zeroext 68, i32 %73)
  br label %79

75:                                               ; preds = %65
  %76 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %77 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %78 = call i64 @ps2_sendbyte(%struct.ps2dev* %76, i8 zeroext 51, i32 %77)
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %61
  %81 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %82 = load i8, i8* %9, align 1
  %83 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %84 = call i64 @ps2_sendbyte(%struct.ps2dev* %81, i8 zeroext %82, i32 %83)
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %80, %19
  %86 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %87 = call i32 @ps2_end_command(%struct.ps2dev* %86)
  %88 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %89 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @dev_dbg(i32* %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %85, %54
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i64 @ps2_sendbyte(%struct.ps2dev*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @fsp_test_invert_cmd(i32) #1

declare dso_local zeroext i8 @fsp_test_swap_cmd(i32) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
