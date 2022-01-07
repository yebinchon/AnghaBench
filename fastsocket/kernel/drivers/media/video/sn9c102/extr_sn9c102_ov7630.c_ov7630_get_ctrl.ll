; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7630.c_ov7630_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7630.c_ov7630_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@BRIDGE_SN9C105 = common dso_local global i32 0, align 4
@BRIDGE_SN9C120 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @ov7630_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7630_get_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %9 = call i32 @sn9c102_get_bridge(%struct.sn9c102_device* %8)
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %192 [
    i32 132, label %13
    i32 130, label %24
    i32 134, label %45
    i32 136, label %51
    i32 131, label %72
    i32 133, label %87
    i32 128, label %102
    i32 135, label %117
    i32 129, label %132
    i32 137, label %152
    i32 138, label %172
  ]

13:                                               ; preds = %2
  %14 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %15 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %14, i32 16)
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = icmp slt i32 %16, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %204

23:                                               ; preds = %13
  br label %195

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @BRIDGE_SN9C105, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @BRIDGE_SN9C120, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %24
  %33 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %34 = call i8* @sn9c102_pread_reg(%struct.sn9c102_device* %33, i32 5)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %44

38:                                               ; preds = %28
  %39 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %40 = call i8* @sn9c102_pread_reg(%struct.sn9c102_device* %39, i32 7)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %32
  br label %195

45:                                               ; preds = %2
  %46 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %47 = call i8* @sn9c102_pread_reg(%struct.sn9c102_device* %46, i32 6)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %195

51:                                               ; preds = %2
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @BRIDGE_SN9C105, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BRIDGE_SN9C120, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %51
  %60 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %61 = call i8* @sn9c102_pread_reg(%struct.sn9c102_device* %60, i32 7)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %71

65:                                               ; preds = %55
  %66 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %67 = call i8* @sn9c102_pread_reg(%struct.sn9c102_device* %66, i32 5)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %59
  br label %195

72:                                               ; preds = %2
  %73 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %74 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %73, i32 0)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = icmp slt i32 %75, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %204

82:                                               ; preds = %72
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 63
  store i32 %86, i32* %84, align 4
  br label %195

87:                                               ; preds = %2
  %88 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %89 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %88, i32 12)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %92 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = icmp slt i32 %90, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %204

97:                                               ; preds = %87
  %98 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %99 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 63
  store i32 %101, i32* %99, align 4
  br label %195

102:                                              ; preds = %2
  %103 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %104 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %103, i32 13)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = icmp slt i32 %105, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %204

112:                                              ; preds = %102
  %113 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 63
  store i32 %116, i32* %114, align 4
  br label %195

117:                                              ; preds = %2
  %118 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %119 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %118, i32 19)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %122 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = icmp slt i32 %120, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %204

127:                                              ; preds = %117
  %128 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %129 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %195

132:                                              ; preds = %2
  %133 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %134 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %133, i32 117)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %137 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = icmp slt i32 %135, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %204

142:                                              ; preds = %132
  %143 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %144 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 128
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 1, i32 0
  %150 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %151 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %195

152:                                              ; preds = %2
  %153 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %154 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %153, i32 20)
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %157 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = icmp slt i32 %155, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %204

162:                                              ; preds = %152
  %163 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %164 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 2
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 1, i32 0
  %170 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %171 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  br label %195

172:                                              ; preds = %2
  %173 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %174 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %173, i32 45)
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %177 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = icmp slt i32 %175, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %3, align 4
  br label %204

182:                                              ; preds = %172
  %183 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %184 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 2
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 1, i32 0
  %190 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %191 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  br label %195

192:                                              ; preds = %2
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %204

195:                                              ; preds = %182, %162, %142, %127, %112, %97, %82, %71, %45, %44, %23
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i32, i32* @EIO, align 4
  %200 = sub nsw i32 0, %199
  br label %202

201:                                              ; preds = %195
  br label %202

202:                                              ; preds = %201, %198
  %203 = phi i32 [ %200, %198 ], [ 0, %201 ]
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %202, %192, %179, %159, %139, %124, %109, %94, %79, %20
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @sn9c102_get_bridge(%struct.sn9c102_device*) #1

declare dso_local i8* @sn9c102_i2c_read(%struct.sn9c102_device*, i32) #1

declare dso_local i8* @sn9c102_pread_reg(%struct.sn9c102_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
