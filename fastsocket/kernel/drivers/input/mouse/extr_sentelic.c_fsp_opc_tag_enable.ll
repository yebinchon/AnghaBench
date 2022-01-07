; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_opc_tag_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_opc_tag_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FSP_REG_OPC_QDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable get OPC state.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FSP_BIT_EN_OPC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to enable OPC tag.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @fsp_opc_tag_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_opc_tag_enable(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = load i32, i32* @FSP_REG_OPC_QDOWN, align 4
  %11 = call i32 @fsp_reg_read(%struct.psmouse* %9, i32 %10, i32* %6)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %61

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @FSP_BIT_EN_OPC_TAG, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FSP_BIT_EN_OPC_TAG, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %40 = call i32 @fsp_reg_write_enable(%struct.psmouse* %39, i32 1)
  %41 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %42 = load i32, i32* @FSP_REG_OPC_QDOWN, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @fsp_reg_write(%struct.psmouse* %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %46 = call i32 @fsp_reg_write_enable(%struct.psmouse* %45, i32 0)
  br label %47

47:                                               ; preds = %38, %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %52 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %50, %47
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @fsp_reg_read(%struct.psmouse*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @fsp_reg_write_enable(%struct.psmouse*, i32) #1

declare dso_local i32 @fsp_reg_write(%struct.psmouse*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
