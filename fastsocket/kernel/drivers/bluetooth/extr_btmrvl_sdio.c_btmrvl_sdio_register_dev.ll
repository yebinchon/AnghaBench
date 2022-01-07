; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_register_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { i32, %struct.sdio_func* }
%struct.sdio_func = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Error: card or function is NULL!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"sdio_enable_func() failed: ret=%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@btmrvl_sdio_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"sdio_claim_irq failed: ret=%d\00", align 1
@SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot set SDIO block size\00", align 1
@IO_PORT_0_REG = common dso_local global i32 0, align 4
@IO_PORT_1_REG = common dso_local global i32 0, align 4
@IO_PORT_2_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"SDIO FUNC%d IO port: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*)* @btmrvl_sdio_register_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_register_dev(%struct.btmrvl_sdio_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btmrvl_sdio_card*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %8 = icmp ne %struct.btmrvl_sdio_card* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %11 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %10, i32 0, i32 1
  %12 = load %struct.sdio_func*, %struct.sdio_func** %11, align 8
  %13 = icmp ne %struct.sdio_func* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9, %1
  %15 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %120

18:                                               ; preds = %9
  %19 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %20 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %19, i32 0, i32 1
  %21 = load %struct.sdio_func*, %struct.sdio_func** %20, align 8
  store %struct.sdio_func* %21, %struct.sdio_func** %4, align 8
  %22 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %23 = call i32 @sdio_claim_host(%struct.sdio_func* %22)
  %24 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %25 = call i32 @sdio_enable_func(%struct.sdio_func* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %117

33:                                               ; preds = %18
  %34 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %35 = load i32, i32* @btmrvl_sdio_interrupt, align 4
  %36 = call i32 @sdio_claim_irq(%struct.sdio_func* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %114

44:                                               ; preds = %33
  %45 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %46 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %45, i32 0, i32 1
  %47 = load %struct.sdio_func*, %struct.sdio_func** %46, align 8
  %48 = load i32, i32* @SDIO_BLOCK_SIZE, align 4
  %49 = call i32 @sdio_set_block_size(%struct.sdio_func* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %111

56:                                               ; preds = %44
  %57 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %58 = load i32, i32* @IO_PORT_0_REG, align 4
  %59 = call i32 @sdio_readb(%struct.sdio_func* %57, i32 %58, i32* %6)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %111

65:                                               ; preds = %56
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %68 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %70 = load i32, i32* @IO_PORT_1_REG, align 4
  %71 = call i32 @sdio_readb(%struct.sdio_func* %69, i32 %70, i32* %6)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %111

77:                                               ; preds = %65
  %78 = load i32, i32* %5, align 4
  %79 = shl i32 %78, 8
  %80 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %81 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %85 = load i32, i32* @IO_PORT_2_REG, align 4
  %86 = call i32 @sdio_readb(%struct.sdio_func* %84, i32 %85, i32* %6)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %111

92:                                               ; preds = %77
  %93 = load i32, i32* %5, align 4
  %94 = shl i32 %93, 16
  %95 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %96 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %100 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %103 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %107 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %108 = call i32 @sdio_set_drvdata(%struct.sdio_func* %106, %struct.btmrvl_sdio_card* %107)
  %109 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %110 = call i32 @sdio_release_host(%struct.sdio_func* %109)
  store i32 0, i32* %2, align 4
  br label %122

111:                                              ; preds = %89, %74, %62, %52
  %112 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %113 = call i32 @sdio_release_irq(%struct.sdio_func* %112)
  br label %114

114:                                              ; preds = %111, %39
  %115 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %116 = call i32 @sdio_disable_func(%struct.sdio_func* %115)
  br label %117

117:                                              ; preds = %114, %28
  %118 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %119 = call i32 @sdio_release_host(%struct.sdio_func* %118)
  br label %120

120:                                              ; preds = %117, %14
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %92
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_irq(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_readb(%struct.sdio_func*, i32, i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.btmrvl_sdio_card*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
