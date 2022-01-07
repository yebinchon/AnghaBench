; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@read_eeprom.bitstream_length = internal constant i32 11, align 4
@read_eeprom.read_command = internal constant i32 6, align 4
@PLX_CONTROL_REG = common dso_local global i32 0, align 4
@read_eeprom.value_length = internal constant i32 16, align 4
@read_eeprom.eeprom_udelay = internal constant i32 1, align 4
@CTL_EE_CLK = common dso_local global i32 0, align 4
@CTL_EE_CS = common dso_local global i32 0, align 4
@CTL_USERO = common dso_local global i32 0, align 4
@CTL_EE_W = common dso_local global i32 0, align 4
@CTL_EE_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_eeprom(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 1536, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @PLX_CONTROL_REG, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %14, i64 %16
  store i8* %17, i8** %7, align 8
  %18 = call i32 @udelay(i32 1)
  %19 = load i32, i32* @CTL_EE_CLK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @CTL_EE_CS, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @CTL_USERO, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @writel(i32 %38, i8* %39)
  %41 = call i32 @udelay(i32 1)
  %42 = load i32, i32* @CTL_EE_CS, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %44 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 8
  %48 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %49 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @writel(i32 %51, i8* %52)
  store i32 1024, i32* %6, align 4
  br label %54

54:                                               ; preds = %112, %2
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %115

57:                                               ; preds = %54
  %58 = call i32 @udelay(i32 1)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i32, i32* @CTL_EE_W, align 4
  %65 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %66 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 8
  br label %78

70:                                               ; preds = %57
  %71 = load i32, i32* @CTL_EE_W, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %74 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %72
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %70, %63
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @writel(i32 %82, i8* %83)
  %85 = call i32 @udelay(i32 1)
  %86 = load i32, i32* @CTL_EE_CLK, align 4
  %87 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %88 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 8
  %92 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %93 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @writel(i32 %95, i8* %96)
  %98 = call i32 @udelay(i32 1)
  %99 = load i32, i32* @CTL_EE_CLK, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %102 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %100
  store i32 %105, i32* %103, align 8
  %106 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %107 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @writel(i32 %109, i8* %110)
  br label %112

112:                                              ; preds = %78
  %113 = load i32, i32* %6, align 4
  %114 = lshr i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %54

115:                                              ; preds = %54
  store i32 0, i32* %8, align 4
  store i32 32768, i32* %6, align 4
  br label %116

116:                                              ; preds = %158, %115
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %161

119:                                              ; preds = %116
  %120 = call i32 @udelay(i32 1)
  %121 = load i32, i32* @CTL_EE_CLK, align 4
  %122 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %123 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %122)
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 8
  %127 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %128 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %127)
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @writel(i32 %130, i8* %131)
  %133 = call i32 @udelay(i32 1)
  %134 = load i32, i32* @CTL_EE_CLK, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %137 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %136)
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %135
  store i32 %140, i32* %138, align 8
  %141 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %142 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %141)
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @writel(i32 %144, i8* %145)
  %147 = call i32 @udelay(i32 1)
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @readl(i8* %148)
  %150 = load i32, i32* @CTL_EE_R, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %119
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %8, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %153, %119
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %6, align 4
  %160 = lshr i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %116

161:                                              ; preds = %116
  %162 = call i32 @udelay(i32 1)
  %163 = load i32, i32* @CTL_EE_CS, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %166 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %165)
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, %164
  store i32 %169, i32* %167, align 8
  %170 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %171 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %170)
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 @writel(i32 %173, i8* %174)
  %176 = load i32, i32* %8, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @readl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
