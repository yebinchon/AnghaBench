; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_bus = type { i32, i32, i32, %struct.pmac_i2c_host_kw* }
%struct.pmac_i2c_host_kw = type { i32, i64, i32*, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@NO_IRQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KW_I2C_MODE_STANDARD = common dso_local global i32 0, align 4
@KW_I2C_MODE_STANDARDSUB = common dso_local global i32 0, align 4
@KW_I2C_MODE_COMBINED = common dso_local global i32 0, align 4
@reg_isr = common dso_local global i32 0, align 4
@reg_mode = common dso_local global i32 0, align 4
@reg_status = common dso_local global i32 0, align 4
@reg_addr = common dso_local global i32 0, align 4
@KW_I2C_MODE_MODE_MASK = common dso_local global i32 0, align 4
@reg_subaddr = common dso_local global i32 0, align 4
@state_addr = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@KW_POLL_TIMEOUT = common dso_local global i64 0, align 8
@reg_ier = common dso_local global i32 0, align 4
@KW_I2C_IRQ_MASK = common dso_local global i32 0, align 4
@reg_control = common dso_local global i32 0, align 4
@KW_I2C_CTL_XADDR = common dso_local global i32 0, align 4
@state_idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmac_i2c_bus*, i32, i32, i32, i32*, i32)* @kw_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kw_i2c_xfer(%struct.pmac_i2c_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmac_i2c_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pmac_i2c_host_kw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.pmac_i2c_bus* %0, %struct.pmac_i2c_bus** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %20 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %19, i32 0, i32 3
  %21 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %20, align 8
  store %struct.pmac_i2c_host_kw* %21, %struct.pmac_i2c_host_kw** %14, align 8
  %22 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %23 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %25 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %26 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NO_IRQ, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %6
  %31 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %32 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %30, %6
  %37 = phi i1 [ false, %6 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %16, align 4
  %39 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %40 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %75 [
    i32 130, label %42
    i32 129, label %45
    i32 128, label %55
    i32 131, label %65
  ]

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %191

45:                                               ; preds = %36
  %46 = load i32, i32* @KW_I2C_MODE_STANDARD, align 4
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %191

54:                                               ; preds = %45
  br label %75

55:                                               ; preds = %36
  %56 = load i32, i32* @KW_I2C_MODE_STANDARDSUB, align 4
  %57 = load i32, i32* %15, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %191

64:                                               ; preds = %55
  br label %75

65:                                               ; preds = %36
  %66 = load i32, i32* @KW_I2C_MODE_COMBINED, align 4
  %67 = load i32, i32* %15, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %191

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %36, %74, %64, %54
  %76 = load i32, i32* @reg_isr, align 4
  %77 = load i32, i32* @reg_isr, align 4
  %78 = call i32 @kw_read_reg(i32 %77)
  %79 = call i32 @kw_write_reg(i32 %76, i32 %78)
  %80 = load i32, i32* @reg_mode, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %83 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 4
  %86 = or i32 %81, %85
  %87 = call i32 @kw_write_reg(i32 %80, i32 %86)
  %88 = load i32, i32* @reg_status, align 4
  %89 = call i32 @kw_write_reg(i32 %88, i32 0)
  %90 = load i32, i32* @reg_addr, align 4
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 255
  %93 = call i32 @kw_write_reg(i32 %90, i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @KW_I2C_MODE_MODE_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @KW_I2C_MODE_STANDARDSUB, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %75
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @KW_I2C_MODE_MODE_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @KW_I2C_MODE_COMBINED, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99, %75
  %106 = load i32, i32* @reg_subaddr, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @kw_write_reg(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %99
  %110 = load i32*, i32** %12, align 8
  %111 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %112 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %111, i32 0, i32 2
  store i32* %110, i32** %112, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %115 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* @state_addr, align 8
  %117 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %118 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %117, i32 0, i32 4
  store i64 %116, i64* %118, align 8
  %119 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %120 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %119, i32 0, i32 5
  store i32 0, i32* %120, align 8
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 1
  %123 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %124 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  %125 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %126 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %129 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %128, i32 0, i32 10
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %109
  %133 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %134 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @INIT_COMPLETION(i32 %135)
  %137 = load i32, i32* @reg_isr, align 4
  %138 = load i32, i32* @reg_isr, align 4
  %139 = call i32 @kw_read_reg(i32 %138)
  %140 = call i32 @kw_write_reg(i32 %137, i32 %139)
  %141 = load i64, i64* @jiffies, align 8
  %142 = load i64, i64* @KW_POLL_TIMEOUT, align 8
  %143 = add nsw i64 %141, %142
  %144 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %145 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  %147 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %148 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %147, i32 0, i32 9
  %149 = call i32 @add_timer(%struct.TYPE_2__* %148)
  %150 = load i32, i32* @reg_ier, align 4
  %151 = load i32, i32* @KW_I2C_IRQ_MASK, align 4
  %152 = call i32 @kw_write_reg(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %132, %109
  %154 = load i32, i32* @reg_control, align 4
  %155 = load i32, i32* @KW_I2C_CTL_XADDR, align 4
  %156 = call i32 @kw_write_reg(i32 %154, i32 %155)
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %161 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %160, i32 0, i32 8
  %162 = call i32 @wait_for_completion(i32* %161)
  br label %185

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %170, %163
  %165 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %166 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @state_idle, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %172 = call i32 @kw_i2c_wait_interrupt(%struct.pmac_i2c_host_kw* %171)
  store i32 %172, i32* %18, align 4
  %173 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %174 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %173, i32 0, i32 7
  %175 = load i64, i64* %17, align 8
  %176 = call i32 @spin_lock_irqsave(i32* %174, i64 %175)
  %177 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @kw_i2c_handle_interrupt(%struct.pmac_i2c_host_kw* %177, i32 %178)
  %180 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %181 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %180, i32 0, i32 7
  %182 = load i64, i64* %17, align 8
  %183 = call i32 @spin_unlock_irqrestore(i32* %181, i64 %182)
  br label %164

184:                                              ; preds = %164
  br label %185

185:                                              ; preds = %184, %159
  %186 = load i32, i32* @reg_ier, align 4
  %187 = call i32 @kw_write_reg(i32 %186, i32 0)
  %188 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %14, align 8
  %189 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %185, %71, %61, %51, %42
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i32 @kw_write_reg(i32, i32) #1

declare dso_local i32 @kw_read_reg(i32) #1

declare dso_local i32 @INIT_COMPLETION(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kw_i2c_wait_interrupt(%struct.pmac_i2c_host_kw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kw_i2c_handle_interrupt(%struct.pmac_i2c_host_kw*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
