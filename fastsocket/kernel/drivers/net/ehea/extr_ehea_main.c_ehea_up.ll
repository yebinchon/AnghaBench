; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EHEA_PORT_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"port_res_failed\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ehea_configure_port failed. ret:%d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"reg_interrupts failed. ret:%d\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"activate_qp failed\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out_free_irqs\00", align 1
@H_REG_BCMC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed starting %s. ret=%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ehea_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_up(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehea_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %7)
  store %struct.ehea_port* %8, %struct.ehea_port** %6, align 8
  %9 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %10 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EHEA_PORT_UP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %124

15:                                               ; preds = %1
  %16 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %17 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %18 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ehea_port_res_setup(%struct.ehea_port* %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %111

25:                                               ; preds = %15
  %26 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %27 = call i32 @ehea_configure_port(%struct.ehea_port* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %108

33:                                               ; preds = %25
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @ehea_reg_interrupts(%struct.net_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %108

41:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %66, %41
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %45 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %50 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %53 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ehea_activate_qp(i32 %51, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %105

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %42

69:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %73 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %78 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = call i32 @ehea_fill_port_res(%struct.TYPE_2__* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %105

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %70

92:                                               ; preds = %70
  %93 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %94 = load i32, i32* @H_REG_BCMC, align 4
  %95 = call i32 @ehea_broadcast_reg_helper(%struct.ehea_port* %93, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %105

101:                                              ; preds = %92
  %102 = load i64, i64* @EHEA_PORT_UP, align 8
  %103 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %104 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  store i32 0, i32* %4, align 4
  br label %111

105:                                              ; preds = %98, %86, %63
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = call i32 @ehea_free_interrupts(%struct.net_device* %106)
  br label %108

108:                                              ; preds = %105, %38, %30
  %109 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %110 = call i32 @ehea_clean_all_portres(%struct.ehea_port* %109)
  br label %111

111:                                              ; preds = %108, %101, %23
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.net_device*, %struct.net_device** %3, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @ehea_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %111
  %121 = call i32 (...) @ehea_update_bcmc_registrations()
  %122 = call i32 (...) @ehea_update_firmware_handles()
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %120, %14
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ehea_port_res_setup(%struct.ehea_port*, i32) #1

declare dso_local i32 @ehea_error(i8*, ...) #1

declare dso_local i32 @ehea_configure_port(%struct.ehea_port*) #1

declare dso_local i32 @ehea_reg_interrupts(%struct.net_device*) #1

declare dso_local i32 @ehea_activate_qp(i32, i32) #1

declare dso_local i32 @ehea_fill_port_res(%struct.TYPE_2__*) #1

declare dso_local i32 @ehea_broadcast_reg_helper(%struct.ehea_port*, i32) #1

declare dso_local i32 @ehea_free_interrupts(%struct.net_device*) #1

declare dso_local i32 @ehea_clean_all_portres(%struct.ehea_port*) #1

declare dso_local i32 @ehea_info(i8*, i32, i32) #1

declare dso_local i32 @ehea_update_bcmc_registrations(...) #1

declare dso_local i32 @ehea_update_firmware_handles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
