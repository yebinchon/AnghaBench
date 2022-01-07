; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov511_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov511_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Couldn't get altsetting\00", align 1
@EIO = common dso_local global i32 0, align 4
@R51x_FIFO_PSIZE = common dso_local global i32 0, align 4
@R511_CAM_UV_EN = common dso_local global i32 0, align 4
@R511_SNAP_UV_EN = common dso_local global i32 0, align 4
@R511_SNAP_OPTS = common dso_local global i32 0, align 4
@R511_CAM_PXCNT = common dso_local global i32 0, align 4
@R511_CAM_LNCNT = common dso_local global i32 0, align 4
@R511_CAM_PXDIV = common dso_local global i32 0, align 4
@R511_CAM_LNDIV = common dso_local global i32 0, align 4
@R511_CAM_OPTS = common dso_local global i32 0, align 4
@R511_SNAP_PXCNT = common dso_local global i32 0, align 4
@R511_SNAP_LNCNT = common dso_local global i32 0, align 4
@R511_SNAP_PXDIV = common dso_local global i32 0, align 4
@R511_SNAP_LNDIV = common dso_local global i32 0, align 4
@frame_rate = common dso_local global i64 0, align 8
@R511_COMP_EN = common dso_local global i32 0, align 4
@R511_COMP_LUT_EN = common dso_local global i32 0, align 4
@R51x_SYS_RESET = common dso_local global i32 0, align 4
@OV511_RESET_OMNICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov511_mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov511_mode_init_regs(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.usb_interface*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %14, i32 %18)
  store %struct.usb_interface* %19, %struct.usb_interface** %10, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %21 = load %struct.sd*, %struct.sd** %2, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %20, i32 %24)
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %9, align 8
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %27 = icmp ne %struct.usb_host_interface* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.sd*, %struct.sd** %2, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  br label %219

35:                                               ; preds = %1
  %36 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %37 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.sd*, %struct.sd** %2, align 8
  %45 = load i32, i32* @R51x_FIFO_PSIZE, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 5
  %48 = call i32 @reg_w(%struct.sd* %44, i32 %45, i32 %47)
  %49 = load %struct.sd*, %struct.sd** %2, align 8
  %50 = load i32, i32* @R511_CAM_UV_EN, align 4
  %51 = call i32 @reg_w(%struct.sd* %49, i32 %50, i32 1)
  %52 = load %struct.sd*, %struct.sd** %2, align 8
  %53 = load i32, i32* @R511_SNAP_UV_EN, align 4
  %54 = call i32 @reg_w(%struct.sd* %52, i32 %53, i32 1)
  %55 = load %struct.sd*, %struct.sd** %2, align 8
  %56 = load i32, i32* @R511_SNAP_OPTS, align 4
  %57 = call i32 @reg_w(%struct.sd* %55, i32 %56, i32 3)
  %58 = load %struct.sd*, %struct.sd** %2, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 3
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = load %struct.sd*, %struct.sd** %2, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 3
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  %70 = load %struct.sd*, %struct.sd** %2, align 8
  %71 = load i32, i32* @R511_CAM_PXCNT, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @reg_w(%struct.sd* %70, i32 %71, i32 %72)
  %74 = load %struct.sd*, %struct.sd** %2, align 8
  %75 = load i32, i32* @R511_CAM_LNCNT, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @reg_w(%struct.sd* %74, i32 %75, i32 %76)
  %78 = load %struct.sd*, %struct.sd** %2, align 8
  %79 = load i32, i32* @R511_CAM_PXDIV, align 4
  %80 = call i32 @reg_w(%struct.sd* %78, i32 %79, i32 0)
  %81 = load %struct.sd*, %struct.sd** %2, align 8
  %82 = load i32, i32* @R511_CAM_LNDIV, align 4
  %83 = call i32 @reg_w(%struct.sd* %81, i32 %82, i32 0)
  %84 = load %struct.sd*, %struct.sd** %2, align 8
  %85 = load i32, i32* @R511_CAM_OPTS, align 4
  %86 = call i32 @reg_w(%struct.sd* %84, i32 %85, i32 3)
  %87 = load %struct.sd*, %struct.sd** %2, align 8
  %88 = load i32, i32* @R511_SNAP_PXCNT, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @reg_w(%struct.sd* %87, i32 %88, i32 %89)
  %91 = load %struct.sd*, %struct.sd** %2, align 8
  %92 = load i32, i32* @R511_SNAP_LNCNT, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @reg_w(%struct.sd* %91, i32 %92, i32 %93)
  %95 = load %struct.sd*, %struct.sd** %2, align 8
  %96 = load i32, i32* @R511_SNAP_PXDIV, align 4
  %97 = call i32 @reg_w(%struct.sd* %95, i32 %96, i32 0)
  %98 = load %struct.sd*, %struct.sd** %2, align 8
  %99 = load i32, i32* @R511_SNAP_LNDIV, align 4
  %100 = call i32 @reg_w(%struct.sd* %98, i32 %99, i32 0)
  %101 = load i64, i64* @frame_rate, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %35
  %104 = load i64, i64* @frame_rate, align 8
  %105 = load %struct.sd*, %struct.sd** %2, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 3
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %35
  %108 = load %struct.sd*, %struct.sd** %2, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %169 [
    i32 137, label %111
    i32 134, label %114
    i32 133, label %114
    i32 132, label %114
    i32 131, label %114
    i32 129, label %114
    i32 136, label %122
    i32 135, label %122
    i32 130, label %122
    i32 128, label %166
  ]

