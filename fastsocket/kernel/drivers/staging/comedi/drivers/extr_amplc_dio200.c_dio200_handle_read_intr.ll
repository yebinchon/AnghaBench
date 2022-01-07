; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_handle_read_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_handle_read_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__*, %struct.dio200_subdev_intr* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.dio200_subdev_intr = type { i32, i32, i64, i32, i32, i64, i32, i64 }

@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"buffer overflow\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dio200_handle_read_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_handle_read_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dio200_subdev_intr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 1
  %17 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %16, align 8
  store %struct.dio200_subdev_intr* %17, %struct.dio200_subdev_intr** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %19 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %18, i32 0, i32 3
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %28 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %2
  %32 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %33 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %48, %31
  %36 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %37 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @inb(i32 %38)
  %40 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %41 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = load i32, i32* %6, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %58 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @outb(i32 %56, i32 %59)
  br label %35

61:                                               ; preds = %35
  br label %66

62:                                               ; preds = %2
  %63 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %64 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %61
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %201

69:                                               ; preds = %66
  %70 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %71 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %8, align 4
  %73 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %74 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %80 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @outb(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %69
  %84 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %85 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %200

88:                                               ; preds = %83
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %91 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %199

95:                                               ; preds = %88
  store i16 0, i16* %11, align 2
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %97 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %131, %95
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %102
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @CR_CHAN(i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %13, align 4
  %120 = shl i32 1, %119
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %106
  %124 = load i32, i32* %12, align 4
  %125 = shl i32 1, %124
  %126 = load i16, i16* %11, align 2
  %127 = sext i16 %126 to i32
  %128 = or i32 %127, %125
  %129 = trunc i32 %128 to i16
  store i16 %129, i16* %11, align 2
  br label %130

130:                                              ; preds = %123, %106
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %12, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %102

134:                                              ; preds = %102
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %136 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i16, i16* %11, align 2
  %139 = call i64 @comedi_buf_put(%struct.TYPE_4__* %137, i16 signext %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %143 = load i32, i32* @COMEDI_CB_EOS, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %146 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %144
  store i32 %150, i32* %148, align 8
  br label %166

151:                                              ; preds = %134
  %152 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %153 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %154 = call i32 @dio200_stop_intr(%struct.comedi_device* %152, %struct.comedi_subdevice* %153)
  %155 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %156 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %159 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %157
  store i32 %163, i32* %161, align 8
  %164 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %165 = call i32 @comedi_error(%struct.comedi_device* %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %166

166:                                              ; preds = %151, %141
  %167 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %168 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %198, label %171

171:                                              ; preds = %166
  %172 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %173 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %171
  %177 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %178 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, -1
  store i64 %180, i64* %178, align 8
  %181 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %182 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %176
  %186 = load i32, i32* @COMEDI_CB_EOA, align 4
  %187 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %188 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %186
  store i32 %192, i32* %190, align 8
  %193 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %194 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %195 = call i32 @dio200_stop_intr(%struct.comedi_device* %193, %struct.comedi_subdevice* %194)
  br label %196

196:                                              ; preds = %185, %176
  br label %197

197:                                              ; preds = %196, %171
  br label %198

198:                                              ; preds = %197, %166
  br label %199

199:                                              ; preds = %198, %88
  br label %200

200:                                              ; preds = %199, %83
  br label %201

201:                                              ; preds = %200, %66
  %202 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %203 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %202, i32 0, i32 3
  %204 = load i64, i64* %10, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %208 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %206, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %201
  %214 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %215 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %216 = call i32 @comedi_event(%struct.comedi_device* %214, %struct.comedi_subdevice* %215)
  br label %217

217:                                              ; preds = %213, %201
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i32
  ret i32 %220
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @comedi_buf_put(%struct.TYPE_4__*, i16 signext) #1

declare dso_local i32 @dio200_stop_intr(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
