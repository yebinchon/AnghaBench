; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov518_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov518_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Couldn't get altsetting\00", align 1
@EIO = common dso_local global i32 0, align 4
@R51x_FIFO_PSIZE = common dso_local global i32 0, align 4
@BRIDGE_OV518 = common dso_local global i64 0, align 8
@BRIDGE_OV518PLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov518_mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov518_mode_init_regs(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %8 = load %struct.sd*, %struct.sd** %2, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sd*, %struct.sd** %2, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %11, i32 %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %7, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %18 = load %struct.sd*, %struct.sd** %2, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %17, i32 %21)
  store %struct.usb_host_interface* %22, %struct.usb_host_interface** %6, align 8
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %24 = icmp ne %struct.usb_host_interface* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.sd*, %struct.sd** %2, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  br label %209

32:                                               ; preds = %1
  %33 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %34 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.sd*, %struct.sd** %2, align 8
  %42 = load i32, i32* @R51x_FIFO_PSIZE, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, -8
  %45 = call i32 @ov518_reg_w32(%struct.sd* %41, i32 %42, i32 %44, i32 2)
  %46 = load %struct.sd*, %struct.sd** %2, align 8
  %47 = call i32 @reg_w(%struct.sd* %46, i32 43, i32 0)
  %48 = load %struct.sd*, %struct.sd** %2, align 8
  %49 = call i32 @reg_w(%struct.sd* %48, i32 44, i32 0)
  %50 = load %struct.sd*, %struct.sd** %2, align 8
  %51 = call i32 @reg_w(%struct.sd* %50, i32 45, i32 0)
  %52 = load %struct.sd*, %struct.sd** %2, align 8
  %53 = call i32 @reg_w(%struct.sd* %52, i32 46, i32 0)
  %54 = load %struct.sd*, %struct.sd** %2, align 8
  %55 = call i32 @reg_w(%struct.sd* %54, i32 59, i32 0)
  %56 = load %struct.sd*, %struct.sd** %2, align 8
  %57 = call i32 @reg_w(%struct.sd* %56, i32 60, i32 0)
  %58 = load %struct.sd*, %struct.sd** %2, align 8
  %59 = call i32 @reg_w(%struct.sd* %58, i32 61, i32 0)
  %60 = load %struct.sd*, %struct.sd** %2, align 8
  %61 = call i32 @reg_w(%struct.sd* %60, i32 62, i32 0)
  %62 = load %struct.sd*, %struct.sd** %2, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BRIDGE_OV518, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %32
  %68 = load %struct.sd*, %struct.sd** %2, align 8
  %69 = call i32 @reg_w_mask(%struct.sd* %68, i32 32, i32 8, i32 8)
  %70 = load %struct.sd*, %struct.sd** %2, align 8
  %71 = call i32 @reg_w_mask(%struct.sd* %70, i32 40, i32 128, i32 240)
  %72 = load %struct.sd*, %struct.sd** %2, align 8
  %73 = call i32 @reg_w_mask(%struct.sd* %72, i32 56, i32 128, i32 240)
  br label %79