111:                                              ; preds = %107
  %112 = load %struct.sd*, %struct.sd** %2, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 1
  store i32 3, i32* %113, align 4
  br label %169

114:                                              ; preds = %107, %107, %107, %107, %107
  %115 = load %struct.sd*, %struct.sd** %2, align 8
  %116 = getelementptr inbounds %struct.sd, %struct.sd* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 320
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 1, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %114
  br label %122

122:                                              ; preds = %107, %107, %107, %121
  %123 = load %struct.sd*, %struct.sd** %2, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  switch i64 %125, label %136 [
    i64 30, label %126
    i64 25, label %126
    i64 10, label %139
    i64 5, label %142
  ]

126:                                              ; preds = %122, %122
  %127 = load %struct.sd*, %struct.sd** %2, align 8
  %128 = getelementptr inbounds %struct.sd, %struct.sd* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 640
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load %struct.sd*, %struct.sd** %2, align 8
  %134 = getelementptr inbounds %struct.sd, %struct.sd* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  br label %145

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %122, %135
  %137 = load %struct.sd*, %struct.sd** %2, align 8
  %138 = getelementptr inbounds %struct.sd, %struct.sd* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  br label %145

139:                                              ; preds = %122
  %140 = load %struct.sd*, %struct.sd** %2, align 8
  %141 = getelementptr inbounds %struct.sd, %struct.sd* %140, i32 0, i32 1
  store i32 2, i32* %141, align 4
  br label %145

142:                                              ; preds = %122
  %143 = load %struct.sd*, %struct.sd** %2, align 8
  %144 = getelementptr inbounds %struct.sd, %struct.sd* %143, i32 0, i32 1
  store i32 5, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %139, %136, %132
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %145
  %149 = load %struct.sd*, %struct.sd** %2, align 8
  %150 = getelementptr inbounds %struct.sd, %struct.sd* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  %153 = mul nsw i32 %152, 2
  %154 = sub nsw i32 %153, 1
  %155 = load %struct.sd*, %struct.sd** %2, align 8
  %156 = getelementptr inbounds %struct.sd, %struct.sd* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.sd*, %struct.sd** %2, align 8
  %158 = getelementptr inbounds %struct.sd, %struct.sd* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 10
  br i1 %160, label %161, label %164

161:                                              ; preds = %148
  %162 = load %struct.sd*, %struct.sd** %2, align 8
  %163 = getelementptr inbounds %struct.sd, %struct.sd* %162, i32 0, i32 1
  store i32 10, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %148
  br label %165

165:                                              ; preds = %164, %145
  br label %169

166:                                              ; preds = %107
  %167 = load %struct.sd*, %struct.sd** %2, align 8
  %168 = getelementptr inbounds %struct.sd, %struct.sd* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %107, %166, %165, %111
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 60, i32 30
  %174 = load %struct.sd*, %struct.sd** %2, align 8
  %175 = getelementptr inbounds %struct.sd, %struct.sd* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  %178 = sdiv i32 %173, %177
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.sd*, %struct.sd** %2, align 8
  %182 = getelementptr inbounds %struct.sd, %struct.sd* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 %180, %184
  %186 = load %struct.sd*, %struct.sd** %2, align 8
  %187 = getelementptr inbounds %struct.sd, %struct.sd* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %185, %189
  %191 = mul nsw i32 %190, 3
  %192 = sdiv i32 %191, 2
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %5, align 4
  %195 = mul nsw i32 1400, %194
  %196 = icmp sgt i32 %193, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %169
  %198 = load %struct.sd*, %struct.sd** %2, align 8
  %199 = load i32, i32* @R511_COMP_EN, align 4
  %200 = call i32 @reg_w(%struct.sd* %198, i32 %199, i32 7)
  %201 = load %struct.sd*, %struct.sd** %2, align 8
  %202 = load i32, i32* @R511_COMP_LUT_EN, align 4
  %203 = call i32 @reg_w(%struct.sd* %201, i32 %202, i32 3)
  br label %211

204:                                              ; preds = %169
  %205 = load %struct.sd*, %struct.sd** %2, align 8
  %206 = load i32, i32* @R511_COMP_EN, align 4
  %207 = call i32 @reg_w(%struct.sd* %205, i32 %206, i32 6)
  %208 = load %struct.sd*, %struct.sd** %2, align 8
  %209 = load i32, i32* @R511_COMP_LUT_EN, align 4
  %210 = call i32 @reg_w(%struct.sd* %208, i32 %209, i32 0)
  br label %211

211:                                              ; preds = %204, %197
  %212 = load %struct.sd*, %struct.sd** %2, align 8
  %213 = load i32, i32* @R51x_SYS_RESET, align 4
  %214 = load i32, i32* @OV511_RESET_OMNICE, align 4
  %215 = call i32 @reg_w(%struct.sd* %212, i32 %213, i32 %214)
  %216 = load %struct.sd*, %struct.sd** %2, align 8
  %217 = load i32, i32* @R51x_SYS_RESET, align 4
  %218 = call i32 @reg_w(%struct.sd* %216, i32 %217, i32 0)
  br label %219

219:                                              ; preds = %211, %28
  ret void
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
