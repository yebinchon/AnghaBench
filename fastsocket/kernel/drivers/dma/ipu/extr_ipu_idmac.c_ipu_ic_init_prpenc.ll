; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_ic_init_prpenc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_ic_init_prpenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu = type { i32 }
%union.ipu_channel_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Colourspace conversion unsupported!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IC_PRP_ENC_RSC = common dso_local global i32 0, align 4
@IC_CONF = common dso_local global i32 0, align 4
@IC_CONF_RWS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu*, %union.ipu_channel_param*, i32)* @ipu_ic_init_prpenc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_ic_init_prpenc(%struct.ipu* %0, %union.ipu_channel_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu*, align 8
  %6 = alloca %union.ipu_channel_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ipu* %0, %struct.ipu** %5, align 8
  store %union.ipu_channel_param* %1, %union.ipu_channel_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %union.ipu_channel_param*, %union.ipu_channel_param** %6, align 8
  %15 = bitcast %union.ipu_channel_param* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %union.ipu_channel_param*, %union.ipu_channel_param** %6, align 8
  %19 = bitcast %union.ipu_channel_param* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @calc_resize_coeffs(i32 %17, i32 %21, i32* %11, i32* %10)
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 %23, 30
  %25 = load i32, i32* %11, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %24, %26
  store i32 %27, i32* %8, align 4
  %28 = load %union.ipu_channel_param*, %union.ipu_channel_param** %6, align 8
  %29 = bitcast %union.ipu_channel_param* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %union.ipu_channel_param*, %union.ipu_channel_param** %6, align 8
  %33 = bitcast %union.ipu_channel_param* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @calc_resize_coeffs(i32 %31, i32 %35, i32* %11, i32* %10)
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 %37, 14
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load %union.ipu_channel_param*, %union.ipu_channel_param** %6, align 8
  %44 = bitcast %union.ipu_channel_param* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @format_to_colorspace(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load %union.ipu_channel_param*, %union.ipu_channel_param** %6, align 8
  %49 = bitcast %union.ipu_channel_param* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @format_to_colorspace(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %3
  %57 = load %struct.ipu*, %struct.ipu** %5, align 8
  %58 = getelementptr inbounds %struct.ipu, %struct.ipu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %87

63:                                               ; preds = %3
  %64 = load %struct.ipu*, %struct.ipu** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @IC_PRP_ENC_RSC, align 4
  %67 = call i32 @idmac_write_icreg(%struct.ipu* %64, i32 %65, i32 %66)
  %68 = load %struct.ipu*, %struct.ipu** %5, align 8
  %69 = load i32, i32* @IC_CONF, align 4
  %70 = call i32 @idmac_read_icreg(%struct.ipu* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load i32, i32* @IC_CONF_RWS_EN, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %82

78:                                               ; preds = %63
  %79 = load i32, i32* @IC_CONF_RWS_EN, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.ipu*, %struct.ipu** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @IC_CONF, align 4
  %86 = call i32 @idmac_write_icreg(%struct.ipu* %83, i32 %84, i32 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %56
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @calc_resize_coeffs(i32, i32, i32*, i32*) #1

declare dso_local i32 @format_to_colorspace(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @idmac_write_icreg(%struct.ipu*, i32, i32) #1

declare dso_local i32 @idmac_read_icreg(%struct.ipu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