74:                                               ; preds = %32
  %75 = load %struct.sd*, %struct.sd** %2, align 8
  %76 = call i32 @reg_w(%struct.sd* %75, i32 40, i32 128)
  %77 = load %struct.sd*, %struct.sd** %2, align 8
  %78 = call i32 @reg_w(%struct.sd* %77, i32 56, i32 128)
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.sd*, %struct.sd** %2, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %83, 16
  store i32 %84, i32* %3, align 4
  %85 = load %struct.sd*, %struct.sd** %2, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 4
  store i32 %89, i32* %4, align 4
  %90 = load %struct.sd*, %struct.sd** %2, align 8
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @reg_w(%struct.sd* %90, i32 41, i32 %91)
  %93 = load %struct.sd*, %struct.sd** %2, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @reg_w(%struct.sd* %93, i32 42, i32 %94)
  %96 = load %struct.sd*, %struct.sd** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @reg_w(%struct.sd* %96, i32 57, i32 %97)
  %99 = load %struct.sd*, %struct.sd** %2, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @reg_w(%struct.sd* %99, i32 58, i32 %100)
  %102 = load %struct.sd*, %struct.sd** %2, align 8
  %103 = call i32 @reg_w(%struct.sd* %102, i32 47, i32 128)
  %104 = load %struct.sd*, %struct.sd** %2, align 8
  %105 = getelementptr inbounds %struct.sd, %struct.sd* %104, i32 0, i32 1
  store i32 1, i32* %105, align 8
  %106 = load %struct.sd*, %struct.sd** %2, align 8
  %107 = call i32 @reg_w(%struct.sd* %106, i32 81, i32 4)
  %108 = load %struct.sd*, %struct.sd** %2, align 8
  %109 = call i32 @reg_w(%struct.sd* %108, i32 34, i32 24)
  %110 = load %struct.sd*, %struct.sd** %2, align 8
  %111 = call i32 @reg_w(%struct.sd* %110, i32 35, i32 255)
  %112 = load %struct.sd*, %struct.sd** %2, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @BRIDGE_OV518PLUS, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %147

117:                                              ; preds = %79
  %118 = load %struct.sd*, %struct.sd** %2, align 8
  %119 = getelementptr inbounds %struct.sd, %struct.sd* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %143 [
    i32 128, label %121
    i32 129, label %138
  ]

121:                                              ; preds = %117
  %122 = load %struct.sd*, %struct.sd** %2, align 8
  %123 = getelementptr inbounds %struct.sd, %struct.sd* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 320
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.sd*, %struct.sd** %2, align 8
  %129 = call i32 @reg_w(%struct.sd* %128, i32 32, i32 0)
  %130 = load %struct.sd*, %struct.sd** %2, align 8
  %131 = call i32 @reg_w(%struct.sd* %130, i32 33, i32 25)
  br label %137

132:                                              ; preds = %121
  %133 = load %struct.sd*, %struct.sd** %2, align 8
  %134 = call i32 @reg_w(%struct.sd* %133, i32 32, i32 96)
  %135 = load %struct.sd*, %struct.sd** %2, align 8
  %136 = call i32 @reg_w(%struct.sd* %135, i32 33, i32 31)
  br label %137

137:                                              ; preds = %132, %127
  br label %146

138:                                              ; preds = %117
  %139 = load %struct.sd*, %struct.sd** %2, align 8
  %140 = call i32 @reg_w(%struct.sd* %139, i32 32, i32 0)
  %141 = load %struct.sd*, %struct.sd** %2, align 8
  %142 = call i32 @reg_w(%struct.sd* %141, i32 33, i32 25)
  br label %146

143:                                              ; preds = %117
  %144 = load %struct.sd*, %struct.sd** %2, align 8
  %145 = call i32 @reg_w(%struct.sd* %144, i32 33, i32 25)
  br label %146

146:                                              ; preds = %143, %138, %137
  br label %150

147:                                              ; preds = %79
  %148 = load %struct.sd*, %struct.sd** %2, align 8
  %149 = call i32 @reg_w(%struct.sd* %148, i32 113, i32 23)
  br label %150

150:                                              ; preds = %147, %146
  %151 = load %struct.sd*, %struct.sd** %2, align 8
  %152 = call i32 @i2c_w(%struct.sd* %151, i32 84, i32 35)
  %153 = load %struct.sd*, %struct.sd** %2, align 8
  %154 = call i32 @reg_w(%struct.sd* %153, i32 47, i32 128)
  %155 = load %struct.sd*, %struct.sd** %2, align 8
  %156 = getelementptr inbounds %struct.sd, %struct.sd* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @BRIDGE_OV518PLUS, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %183

