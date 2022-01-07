; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_change_qos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_change_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, %struct.vc_map*, %struct.atm_dev* }
%struct.vc_map = type { i32, i32, i32 }
%struct.atm_dev = type { %struct.idt77252_dev* }
%struct.idt77252_dev = type { i32 }
%struct.atm_qos = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ATM_NONE = common dso_local global i64 0, align 8
@VCF_TX = common dso_local global i32 0, align 4
@VCF_IDLE = common dso_local global i32 0, align 4
@TCMDQ_LACR = common dso_local global i32 0, align 4
@SAR_REG_TCMDQ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VCF_RX = common dso_local global i32 0, align 4
@ATM_VF_HASQOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.atm_qos*, i32)* @idt77252_change_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_change_qos(%struct.atm_vcc* %0, %struct.atm_qos* %1, i32 %2) #0 {
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.atm_qos*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atm_dev*, align 8
  %8 = alloca %struct.idt77252_dev*, align 8
  %9 = alloca %struct.vc_map*, align 8
  %10 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.atm_qos* %1, %struct.atm_qos** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 3
  %13 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  store %struct.atm_dev* %13, %struct.atm_dev** %7, align 8
  %14 = load %struct.atm_dev*, %struct.atm_dev** %7, align 8
  %15 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %14, i32 0, i32 0
  %16 = load %struct.idt77252_dev*, %struct.idt77252_dev** %15, align 8
  store %struct.idt77252_dev* %16, %struct.idt77252_dev** %8, align 8
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %18 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %17, i32 0, i32 2
  %19 = load %struct.vc_map*, %struct.vc_map** %18, align 8
  store %struct.vc_map* %19, %struct.vc_map** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %21 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %24 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ATM_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %94

29:                                               ; preds = %3
  %30 = load i32, i32* @VCF_TX, align 4
  %31 = load %struct.vc_map*, %struct.vc_map** %9, align 8
  %32 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %31, i32 0, i32 2
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %37 = load %struct.vc_map*, %struct.vc_map** %9, align 8
  %38 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %39 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %40 = call i32 @idt77252_init_tx(%struct.idt77252_dev* %36, %struct.vc_map* %37, %struct.atm_vcc* %38, %struct.atm_qos* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %126

44:                                               ; preds = %35
  br label %93

45:                                               ; preds = %29
  %46 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %47 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  switch i64 %49, label %92 [
    i64 130, label %50
    i64 129, label %60
    i64 128, label %89
    i64 131, label %89
  ]

50:                                               ; preds = %45
  %51 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %52 = load %struct.vc_map*, %struct.vc_map** %9, align 8
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %54 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %55 = call i32 @idt77252_init_cbr(%struct.idt77252_dev* %51, %struct.vc_map* %52, %struct.atm_vcc* %53, %struct.atm_qos* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %126

59:                                               ; preds = %50
  br label %92

60:                                               ; preds = %45
  %61 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %62 = load %struct.vc_map*, %struct.vc_map** %9, align 8
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %64 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %65 = call i32 @idt77252_init_ubr(%struct.idt77252_dev* %61, %struct.vc_map* %62, %struct.atm_vcc* %63, %struct.atm_qos* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %126

69:                                               ; preds = %60
  %70 = load i32, i32* @VCF_IDLE, align 4
  %71 = load %struct.vc_map*, %struct.vc_map** %9, align 8
  %72 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %71, i32 0, i32 2
  %73 = call i32 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @TCMDQ_LACR, align 4
  %77 = load %struct.vc_map*, %struct.vc_map** %9, align 8
  %78 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %76, %80
  %82 = load %struct.vc_map*, %struct.vc_map** %9, align 8
  %83 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %81, %84
  %86 = load i32, i32* @SAR_REG_TCMDQ, align 4
  %87 = call i32 @writel(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %75, %69
  br label %92

89:                                               ; preds = %45, %45
  %90 = load i32, i32* @EOPNOTSUPP, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %126

92:                                               ; preds = %45, %88, %59
  br label %93

93:                                               ; preds = %92, %44
  br label %94

94:                                               ; preds = %93, %3
  %95 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %96 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ATM_NONE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %94
  %102 = load i32, i32* @VCF_RX, align 4
  %103 = load %struct.vc_map*, %struct.vc_map** %9, align 8
  %104 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %103, i32 0, i32 2
  %105 = call i32 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %101
  %108 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %109 = load %struct.vc_map*, %struct.vc_map** %9, align 8
  %110 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %111 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %112 = call i32 @idt77252_init_rx(%struct.idt77252_dev* %108, %struct.vc_map* %109, %struct.atm_vcc* %110, %struct.atm_qos* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %126

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %101, %94
  %118 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %119 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %118, i32 0, i32 1
  %120 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %121 = call i32 @memcpy(i32* %119, %struct.atm_qos* %120, i32 16)
  %122 = load i32, i32* @ATM_VF_HASQOS, align 4
  %123 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %124 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %123, i32 0, i32 0
  %125 = call i32 @set_bit(i32 %122, i32* %124)
  br label %126

126:                                              ; preds = %117, %115, %89, %68, %58, %43
  %127 = load %struct.idt77252_dev*, %struct.idt77252_dev** %8, align 8
  %128 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %10, align 4
  ret i32 %130
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @idt77252_init_tx(%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*) #1

declare dso_local i32 @idt77252_init_cbr(%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*) #1

declare dso_local i32 @idt77252_init_ubr(%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @idt77252_init_rx(%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*) #1

declare dso_local i32 @memcpy(i32*, %struct.atm_qos*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
