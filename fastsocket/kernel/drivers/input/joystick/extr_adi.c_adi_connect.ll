; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.gameport_driver = type { i32 }
%struct.adi_port = type { %struct.TYPE_5__*, %struct.gameport* }
%struct.TYPE_5__ = type { i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GAMEPORT_MODE_RAW = common dso_local global i32 0, align 4
@ADI_MIN_LEN_LENGTH = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@adi_poll = common dso_local global i32 0, align 4
@ADI_INIT_DELAY = common dso_local global i32 0, align 4
@ADI_DATA_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, %struct.gameport_driver*)* @adi_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adi_connect(%struct.gameport* %0, %struct.gameport_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca %struct.gameport_driver*, align 8
  %6 = alloca %struct.adi_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store %struct.gameport_driver* %1, %struct.gameport_driver** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.adi_port* @kzalloc(i32 16, i32 %9)
  store %struct.adi_port* %10, %struct.adi_port** %6, align 8
  %11 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %12 = icmp ne %struct.adi_port* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %236

16:                                               ; preds = %2
  %17 = load %struct.gameport*, %struct.gameport** %4, align 8
  %18 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %19 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %18, i32 0, i32 1
  store %struct.gameport* %17, %struct.gameport** %19, align 8
  %20 = load %struct.gameport*, %struct.gameport** %4, align 8
  %21 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %22 = call i32 @gameport_set_drvdata(%struct.gameport* %20, %struct.adi_port* %21)
  %23 = load %struct.gameport*, %struct.gameport** %4, align 8
  %24 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %25 = load i32, i32* @GAMEPORT_MODE_RAW, align 4
  %26 = call i32 @gameport_open(%struct.gameport* %23, %struct.gameport_driver* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %230

30:                                               ; preds = %16
  %31 = load %struct.gameport*, %struct.gameport** %4, align 8
  %32 = call i32 @adi_init_digital(%struct.gameport* %31)
  %33 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %34 = call i32 @adi_read_packet(%struct.adi_port* %33)
  %35 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %36 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ADI_MIN_LEN_LENGTH, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %30
  %44 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %45 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %46 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @adi_get_bits(%struct.TYPE_5__* %47, i32 10)
  %49 = call i32 @adi_move_bits(%struct.adi_port* %44, i32 %48)
  br label %50

50:                                               ; preds = %43, %30
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %87, %50
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %90

54:                                               ; preds = %51
  %55 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %56 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %62 = call i32 @adi_id_decode(%struct.TYPE_5__* %60, %struct.adi_port* %61)
  %63 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %64 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %54
  br label %87

73:                                               ; preds = %54
  %74 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %75 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @adi_init_input(%struct.TYPE_5__* %79, %struct.adi_port* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %199

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %72
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %51

90:                                               ; preds = %51
  %91 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %92 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %90
  %99 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %100 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %199

109:                                              ; preds = %98, %90
  %110 = load %struct.gameport*, %struct.gameport** %4, align 8
  %111 = load i32, i32* @adi_poll, align 4
  %112 = call i32 @gameport_set_poll_handler(%struct.gameport* %110, i32 %111)
  %113 = load %struct.gameport*, %struct.gameport** %4, align 8
  %114 = call i32 @gameport_set_poll_interval(%struct.gameport* %113, i32 20)
  %115 = load i32, i32* @ADI_INIT_DELAY, align 4
  %116 = call i32 @msleep(i32 %115)
  %117 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %118 = call i64 @adi_read(%struct.adi_port* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %109
  %121 = load i32, i32* @ADI_DATA_DELAY, align 4
  %122 = call i32 @msleep(i32 %121)
  %123 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %124 = call i64 @adi_read(%struct.adi_port* %123)
  br label %125

125:                                              ; preds = %120, %109
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %161, %125
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %164

129:                                              ; preds = %126
  %130 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %131 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %129
  %140 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %141 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %140, i32 0, i32 0
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %144
  %146 = call i32 @adi_init_center(%struct.TYPE_5__* %145)
  %147 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %148 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @input_register_device(i32* %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %139
  br label %165

159:                                              ; preds = %139
  br label %160

160:                                              ; preds = %159, %129
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %126

164:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %236

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %197, %165
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %7, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %166
  %171 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %172 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %171, i32 0, i32 0
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %170
  %181 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %182 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %181, i32 0, i32 0
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @input_unregister_device(i32* %188)
  %190 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %191 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %190, i32 0, i32 0
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  store i32* null, i32** %196, align 8
  br label %197

197:                                              ; preds = %180, %170
  br label %166

198:                                              ; preds = %166
  br label %199

199:                                              ; preds = %198, %106, %85
  store i32 0, i32* %7, align 4
  br label %200

200:                                              ; preds = %224, %199
  %201 = load i32, i32* %7, align 4
  %202 = icmp slt i32 %201, 2
  br i1 %202, label %203, label %227

203:                                              ; preds = %200
  %204 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %205 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %204, i32 0, i32 0
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %223

213:                                              ; preds = %203
  %214 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %215 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %214, i32 0, i32 0
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @input_free_device(i32* %221)
  br label %223

223:                                              ; preds = %213, %203
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %200

227:                                              ; preds = %200
  %228 = load %struct.gameport*, %struct.gameport** %4, align 8
  %229 = call i32 @gameport_close(%struct.gameport* %228)
  br label %230

230:                                              ; preds = %227, %29
  %231 = load %struct.gameport*, %struct.gameport** %4, align 8
  %232 = call i32 @gameport_set_drvdata(%struct.gameport* %231, %struct.adi_port* null)
  %233 = load %struct.adi_port*, %struct.adi_port** %6, align 8
  %234 = call i32 @kfree(%struct.adi_port* %233)
  %235 = load i32, i32* %8, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %230, %164, %13
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local %struct.adi_port* @kzalloc(i32, i32) #1

declare dso_local i32 @gameport_set_drvdata(%struct.gameport*, %struct.adi_port*) #1

declare dso_local i32 @gameport_open(%struct.gameport*, %struct.gameport_driver*, i32) #1

declare dso_local i32 @adi_init_digital(%struct.gameport*) #1

declare dso_local i32 @adi_read_packet(%struct.adi_port*) #1

declare dso_local i32 @adi_move_bits(%struct.adi_port*, i32) #1

declare dso_local i32 @adi_get_bits(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @adi_id_decode(%struct.TYPE_5__*, %struct.adi_port*) #1

declare dso_local i32 @adi_init_input(%struct.TYPE_5__*, %struct.adi_port*, i32) #1

declare dso_local i32 @gameport_set_poll_handler(%struct.gameport*, i32) #1

declare dso_local i32 @gameport_set_poll_interval(%struct.gameport*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @adi_read(%struct.adi_port*) #1

declare dso_local i32 @adi_init_center(%struct.TYPE_5__*) #1

declare dso_local i32 @input_register_device(i32*) #1

declare dso_local i32 @input_unregister_device(i32*) #1

declare dso_local i32 @input_free_device(i32*) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

declare dso_local i32 @kfree(%struct.adi_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