160:                                              ; preds = %150
  %161 = load %struct.sd*, %struct.sd** %2, align 8
  %162 = call i32 @reg_w(%struct.sd* %161, i32 36, i32 148)
  %163 = load %struct.sd*, %struct.sd** %2, align 8
  %164 = call i32 @reg_w(%struct.sd* %163, i32 37, i32 144)
  %165 = load %struct.sd*, %struct.sd** %2, align 8
  %166 = call i32 @ov518_reg_w32(%struct.sd* %165, i32 196, i32 400, i32 2)
  %167 = load %struct.sd*, %struct.sd** %2, align 8
  %168 = call i32 @ov518_reg_w32(%struct.sd* %167, i32 198, i32 540, i32 2)
  %169 = load %struct.sd*, %struct.sd** %2, align 8
  %170 = call i32 @ov518_reg_w32(%struct.sd* %169, i32 199, i32 540, i32 2)
  %171 = load %struct.sd*, %struct.sd** %2, align 8
  %172 = call i32 @ov518_reg_w32(%struct.sd* %171, i32 200, i32 108, i32 2)
  %173 = load %struct.sd*, %struct.sd** %2, align 8
  %174 = call i32 @ov518_reg_w32(%struct.sd* %173, i32 202, i32 131098, i32 3)
  %175 = load %struct.sd*, %struct.sd** %2, align 8
  %176 = call i32 @ov518_reg_w32(%struct.sd* %175, i32 203, i32 532, i32 2)
  %177 = load %struct.sd*, %struct.sd** %2, align 8
  %178 = call i32 @ov518_reg_w32(%struct.sd* %177, i32 204, i32 2400, i32 2)
  %179 = load %struct.sd*, %struct.sd** %2, align 8
  %180 = call i32 @ov518_reg_w32(%struct.sd* %179, i32 205, i32 32, i32 2)
  %181 = load %struct.sd*, %struct.sd** %2, align 8
  %182 = call i32 @ov518_reg_w32(%struct.sd* %181, i32 206, i32 608, i32 2)
  br label %206

183:                                              ; preds = %150
  %184 = load %struct.sd*, %struct.sd** %2, align 8
  %185 = call i32 @reg_w(%struct.sd* %184, i32 36, i32 159)
  %186 = load %struct.sd*, %struct.sd** %2, align 8
  %187 = call i32 @reg_w(%struct.sd* %186, i32 37, i32 144)
  %188 = load %struct.sd*, %struct.sd** %2, align 8
  %189 = call i32 @ov518_reg_w32(%struct.sd* %188, i32 196, i32 400, i32 2)
  %190 = load %struct.sd*, %struct.sd** %2, align 8
  %191 = call i32 @ov518_reg_w32(%struct.sd* %190, i32 198, i32 381, i32 2)
  %192 = load %struct.sd*, %struct.sd** %2, align 8
  %193 = call i32 @ov518_reg_w32(%struct.sd* %192, i32 199, i32 381, i32 2)
  %194 = load %struct.sd*, %struct.sd** %2, align 8
  %195 = call i32 @ov518_reg_w32(%struct.sd* %194, i32 200, i32 128, i32 2)
  %196 = load %struct.sd*, %struct.sd** %2, align 8
  %197 = call i32 @ov518_reg_w32(%struct.sd* %196, i32 202, i32 183331, i32 3)
  %198 = load %struct.sd*, %struct.sd** %2, align 8
  %199 = call i32 @ov518_reg_w32(%struct.sd* %198, i32 203, i32 746, i32 2)
  %200 = load %struct.sd*, %struct.sd** %2, align 8
  %201 = call i32 @ov518_reg_w32(%struct.sd* %200, i32 204, i32 1750, i32 2)
  %202 = load %struct.sd*, %struct.sd** %2, align 8
  %203 = call i32 @ov518_reg_w32(%struct.sd* %202, i32 205, i32 45, i32 2)
  %204 = load %struct.sd*, %struct.sd** %2, align 8
  %205 = call i32 @ov518_reg_w32(%struct.sd* %204, i32 206, i32 851, i32 2)
  br label %206

206:                                              ; preds = %183, %160
  %207 = load %struct.sd*, %struct.sd** %2, align 8
  %208 = call i32 @reg_w(%struct.sd* %207, i32 47, i32 128)
  br label %209

209:                                              ; preds = %206, %25
  ret void
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ov518_reg_w32(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
