; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_generic_read_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_generic_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.af9005_device_state* }
%struct.af9005_device_state = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"generic read/write, less than 1 byte. Makes no sense.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"generic read/write, more than 8 bytes. Not supported.\00", align 1
@AF9005_REGISTER_RW = common dso_local global i32 0, align 4
@AF9005_OFDM_REG = common dso_local global i32 0, align 4
@AF9005_CMD_OFDM_REG = common dso_local global i32 0, align 4
@AF9005_CMD_TUNER = common dso_local global i32 0, align 4
@AF9005_CMD_BURST = common dso_local global i32 0, align 4
@AF9005_CMD_AUTOINC = common dso_local global i32 0, align 4
@AF9005_CMD_WRITE = common dso_local global i32 0, align 4
@AF9005_TUNER_REG = common dso_local global i32 0, align 4
@AF9005_REGISTER_RW_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"generic read/write, wrong reply code.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"generic read/write, wrong length in reply.\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"generic read/write, wrong sequence in reply.\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"generic read/write wrong status code in reply.\00", align 1
@AF9005_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32, i32, i32*, i32)* @af9005_generic_read_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_generic_read_write(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.af9005_device_state*, align 8
  %15 = alloca [16 x i32], align 16
  %16 = alloca [17 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = load %struct.af9005_device_state*, %struct.af9005_device_state** %21, align 8
  store %struct.af9005_device_state* %22, %struct.af9005_device_state** %14, align 8
  %23 = bitcast [16 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 64, i1 false)
  %24 = bitcast [17 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 68, i1 false)
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %181

31:                                               ; preds = %6
  %32 = load i32, i32* %13, align 4
  %33 = icmp sgt i32 %32, 8
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %181

38:                                               ; preds = %31
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  store i32 14, i32* %39, align 16
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 1
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @AF9005_REGISTER_RW, align 4
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 3
  store i32 12, i32* %43, align 4
  %44 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %45 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  store i32 %46, i32* %48, align 16
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 8
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 5
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 6
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @AF9005_OFDM_REG, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = load i32, i32* @AF9005_CMD_OFDM_REG, align 4
  store i32 %59, i32* %17, align 4
  br label %62

60:                                               ; preds = %38
  %61 = load i32, i32* @AF9005_CMD_TUNER, align 4
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i32, i32* %13, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* @AF9005_CMD_BURST, align 4
  %67 = load i32, i32* @AF9005_CMD_AUTOINC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %69, 1
  %71 = shl i32 %70, 3
  %72 = or i32 %68, %71
  %73 = load i32, i32* %17, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %65, %62
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %17, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @AF9005_CMD_WRITE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %75
  store i32 0, i32* %18, align 4
  br label %83

83:                                               ; preds = %97, %82
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %18, align 4
  %94 = add nsw i32 8, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %18, align 4
  br label %83

100:                                              ; preds = %83
  br label %111

101:                                              ; preds = %75
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @AF9005_TUNER_REG, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 8
  store i32 %108, i32* %109, align 16
  br label %110

110:                                              ; preds = %105, %101
  br label %111

111:                                              ; preds = %110, %100
  %112 = load i32, i32* %17, align 4
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  store i32 %112, i32* %113, align 4
  %114 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %116 = getelementptr inbounds [17 x i32], [17 x i32]* %16, i64 0, i64 0
  %117 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %114, i32* %115, i32 16, i32* %116, i32 17, i32 0)
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* %19, align 4
  store i32 %121, i32* %7, align 4
  br label %181

122:                                              ; preds = %111
  %123 = getelementptr inbounds [17 x i32], [17 x i32]* %16, i64 0, i64 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @AF9005_REGISTER_RW_ACK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %181

131:                                              ; preds = %122
  %132 = getelementptr inbounds [17 x i32], [17 x i32]* %16, i64 0, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 13
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = call i32 @err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %181

139:                                              ; preds = %131
  %140 = getelementptr inbounds [17 x i32], [17 x i32]* %16, i64 0, i64 4
  %141 = load i32, i32* %140, align 16
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 4
  %143 = load i32, i32* %142, align 16
  %144 = icmp ne i32 %141, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = call i32 @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %7, align 4
  br label %181

149:                                              ; preds = %139
  %150 = getelementptr inbounds [17 x i32], [17 x i32]* %16, i64 0, i64 16
  %151 = load i32, i32* %150, align 16
  %152 = icmp ne i32 %151, 1
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = call i32 @err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32, i32* @EIO, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %7, align 4
  br label %181

157:                                              ; preds = %149
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @AF9005_CMD_READ, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %180

161:                                              ; preds = %157
  store i32 0, i32* %18, align 4
  br label %162

162:                                              ; preds = %176, %161
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %162
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 8, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [17 x i32], [17 x i32]* %16, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %171, i32* %175, align 4
  br label %176

176:                                              ; preds = %166
  %177 = load i32, i32* %18, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %18, align 4
  br label %162

179:                                              ; preds = %162
  br label %180

180:                                              ; preds = %179, %157
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %180, %153, %145, %135, %127, %120, %34, %27
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @err(i8*) #2

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
