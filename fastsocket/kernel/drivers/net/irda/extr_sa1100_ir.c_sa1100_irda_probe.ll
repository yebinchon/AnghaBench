; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.net_device = type { i32, i32* }
%struct.sa1100_irda = type { %struct.TYPE_10__, %struct.TYPE_10__, i32, %struct.TYPE_11__, i64, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@Ser2UTCR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IrDA\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@Ser2HSCR0 = common dso_local global i32 0, align 4
@Ser2HSCR2 = common dso_local global i32 0, align 4
@sa1100_irda_netdev_ops = common dso_local global i32 0, align 4
@IRQ_Ser2ICP = common dso_local global i32 0, align 4
@IR_9600 = common dso_local global i32 0, align 4
@max_rate = common dso_local global i32 0, align 4
@IR_4000000 = common dso_local global i32 0, align 4
@IR_115200 = common dso_local global i32 0, align 4
@IR_57600 = common dso_local global i32 0, align 4
@IR_38400 = common dso_local global i32 0, align 4
@IR_19200 = common dso_local global i32 0, align 4
@UTCR4_HPSIR = common dso_local global i32 0, align 4
@tx_lpm = common dso_local global i64 0, align 8
@UTCR4_Z1_6us = common dso_local global i32 0, align 4
@Ser2UTCR3 = common dso_local global i64 0, align 8
@Ser2UTCR4 = common dso_local global i32 0, align 4
@HSCR0_UART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sa1100_irda_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_irda_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sa1100_irda*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %192

16:                                               ; preds = %1
  %17 = load i32, i32* @Ser2UTCR0, align 4
  %18 = call i32 @__PREG(i32 %17)
  %19 = call i64 @request_mem_region(i32 %18, i32 36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi i32 [ 0, %21 ], [ %24, %22 ]
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %190

30:                                               ; preds = %25
  %31 = load i32, i32* @Ser2HSCR0, align 4
  %32 = call i32 @__PREG(i32 %31)
  %33 = call i64 @request_mem_region(i32 %32, i32 28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i32 [ 0, %35 ], [ %38, %36 ]
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %185

44:                                               ; preds = %39
  %45 = load i32, i32* @Ser2HSCR2, align 4
  %46 = call i32 @__PREG(i32 %45)
  %47 = call i64 @request_mem_region(i32 %46, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi i32 [ 0, %49 ], [ %52, %50 ]
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %181

58:                                               ; preds = %53
  %59 = call %struct.net_device* @alloc_irdadev(i32 40)
  store %struct.net_device* %59, %struct.net_device** %4, align 8
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = icmp ne %struct.net_device* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %177

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call %struct.sa1100_irda* @netdev_priv(%struct.net_device* %64)
  store %struct.sa1100_irda* %65, %struct.sa1100_irda** %5, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %69 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %68, i32 0, i32 5
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %69, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %75 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %77 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %76, i32 0, i32 0
  %78 = call i32 @sa1100_irda_init_iobuf(%struct.TYPE_10__* %77, i32 14384)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %63
  br label %164

82:                                               ; preds = %63
  %83 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %84 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %83, i32 0, i32 1
  %85 = call i32 @sa1100_irda_init_iobuf(%struct.TYPE_10__* %84, i32 4000)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %164

89:                                               ; preds = %82
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  store i32* @sa1100_irda_netdev_ops, i32** %91, align 8
  %92 = load i32, i32* @IRQ_Ser2ICP, align 4
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %96 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %95, i32 0, i32 3
  %97 = call i32 @irda_init_max_qos_capabilies(%struct.TYPE_11__* %96)
  %98 = load i32, i32* @IR_9600, align 4
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @max_rate, align 4
  switch i32 %99, label %121 [
    i32 4000000, label %100
    i32 115200, label %105
    i32 57600, label %109
    i32 38400, label %113
    i32 19200, label %117
  ]

100:                                              ; preds = %89
  %101 = load i32, i32* @IR_4000000, align 4
  %102 = shl i32 %101, 8
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %89, %100
  %106 = load i32, i32* @IR_115200, align 4
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %89, %105
  %110 = load i32, i32* @IR_57600, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %89, %109
  %114 = load i32, i32* @IR_38400, align 4
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %89, %113
  %118 = load i32, i32* @IR_19200, align 4
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %117, %89
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %124 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %122
  store i32 %128, i32* %126, align 4
  %129 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %130 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i32 7, i32* %132, align 4
  %133 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %134 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %133, i32 0, i32 3
  %135 = call i32 @irda_qos_bits_to_value(%struct.TYPE_11__* %134)
  %136 = load i32, i32* @UTCR4_HPSIR, align 4
  %137 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %138 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i64, i64* @tx_lpm, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %121
  %142 = load i32, i32* @UTCR4_Z1_6us, align 4
  %143 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %144 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %141, %121
  store i64 0, i64* @Ser2UTCR3, align 8
  %148 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %149 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* @Ser2UTCR4, align 4
  %151 = load i32, i32* @HSCR0_UART, align 4
  store i32 %151, i32* @Ser2HSCR0, align 4
  %152 = load %struct.net_device*, %struct.net_device** %4, align 8
  %153 = call i32 @register_netdev(%struct.net_device* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = call i32 @platform_set_drvdata(%struct.platform_device* %157, %struct.net_device* %158)
  br label %160

160:                                              ; preds = %156, %147
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %189

163:                                              ; preds = %160
  br label %164

164:                                              ; preds = %163, %88, %81
  %165 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %166 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @kfree(i32 %168)
  %170 = load %struct.sa1100_irda*, %struct.sa1100_irda** %5, align 8
  %171 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @kfree(i32 %173)
  %175 = load %struct.net_device*, %struct.net_device** %4, align 8
  %176 = call i32 @free_netdev(%struct.net_device* %175)
  br label %177

177:                                              ; preds = %164, %62
  %178 = load i32, i32* @Ser2HSCR2, align 4
  %179 = call i32 @__PREG(i32 %178)
  %180 = call i32 @release_mem_region(i32 %179, i32 4)
  br label %181

181:                                              ; preds = %177, %57
  %182 = load i32, i32* @Ser2HSCR0, align 4
  %183 = call i32 @__PREG(i32 %182)
  %184 = call i32 @release_mem_region(i32 %183, i32 28)
  br label %185

185:                                              ; preds = %181, %43
  %186 = load i32, i32* @Ser2UTCR0, align 4
  %187 = call i32 @__PREG(i32 %186)
  %188 = call i32 @release_mem_region(i32 %187, i32 36)
  br label %189

189:                                              ; preds = %185, %160
  br label %190

190:                                              ; preds = %189, %29
  %191 = load i32, i32* %7, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %190, %13
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i64 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @__PREG(i32) #1

declare dso_local %struct.net_device* @alloc_irdadev(i32) #1

declare dso_local %struct.sa1100_irda* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sa1100_irda_init_iobuf(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @irda_init_max_qos_capabilies(%struct.TYPE_11__*) #1

declare dso_local i32 @irda_qos_bits_to_value(%struct.TYPE_11__*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
