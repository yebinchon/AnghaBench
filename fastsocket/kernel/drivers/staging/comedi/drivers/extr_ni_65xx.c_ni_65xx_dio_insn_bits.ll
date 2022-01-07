; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i64 }
%struct.comedi_insn = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ni_65xx_channels_per_port = common dso_local global i32 0, align 4
@COMEDI_SUBD_DO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_65xx_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 5, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %202

29:                                               ; preds = %4
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CR_CHAN(i32 %32)
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %192, %29
  %35 = load i32, i32* %13, align 4
  %36 = icmp ult i32 %35, 5
  br i1 %36, label %37, label %195

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ni_65xx_port_by_channel(i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = add i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %43 = call %struct.TYPE_7__* @sprivate(%struct.comedi_subdevice* %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add i32 %45, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = call %struct.TYPE_9__* @board(%struct.comedi_device* %49)
  %51 = call i32 @ni_65xx_total_num_ports(%struct.TYPE_9__* %50)
  %52 = icmp uge i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %195

54:                                               ; preds = %37
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @ni_65xx_channels_per_port, align 4
  %57 = mul i32 %55, %56
  store i32 %57, i32* %16, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %17, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub i32 %64, %65
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp sge i32 %67, 32
  br i1 %68, label %72, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %20, align 4
  %71 = icmp sle i32 %70, -32
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %54
  br label %195

73:                                               ; preds = %69
  %74 = load i32, i32* %20, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %17, align 4
  %79 = lshr i32 %78, %77
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %18, align 4
  %82 = lshr i32 %81, %80
  store i32 %82, i32* %18, align 4
  br label %92

83:                                               ; preds = %73
  %84 = load i32, i32* %20, align 4
  %85 = sub nsw i32 0, %84
  %86 = load i32, i32* %17, align 4
  %87 = shl i32 %86, %85
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %20, align 4
  %89 = sub nsw i32 0, %88
  %90 = load i32, i32* %18, align 4
  %91 = shl i32 %90, %89
  store i32 %91, i32* %18, align 4
  br label %92

92:                                               ; preds = %83, %76
  %93 = load i32, i32* %17, align 4
  %94 = and i32 %93, 255
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = and i32 %95, 255
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %151

99:                                               ; preds = %92
  %100 = load i32, i32* %17, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %103 = call %struct.TYPE_8__* @private(%struct.comedi_device* %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %101
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %17, align 4
  %113 = and i32 %111, %112
  %114 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %115 = call %struct.TYPE_8__* @private(%struct.comedi_device* %114)
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %113
  store i32 %122, i32* %120, align 4
  %123 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %124 = call %struct.TYPE_8__* @private(%struct.comedi_device* %123)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %21, align 4
  %131 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %132 = call %struct.TYPE_9__* @board(%struct.comedi_device* %131)
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %99
  %137 = load i32, i32* %21, align 4
  %138 = xor i32 %137, -1
  store i32 %138, i32* %21, align 4
  br label %139

139:                                              ; preds = %136, %99
  %140 = load i32, i32* %21, align 4
  %141 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %142 = call %struct.TYPE_8__* @private(%struct.comedi_device* %141)
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = call i64 @Port_Data(i32 %147)
  %149 = add nsw i64 %146, %148
  %150 = call i32 @writeb(i32 %140, i64 %149)
  br label %151

151:                                              ; preds = %139, %92
  %152 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %153 = call %struct.TYPE_8__* @private(%struct.comedi_device* %152)
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call i64 @Port_Data(i32 %158)
  %160 = add nsw i64 %157, %159
  %161 = call i32 @readb(i64 %160)
  store i32 %161, i32* %19, align 4
  %162 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %163 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @COMEDI_SUBD_DO, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %151
  %168 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %169 = call %struct.TYPE_9__* @board(%struct.comedi_device* %168)
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* %19, align 4
  %175 = xor i32 %174, 255
  store i32 %175, i32* %19, align 4
  br label %176

176:                                              ; preds = %173, %167, %151
  %177 = load i32, i32* %20, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %19, align 4
  %182 = shl i32 %181, %180
  store i32 %182, i32* %19, align 4
  br label %188

183:                                              ; preds = %176
  %184 = load i32, i32* %20, align 4
  %185 = sub nsw i32 0, %184
  %186 = load i32, i32* %19, align 4
  %187 = lshr i32 %186, %185
  store i32 %187, i32* %19, align 4
  br label %188

188:                                              ; preds = %183, %179
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %12, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %12, align 4
  br label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %13, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %34

195:                                              ; preds = %72, %53, %34
  %196 = load i32, i32* %12, align 4
  %197 = load i32*, i32** %9, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %200 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %195, %26
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_65xx_port_by_channel(i32) #1

declare dso_local %struct.TYPE_7__* @sprivate(%struct.comedi_subdevice*) #1

declare dso_local i32 @ni_65xx_total_num_ports(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @board(%struct.comedi_device*) #1

declare dso_local %struct.TYPE_8__* @private(%struct.comedi_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @Port_Data(i32) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
