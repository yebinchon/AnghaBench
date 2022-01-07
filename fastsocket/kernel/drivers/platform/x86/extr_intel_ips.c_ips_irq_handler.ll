; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@THM_TSES = common dso_local global i32 0, align 4
@THM_TES = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"TSES: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"TES: 0x%02x\0A\00", align 1
@THM_STS = common dso_local global i32 0, align 4
@THM_TC1 = common dso_local global i32 0, align 4
@STS_NVV = common dso_local global i32 0, align 4
@STS_PCPL_MASK = common dso_local global i32 0, align 4
@STS_PCPL_SHIFT = common dso_local global i32 0, align 4
@STS_GPL_MASK = common dso_local global i32 0, align 4
@STS_GPL_SHIFT = common dso_local global i32 0, align 4
@STS_PCTD_DIS = common dso_local global i32 0, align 4
@STS_GTD_DIS = common dso_local global i32 0, align 4
@STS_PTL_MASK = common dso_local global i32 0, align 4
@STS_PTL_SHIFT = common dso_local global i32 0, align 4
@STS_PPL_MASK = common dso_local global i32 0, align 4
@STS_PPL_SHIFT = common dso_local global i32 0, align 4
@THM_SEC = common dso_local global i32 0, align 4
@SEC_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"thermal trip occurred, tses: 0x%04x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ips_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ips_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ips_driver*
  store %struct.ips_driver* %12, %struct.ips_driver** %6, align 8
  %13 = load i32, i32* @THM_TSES, align 4
  %14 = call i32 @thm_readb(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @THM_TES, align 4
  %16 = call i32 @thm_readb(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %132

24:                                               ; preds = %19, %2
  %25 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %26 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %25, i32 0, i32 6
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %32 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %31, i32 0, i32 6
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %117

40:                                               ; preds = %24
  %41 = load i32, i32* @THM_STS, align 4
  %42 = call i32 @thm_readl(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @THM_TC1, align 4
  %44 = call i32 @thm_readl(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @STS_NVV, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %113

49:                                               ; preds = %40
  %50 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %51 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %50, i32 0, i32 7
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @STS_PCPL_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @STS_PCPL_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %59 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @STS_GPL_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @STS_GPL_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %66 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @STS_PCTD_DIS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %74 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %76 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %78 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %49
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @STS_GTD_DIS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %89 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %81, %49
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @STS_PTL_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @STS_PTL_SHIFT, align 4
  %95 = ashr i32 %93, %94
  %96 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %97 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @STS_PPL_MASK, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @STS_PPL_SHIFT, align 4
  %102 = ashr i32 %100, %101
  %103 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %104 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %106 = call i32 @verify_limits(%struct.ips_driver* %105)
  %107 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %108 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %107, i32 0, i32 7
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load i32, i32* @THM_SEC, align 4
  %111 = load i32, i32* @SEC_ACK, align 4
  %112 = call i32 @thm_writeb(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %90, %40
  %114 = load i32, i32* @THM_TES, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @thm_writeb(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %24
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %122 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %121, i32 0, i32 6
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @dev_warn(i32* %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @THM_TSES, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @thm_writeb(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %120, %117
  %131 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %22
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @thm_readb(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @thm_readl(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @verify_limits(%struct.ips_driver*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @thm_writeb(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
