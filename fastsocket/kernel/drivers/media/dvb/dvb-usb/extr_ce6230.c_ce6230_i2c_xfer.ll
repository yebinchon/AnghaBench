; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_ce6230.c_ce6230_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_ce6230.c_ce6230_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }
%struct.dvb_usb_device = type { i32 }
%struct.req_t = type { i32, i32, i32*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@ce6230_zl10353_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DEMOD_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"i2c read not implemented\00", align 1
@EPERM = common dso_local global i32 0, align 4
@DEMOD_WRITE = common dso_local global i32 0, align 4
@I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @ce6230_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce6230_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.req_t, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = call i32 @memset(%struct.req_t* %10, i32 0, i32 32)
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %201

20:                                               ; preds = %3
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %21, i32 0, i32 0
  %23 = call i64 @mutex_lock_interruptible(i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %201

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %188, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %189

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %104

38:                                               ; preds = %33
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i64 %42
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @I2C_M_RD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %104

49:                                               ; preds = %38
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i64 %52
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ce6230_zl10353_config, i32 0, i32 0), align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %49
  %59 = load i32, i32* @DEMOD_READ, align 4
  %60 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 4
  store i32 %59, i32* %60, align 8
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %63
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  %68 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i64 %71
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i64 %81
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i64 %84, i64* %85, align 8
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i64 %89
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 2
  store i32* %93, i32** %94, align 8
  %95 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %96 = call i32 @ce6230_ctrl_msg(%struct.dvb_usb_device* %95, %struct.req_t* %10)
  store i32 %96, i32* %11, align 4
  br label %101

97:                                               ; preds = %49
  %98 = call i32 @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @EPERM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %97, %58
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %9, align 4
  br label %184

104:                                              ; preds = %38, %33
  %105 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i64 %107
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ce6230_zl10353_config, i32 0, i32 0), align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %151

113:                                              ; preds = %104
  %114 = load i32, i32* @DEMOD_WRITE, align 4
  %115 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 4
  store i32 %114, i32* %115, align 8
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i64 %118
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 1
  %123 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 0
  store i32 %122, i32* %123, align 8
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i64 %126
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  %133 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i64 %135
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %138, 1
  %140 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i64 %139, i64* %140, align 8
  %141 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %141, i64 %143
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 2
  store i32* %147, i32** %148, align 8
  %149 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %150 = call i32 @ce6230_ctrl_msg(%struct.dvb_usb_device* %149, %struct.req_t* %10)
  store i32 %150, i32* %11, align 4
  br label %181

151:                                              ; preds = %104
  %152 = load i32, i32* @I2C_WRITE, align 4
  %153 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 4
  store i32 %152, i32* %153, align 8
  %154 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %154, i64 %156
  %158 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 1
  %161 = add nsw i32 8192, %160
  %162 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 0
  store i32 %161, i32* %162, align 8
  %163 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 1
  store i32 0, i32* %163, align 4
  %164 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %164, i64 %166
  %168 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i64 %169, i64* %170, align 8
  %171 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %171, i64 %173
  %175 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 2
  store i32* %177, i32** %178, align 8
  %179 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %180 = call i32 @ce6230_ctrl_msg(%struct.dvb_usb_device* %179, %struct.req_t* %10)
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %151, %113
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %181, %101
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %189

188:                                              ; preds = %184
  br label %29

189:                                              ; preds = %187, %29
  %190 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %191 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %190, i32 0, i32 0
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i32, i32* %11, align 4
  br label %199

197:                                              ; preds = %189
  %198 = load i32, i32* %9, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %199, %25, %17
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @memset(%struct.req_t*, i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @ce6230_ctrl_msg(%struct.dvb_usb_device*, %struct.req_t*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
