; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_get_ldump_data_section.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_get_ldump_data_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IPR_UPROCI_RESET_ALERT = common dso_local global i32 0, align 4
@IPR_UPROCI_IO_DEBUG_ALERT = common dso_local global i32 0, align 4
@IPR_LDUMP_MAX_LONG_ACK_DELAY_IN_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IOA dump long data transfer timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IPR_PCII_IO_DEBUG_ACKNOWLEDGE = common dso_local global i32 0, align 4
@IPR_LDUMP_MAX_SHORT_ACK_DELAY_IN_USEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"IOA dump short data transfer timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_ioa_cfg*, i32, i32*, i32)* @ipr_get_ldump_data_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_get_ldump_data_section(%struct.ipr_ioa_cfg* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipr_ioa_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %14 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ipr_get_sis64_dump_data_section(%struct.ipr_ioa_cfg* %18, i32 %19, i32* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %142

23:                                               ; preds = %4
  %24 = load volatile i32, i32* @IPR_UPROCI_RESET_ALERT, align 4
  %25 = load volatile i32, i32* @IPR_UPROCI_IO_DEBUG_ALERT, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %28 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @writel(i32 %26, i32 %30)
  %32 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %33 = load i32, i32* @IPR_LDUMP_MAX_LONG_ACK_DELAY_IN_USEC, align 4
  %34 = call i64 @ipr_wait_iodbg_ack(%struct.ipr_ioa_cfg* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %142

44:                                               ; preds = %23
  %45 = load volatile i32, i32* @IPR_PCII_IO_DEBUG_ACKNOWLEDGE, align 4
  %46 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %47 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @writel(i32 %45, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %53 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @writel(i32 %51, i32 %54)
  %56 = load volatile i32, i32* @IPR_UPROCI_RESET_ALERT, align 4
  %57 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %58 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @writel(i32 %56, i32 %60)
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %100, %44
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %68 = load i32, i32* @IPR_LDUMP_MAX_SHORT_ACK_DELAY_IN_USEC, align 4
  %69 = call i64 @ipr_wait_iodbg_ack(%struct.ipr_ioa_cfg* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %73 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %142

79:                                               ; preds = %66
  %80 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %81 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @readl(i32 %82)
  %84 = call i32 @cpu_to_be32(i32 %83)
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %79
  %93 = load volatile i32, i32* @IPR_PCII_IO_DEBUG_ACKNOWLEDGE, align 4
  %94 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %95 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @writel(i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %92, %79
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %62

103:                                              ; preds = %62
  %104 = load volatile i32, i32* @IPR_UPROCI_RESET_ALERT, align 4
  %105 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %106 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @writel(i32 %104, i32 %108)
  %110 = load volatile i32, i32* @IPR_UPROCI_IO_DEBUG_ALERT, align 4
  %111 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %112 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @writel(i32 %110, i32 %114)
  %116 = load volatile i32, i32* @IPR_PCII_IO_DEBUG_ACKNOWLEDGE, align 4
  %117 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %118 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @writel(i32 %116, i32 %120)
  br label %122

122:                                              ; preds = %137, %103
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @IPR_LDUMP_MAX_SHORT_ACK_DELAY_IN_USEC, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %128 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @readl(i32 %130)
  store volatile i32 %131, i32* %10, align 4
  %132 = load volatile i32, i32* %10, align 4
  %133 = load volatile i32, i32* @IPR_UPROCI_RESET_ALERT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %142

137:                                              ; preds = %126
  %138 = call i32 @udelay(i32 10)
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 10
  store i32 %140, i32* %12, align 4
  br label %122

141:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %136, %71, %36, %17
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @ipr_get_sis64_dump_data_section(%struct.ipr_ioa_cfg*, i32, i32*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @ipr_wait_iodbg_ack(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
