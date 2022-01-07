; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20xxx_dio_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20xxx_dio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI20000_DIO_CONTROL_01 = common dso_local global i64 0, align 8
@PCI20000_DIO_CONTROL_23 = common dso_local global i64 0, align 8
@PCI20000_DIO_BUFFER = common dso_local global i64 0, align 8
@PCI20000_DIO_EOC = common dso_local global i8 0, align 1
@DIO_BE = common dso_local global i8 0, align 1
@DIO_PS_0 = common dso_local global i8 0, align 1
@DIO_BO = common dso_local global i8 0, align 1
@DIO_CAND = common dso_local global i8 0, align 1
@PCI20000_DIO_EIC = common dso_local global i8 0, align 1
@DIO_BI = common dso_local global i8 0, align 1
@PCI20000_DIO_OOC = common dso_local global i8 0, align 1
@DIO_PS_1 = common dso_local global i8 0, align 1
@PCI20000_DIO_OIC = common dso_local global i8 0, align 1
@DIO_PS_2 = common dso_local global i8 0, align 1
@DIO_PS_3 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci20xxx_dio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci20xxx_dio_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCI20000_DIO_CONTROL_01, align 8
  %12 = add nsw i64 %10, %11
  %13 = call zeroext i8 @readb(i64 %12)
  store i8 %13, i8* %5, align 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI20000_DIO_CONTROL_23, align 8
  %18 = add nsw i64 %16, %17
  %19 = call zeroext i8 @readb(i64 %18)
  store i8 %19, i8* %6, align 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI20000_DIO_BUFFER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call zeroext i8 @readb(i64 %24)
  store i8 %25, i8* %7, align 1
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %2
  %32 = load i8, i8* @PCI20000_DIO_EOC, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %5, align 1
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @DIO_BE, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @DIO_PS_0, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %41, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %39, %45
  %47 = load i8, i8* @DIO_BO, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @DIO_PS_0, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %48, %50
  %52 = or i32 %46, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %7, align 1
  br label %74

54:                                               ; preds = %2
  %55 = load i8, i8* %5, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @DIO_CAND, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %56, %58
  %60 = load i8, i8* @PCI20000_DIO_EIC, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %59, %61
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %5, align 1
  %64 = load i8, i8* %7, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @DIO_BI, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @DIO_PS_0, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %67, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %65, %71
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %7, align 1
  br label %74

74:                                               ; preds = %54, %31
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 65280
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  %81 = load i8, i8* @PCI20000_DIO_OOC, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, %82
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %5, align 1
  %87 = load i8, i8* %7, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @DIO_BE, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @DIO_PS_1, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %90, %92
  %94 = xor i32 %93, -1
  %95 = and i32 %88, %94
  %96 = load i8, i8* @DIO_BO, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @DIO_PS_1, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %97, %99
  %101 = or i32 %95, %100
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %7, align 1
  br label %123

103:                                              ; preds = %74
  %104 = load i8, i8* %5, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @DIO_CAND, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %105, %107
  %109 = load i8, i8* @PCI20000_DIO_OIC, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %108, %110
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %5, align 1
  %113 = load i8, i8* %7, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @DIO_BI, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @DIO_PS_1, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 %116, %118
  %120 = xor i32 %119, -1
  %121 = and i32 %114, %120
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %7, align 1
  br label %123

123:                                              ; preds = %103, %80
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 16711680
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %123
  %130 = load i8, i8* @PCI20000_DIO_EOC, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* %6, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, %131
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %6, align 1
  %136 = load i8, i8* %7, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* @DIO_BE, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8, i8* @DIO_PS_2, align 1
  %141 = zext i8 %140 to i32
  %142 = shl i32 %139, %141
  %143 = xor i32 %142, -1
  %144 = and i32 %137, %143
  %145 = load i8, i8* @DIO_BO, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @DIO_PS_2, align 1
  %148 = zext i8 %147 to i32
  %149 = shl i32 %146, %148
  %150 = or i32 %144, %149
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %7, align 1
  br label %172

152:                                              ; preds = %123
  %153 = load i8, i8* %6, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8, i8* @DIO_CAND, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %154, %156
  %158 = load i8, i8* @PCI20000_DIO_EIC, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %157, %159
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %6, align 1
  %162 = load i8, i8* %7, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8, i8* @DIO_BI, align 1
  %165 = zext i8 %164 to i32
  %166 = load i8, i8* @DIO_PS_2, align 1
  %167 = zext i8 %166 to i32
  %168 = shl i32 %165, %167
  %169 = xor i32 %168, -1
  %170 = and i32 %163, %169
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %7, align 1
  br label %172

172:                                              ; preds = %152, %129
  %173 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %174 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, -16777216
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %172
  %179 = load i8, i8* @PCI20000_DIO_OOC, align 1
  %180 = zext i8 %179 to i32
  %181 = load i8, i8* %6, align 1
  %182 = zext i8 %181 to i32
  %183 = and i32 %182, %180
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %6, align 1
  %185 = load i8, i8* %7, align 1
  %186 = zext i8 %185 to i32
  %187 = load i8, i8* @DIO_BE, align 1
  %188 = zext i8 %187 to i32
  %189 = load i8, i8* @DIO_PS_3, align 1
  %190 = zext i8 %189 to i32
  %191 = shl i32 %188, %190
  %192 = xor i32 %191, -1
  %193 = and i32 %186, %192
  %194 = load i8, i8* @DIO_BO, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* @DIO_PS_3, align 1
  %197 = zext i8 %196 to i32
  %198 = shl i32 %195, %197
  %199 = or i32 %193, %198
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %7, align 1
  br label %221

201:                                              ; preds = %172
  %202 = load i8, i8* %6, align 1
  %203 = zext i8 %202 to i32
  %204 = load i8, i8* @DIO_CAND, align 1
  %205 = zext i8 %204 to i32
  %206 = and i32 %203, %205
  %207 = load i8, i8* @PCI20000_DIO_OIC, align 1
  %208 = zext i8 %207 to i32
  %209 = or i32 %206, %208
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %6, align 1
  %211 = load i8, i8* %7, align 1
  %212 = zext i8 %211 to i32
  %213 = load i8, i8* @DIO_BI, align 1
  %214 = zext i8 %213 to i32
  %215 = load i8, i8* @DIO_PS_3, align 1
  %216 = zext i8 %215 to i32
  %217 = shl i32 %214, %216
  %218 = xor i32 %217, -1
  %219 = and i32 %212, %218
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %7, align 1
  br label %221

221:                                              ; preds = %201, %178
  %222 = load i8, i8* %5, align 1
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @PCI20000_DIO_CONTROL_01, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @writeb(i8 zeroext %222, i64 %227)
  %229 = load i8, i8* %6, align 1
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @PCI20000_DIO_CONTROL_23, align 8
  %234 = add nsw i64 %232, %233
  %235 = call i32 @writeb(i8 zeroext %229, i64 %234)
  %236 = load i8, i8* %7, align 1
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @PCI20000_DIO_BUFFER, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @writeb(i8 zeroext %236, i64 %241)
  ret void
}

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
